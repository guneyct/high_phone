local QBCore = exports['qb-core']:GetCoreObject()
local Players = {}
local data = {}
local requestTable = {}
Config.FrameworkFunctions.registerCallback("high_phone:getBankData", function(_ARG_0_, cb)
  -- if 2 ~= Config.TransferType or not Players[Config.FrameworkFunctions.getPlayer(_ARG_0_).source] or Players[Config.FrameworkFunctions.getPlayer(_ARG_0_).source].iban then
  -- end

  local src = _ARG_0_

  local r = MySQL.Sync.prepare("SELECT iban FROM `players` WHERE `citizenid` = ?", {Config.FrameworkFunctions.getPlayer(src).identifier})
  local Player = QBCore.Functions.GetPlayer(src)
  MySQL.Async.fetchAll("SELECT * FROM `crypto`", {}, function(crypto)
    if crypto[1] then
      crypto[1].history = json.decode(crypto[1].history)
      data.crypto = {
        balance = Player.PlayerData.money.crypto ~= 0 and Player.PlayerData.money.crypto or 0,
        worth = crypto[1].worth,
        oldWorth = crypto[1].history[#crypto[1].history].PreviousWorth,
        newWorth = crypto[1].history[#crypto[1].history].NewWorth,
      }

      data.id = 1
      data.holder = GetCharName(src)
      data.number = "1234 5678 9123 4567"
      data.statement, data.cards, data[1], data.date = {}, {}, {}, "01/33"
      data.iban = r
      data.balance = Player.PlayerData.money.bank

      cb(data)
    end
  end)
end)
Config.FrameworkFunctions.registerCallback("high_phone:getInvoices", function(_ARG_0_, _ARG_1_)
  if Config.Invoices.enabled then
    local data = {}
    local data2 = {}
    MySQL.Async.fetchAll("SELECT * FROM " .. Config.Invoices.table .. " WHERE `" .. Config.Invoices.columns.owner .. "` = @identifier ORDER BY `" .. Config.Invoices.columns.id .. "` DESC", {
      ["@identifier"] = Config.FrameworkFunctions.getPlayer(_ARG_0_).identifier
    }, function(result)
      for _FORV_15_, _FORV_16_ in pairs(result) do
        local data2 = {}
        data2.id = _FORV_16_[Config.Invoices.columns.id]
        data2.title = _FORV_16_[Config.Invoices.columns.label]
        data2.amount = _FORV_16_[Config.Invoices.columns.amount]
        data2.cancellable = Config.EnableBillCancelling
        table.insert(data, data2)
      end
      _ARG_1_(json.encode(data))
    end)
  else
    _ARG_1_("[]")
  end
end)

local accReq = {}
Config.FrameworkFunctions.registerCallback("high_phone:acceptRequest", function(_ARG_0_, _ARG_1_, _ARG_2_)
  local data = {}
  if not requestTable[_ARG_2_] then
    return _ARG_1_(Config.Languages[Config.Language].notifications.requestdoesntexist)
  end
  if not Config.FrameworkFunctions.getPlayer(requestTable[_ARG_2_].senderId) then
    return _ARG_1_(Config.Languages[Config.Language].notifications.playernotonlineanymore)
  end
  if Config.FrameworkFunctions.getPlayer(_ARG_0_).money.bank >= requestTable[_ARG_2_].amount then
    Config.FrameworkFunctions.getPlayer(_ARG_0_).removeBankMoney(requestTable[_ARG_2_].amount)
    Config.FrameworkFunctions.getPlayer(requestTable[_ARG_2_].senderId).addBankMoney(requestTable[_ARG_2_].amount)
    
    MySQL.Async.execute("INSERT INTO phone_transactions (`from`, `to`, `amount`, `time`, `reason`) VALUES (@from, @to, @amount, @time, @reason)", {
      ["@from"] = Config.FrameworkFunctions.getPlayer(_ARG_0_).identifier,
      ["@to"] = Config.FrameworkFunctions.getPlayer(requestTable[_ARG_2_].senderId).identifier,
      ["@amount"] = requestTable[_ARG_2_].amount,
      ["@time"] = os.time(),
      ["@reason"] = requestTable[_ARG_2_].reason
    }, function()
      if Config.TransactionWebhooks then
        data.senderName = GetCharName(Config.FrameworkFunctions.getPlayer(_ARG_0_).source)
        data.senderId = _ARG_0_
        data.receiverName = GetCharName(requestTable[_ARG_2_].senderId)
        data.receiverId = requestTable[_ARG_2_].senderId
        data.reason = requestTable[_ARG_2_].reason
        data.amount = requestTable[_ARG_2_].amount
        Config.SendWebhook(Config.TransactionWebhook, Config.Languages[Config.Language].newtransactionwebhook.title, replace_vars(Config.Languages[Config.Language].newtransactionwebhook.description, data), 2067276, image, Config.Languages[Config.Language].newtransactionwebhook.footer)
      end
    end)
    data.senderName = GetCharName(Config.FrameworkFunctions.getPlayer(_ARG_0_).source)
        data.senderId = _ARG_0_
        data.receiverName = GetCharName(requestTable[_ARG_2_].senderId)
        data.receiverId = requestTable[_ARG_2_].senderId
        data.reason = requestTable[_ARG_2_].reason
        data.amount = requestTable[_ARG_2_].amount
    TriggerClientEvent("high_phone:updateBankData", _ARG_0_)
    TriggerClientEvent("high_phone:updateBankData", requestTable[_ARG_2_].senderId)
    data.amount = requestTable[_ARG_2_].amount
    data.senderId = _ARG_0_
    data.reason = requestTable[_ARG_2_].reason
    TriggerClientEvent("high_phone:sendNotification", requestTable[_ARG_2_].senderId, "Bank", "<strong>".. data.senderName  .."</strong> tarafından <strong>".. data.amount .."$</strong> tutarında transfer aldın! Sebep: <strong>".. data.reason .."</strong>", 3000)
    _ARG_1_("SUCCESS")
  else
    _ARG_1_(Config.Languages[Config.Language].notifications.notenoughmoney)
  end
end)

Config.FrameworkFunctions.registerCallback("high_phone:requestMoney", function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  local data = {}
  if nil == accReq[_ARG_0_] then
    if getUserByBank(_ARG_2_) then
      if getUserByBank(_ARG_2_)[Config.IdentifierColumn] == Config.FrameworkFunctions.getPlayer(_ARG_0_).identifier then
        return _ARG_1_(Config.Languages[Config.Language].notifications.selftransfer)
      end
    else
      return _ARG_1_(Config.Languages[Config.Language].notifications.receivernonexistant)
    end
    if Config.FrameworkFunctions.getPlayerByIdentifier(getUserByBank(_ARG_2_)[Config.IdentifierColumn]) then
      math.randomseed(_ARG_0_ + os.time())
      data.id = "REQ-" .. math.random(111111, 999999)
      data.senderName = GetCharName(_ARG_0_)
      data.senderId = _ARG_0_
      data.amount = tonumber(_ARG_3_)
      requestTable[data.id], data.reason = data, _ARG_4_
      
      TriggerClientEvent("high_phone:addMoneyRequest", Config.FrameworkFunctions.getPlayerByIdentifier(getUserByBank(_ARG_2_)[Config.IdentifierColumn]).source, json.encode(data))
      data.amount = tonumber(_ARG_3_)
      data.requesterId = _ARG_0_
      data.requesterName = GetCharName(_ARG_0_)
      data.reason = _ARG_4_
      
      TriggerClientEvent("high_phone:sendNotification", Config.FrameworkFunctions.getPlayerByIdentifier(getUserByBank(_ARG_2_)[Config.IdentifierColumn]).source, "Bank", "<strong>".. data.requesterName .." [".. data.requesterId  .."]</strong> senden <strong>".. data.amount .."$</strong> tutarında para istedi! Sebep: <strong>".. data.reason .."</strong>", 3000)
      _ARG_1_("SUCCESS")
      accReq[_ARG_0_] = _ARG_0_
      Citizen.SetTimeout(Config.MoneyRequestCooldown, function()
        accReq[_ARG_0_] = nil
      end)
    else
      _ARG_1_(Config.Languages[Config.Language].notifications.playernotonline)
    end
  else
    _ARG_1_(Config.Languages[Config.Language].notifications.requestcooldown)
  end
end)

RegisterServerEvent("high_phone:sendBillVale", function(amount)
  local Player = QBCore.Functions.GetPlayer(source)
  if Player then
    amount = tonumber(amount)
    if amount > 0 then
      MySQL.Async.insert('INSERT INTO phone_invoices (citizenid, amount, society, sender, sendercitizenid) VALUES (@citizenid, @amount, @society, @sender, @sendercitizenid)', {
        ["@citizenid"] = Player.PlayerData.citizenid,
        ["@amount"] = amount, 
        ["@society"] = "",
        ["@sender"] = "Vale",
        ["@sendercitizenid"] = "Vale"
    })
    
    TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, 'New Invoice Received')
    end
  end
end)

FOB.Commands.Add('bill', 'Bill A Player', {{name = 'id', help = 'Player ID'}, {name = 'amount', help = 'Fine Amount'}}, false, function(source, args)
  local biller = FOB.Functions.GetPlayer(source)
  local billed = FOB.Functions.GetPlayer(tonumber(args[1]))
  local amount = tonumber(args[2])
  if biller.PlayerData.job.name == "police" or biller.PlayerData.job.name == 'ambulance' or biller.PlayerData.job.name == 'mechanic' then
      if billed ~= nil then
          if biller.PlayerData.citizenid == billed.PlayerData.citizenid then
              if amount and amount > 0 then
                  MySQL.Async.insert('INSERT INTO phone_invoices (citizenid, amount, society, sender, sendercitizenid) VALUES (@citizenid, @amount, @society, @sender, @sendercitizenid)', {
                      ["@citizenid"] = billed.PlayerData.citizenid,
                      ["@amount"] = amount, 
                      ["@society"] = biller.PlayerData.job.name,
                      ["@sender"] = biller.PlayerData.charinfo.firstname,
                      ["@sendercitizenid"] = biller.PlayerData.citizenid
                  })
                  
                  TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                  TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
              else
                  TriggerClientEvent('QBCore:Notify', source, 'Must Be A Valid Amount Above 0', 'error')
              end
          else
              TriggerClientEvent('QBCore:Notify', source, 'You Cannot Bill Yourself', 'error')
          end
      else
          TriggerClientEvent('QBCore:Notify', source, 'Player Not Online', 'error')
      end
  else
      TriggerClientEvent('QBCore:Notify', source, 'No Access', 'error')
  end
end)


if Config.EnableBillCancelling then
  Config.FrameworkFunctions.registerCallback("high_phone:cancelBill", function(_ARG_0_, _ARG_1_, _ARG_2_)
    ({})["@id"] = _ARG_2_
    MySQL.Async.execute("DELETE FROM " .. Config.Invoices.table .. " WHERE " .. Config.Invoices.columns.id .. " = @id", {}, function(_ARG_0_)
      if _ARG_0_ >= 1 then
        _ARG_1_("SUCCESS")
      end
    end)
  end)
end
Config.FrameworkFunctions.registerCallback("high_phone:getBalance", function(_ARG_0_, _ARG_1_)
  _ARG_1_(Config.FrameworkFunctions.getPlayer(_ARG_0_).money.bank)
end)

Config.FrameworkFunctions.registerCallback('high_phone:payInvoice', function(source, cb, id)
  local invoices = MySQL.Sync.fetchAll('SELECT * FROM phone_invoices WHERE id = @id', {["@id"] = id})

  if(invoices[1] ~= nil) then
      local Ply = QBCore.Functions.GetPlayer(source)
      local SenderPly = QBCore.Functions.GetPlayerByCitizenId(invoices[1].sendercitizenid)
      if SenderPly and Config.BillingCommissions[invoices[1].society] then
          local commission = round(invoices[1].amount * Config.BillingCommissions[invoices[1].society])
          SenderPly.Functions.AddMoney('bank', commission)
          TriggerClientEvent('high_phone:sendNotification', SenderPly.PlayerData.source, "Bank", string.format('You received a commission check of $%s when %s %s paid a bill of $%s.', commission, Ply.PlayerData.charinfo.firstname, Ply.PlayerData.charinfo.lastname, amount), 3000)
      end
      Ply.Functions.RemoveMoney('bank', invoices[1].amount, "paid-invoice")
      TriggerClientEvent("high_phone:sendNotification", Ply.PlayerData.source, "Bank", "You've paid a $ " .. invoices[1].amount .. " invoice!", 3000)
      TriggerEvent("qb-bossmenu:server:addAccountMoneyScript", invoices[1].society, invoices[1].amount)
      MySQL.Sync.execute('DELETE FROM phone_invoices WHERE id = @id', {["@id"] = id})
      TriggerClientEvent('high_phone:updateBankData', Ply.PlayerData.source)
  end
  cb("SUCCESS")
end)

local transferArray = {}
QBCore.Functions.CreateCallback("high_phone:transferMoney", function(_ARG_0_, cb, _ARG_2_, _ARG_3_, _ARG_4_)
  local transferData = {}

  if transferArray[_ARG_0_] then

    return cb(Config.Languages[Config.Language].notifications.transfercooldown)
  end
  if tonumber(_ARG_3_) < 0 then

    return
  end
  if getUserByBank(_ARG_2_) then


    if getUserByBank(_ARG_2_)[Config.IdentifierColumn] == Config.FrameworkFunctions.getPlayer(_ARG_0_).identifier then


      return cb(Config.Languages[Config.Language].notifications.selftransfer)
    end
  else


    return cb(Config.Languages[Config.Language].notifications.receivernonexistant)
  end
  
  if Config.FrameworkFunctions.getPlayerByIdentifier(getUserByBank(_ARG_2_)[Config.IdentifierColumn]) then

    if tonumber(_ARG_3_) <= Config.FrameworkFunctions.getPlayer(_ARG_0_).money.bank then


      Config.FrameworkFunctions.getPlayer(_ARG_0_).removeBankMoney(tonumber(_ARG_3_))
      Config.FrameworkFunctions.getPlayerByIdentifier(getUserByBank(_ARG_2_)[Config.IdentifierColumn]).addBankMoney(tonumber(_ARG_3_))
      
      MySQL.Sync.execute("INSERT INTO phone_transactions (`from`, `to`, `amount`, `time`, `reason`) VALUES (@from, @to, @amount, @time, @reason)", {
        ["@from"] = Config.FrameworkFunctions.getPlayer(_ARG_0_).identifier,
        ["@to"] = Config.FrameworkFunctions.getPlayerByIdentifier(getUserByBank(_ARG_2_)[Config.IdentifierColumn]).identifier,
        ["@amount"] = tonumber(_ARG_3_),
        ["@time"] = os.time(),
        ["@reason"] = _ARG_4_
      }, function(result)

          
          --Config.SendWebhook(Config.TransactionWebhook, Config.Languages[Config.Language].newtransactionwebhook.title, replace_vars(Config.Languages[Config.Language].newtransactionwebhook.description, {}), 2067276, image, Config.Languages[Config.Language].newtransactionwebhook.footer)
      end)
      transferData.senderName = GetCharName(_ARG_0_)
          transferData.senderId = _ARG_0_
          transferData.receiverName = GetCharName(Config.FrameworkFunctions.getPlayerByIdentifier(getUserByBank(_ARG_2_)[Config.IdentifierColumn]).source)
          transferData.receiverId = _ARG_2_
          transferData.reason = _ARG_4_
          transferData.amount = tonumber(_ARG_3_)

      TriggerClientEvent("high_phone:updateBankData", _ARG_0_)
      TriggerClientEvent("high_phone:updateBankData", Config.FrameworkFunctions.getPlayerByIdentifier(getUserByBank(_ARG_2_)[Config.IdentifierColumn]).source)
      transferData.amount = tonumber(_ARG_3_)
      transferData.senderId = _ARG_0_
      transferData.reason = _ARG_4_
      TriggerClientEvent("high_phone:sendNotification", Config.FrameworkFunctions.getPlayerByIdentifier(getUserByBank(_ARG_2_)[Config.IdentifierColumn]).source, "Bank", "<strong>".. transferData.senderName  .."</strong> tarafından <strong>".. transferData.amount .."$</strong> tutarında transfer aldın! Sebep: <strong>".. transferData.reason .."</strong>", 3000)
      cb("SUCCESS")
      transferArray[_ARG_0_] = _ARG_0_
      Citizen.SetTimeout(Config.TransferCooldown, function()
        transferArray[_ARG_0_] = nil
      end)
    else
      cb(Config.Languages[Config.Language].notifications.notenoughmoney)
    end
  else
    cb(Config.Languages[Config.Language].notifications.receivernonexistant)
  end
end)

Config.FrameworkFunctions.registerCallback("high_phone:transferCrypto", function(source, cb, iban, amount)
  local Player = QBCore.Functions.GetPlayer(source)

  if Player then
    local Target = QBCore.Functions.GetPlayerByCitizenId(getUserByBank(iban)[Config.IdentifierColumn])
    if Target then
      if Player.Functions.RemoveMoney("crypto", amount) then
        Target.Functions.AddMoney("crypto", amount)
        TriggerClientEvent("high_phone:updateBankData", source)
        TriggerClientEvent("high_phone:updateBankData", Target.PlayerData.source)
        cb("SUCCESS")
      else
        cb("ERROR")    
      end
    else
      MySQL.Async.fetchAll("SELECT * FROM players WHERE iban = @iban", {
        ["@iban"] = iban
      }, function(result)
        if result[1] then
          result[1].money = json.decode(result[1].money)

          if Player.Functions.RemoveMoney("crypto", amount) then
            result[1].money.crypto = result[1].money.crypto + amount
            MySQL.Async.execute("UPDATE players SET money = ? WHERE iban = ?", {
              json.encode(result[1].money),
              iban
            })
            TriggerClientEvent("high_phone:updateBankData", source)
            cb("SUCCESS")
          else
            cb("ERROR")    
          end
        else
          cb("ERROR")    
        end
      end)
    end
  else
    cb("ERROR")
  end
end)

function GetCharName(_source)
  local Player = QBCore.Functions.GetPlayer(_source)
  local name = Player.PlayerData.charinfo.firstname .." ".. Player.PlayerData.charinfo.lastname

  if name ~= nil or name ~= "" then
    return name
  else
    return nil
  end
end