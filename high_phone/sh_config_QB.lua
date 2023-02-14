-- Framework functions
FOB = exports['qb-core']:GetCoreObject()

if(not IsDuplicityVersion()) then
    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
        TriggerServerEvent("high_phone:playerLoaded", GetPlayerServerId(PlayerId()))
    end)
end

if(IsDuplicityVersion()) then
    AddEventHandler("playerDropped", function()
        local src = source
        TriggerEvent("high_phone:playerDropped", src)
    end)
end

Config.Events = {
    playerLoaded = "high_phone:playerLoaded", -- player loaded server-side event, requires a player source as the 1st argument.
    playerDropped = "high_phone:playerDropped", -- player disconnected server-side event, requires a player source as the 1st argument.
    updateJob = "QBCore:Server:OnJobUpdate" -- player job updated server-side event, requires a player source as the 1st argument.
}

Config.PlayersTable = "players" -- Database players table.
Config.IdentifierColumn = "citizenid" -- In players table, the main player identifier column.
Config.BillingCommissions = { -- This is a percentage (0.10) == 10%
    mechanic = 0.10
}
Config.ValePrice = 300
Config.Invoices = {
    enabled = true,
    table = "phone_invoices", -- Table's name that contains all the bills [invoices]
    columns = {
        id = "id", -- ID column
        owner = "citizenid", -- Player's identifier that received the invoice column
        label = "sender", -- Invoice label [title or reason] column
        amount = "amount" -- Price/amount of the invoice column
    }
}

Config.FrameworkFunctions = {
    -- Client-side trigger callback
    triggerCallback = function(name, cb, ...)
        FOB.Functions.TriggerCallback(name, cb, ...)
    end,
    
    -- Server-side register callback
    registerCallback = function(name, cb)
        FOB.Functions.CreateCallback(name, cb)
    end,

    -- Server-side get players function
    getPlayers = function()
        return FOB.Functions.GetPlayers()
    end,

    -- Client-side get closest player
    getClosestPlayer = function()
        return FOB.Functions.GetClosestPlayer()
    end,

    -- Server-side get player data
    getPlayer = function(source) 
        local self = {}
        local player = FOB.Functions.GetPlayer(source)

        if(player ~= nil) then
            self.source = source
            self.identifier = player.PlayerData.citizenid
            
            local permission = FOB.Functions.GetPermission(source)
            if(type(permission) == "string" or type(permission) == "number") then 
                self.group = permission
            elseif(type(permission) == "table") then
                for i, v in pairs(permission) do
                    if(v) then
                        self.group = i
                        break
                    end
                end
            end

            self.job = player.PlayerData.job
            self.jobName = player.PlayerData.job.name
            self.jobGrade = player.PlayerData.job.grade.level
            -- REMOVE THE -- IN FRONT OF self.onDuty IF YOU WANT TO CHECK IF THE PLAYER IS ON DUTY BEFORE SENDING HIM JOB MESSAGES/CALLS.
            --self.onDuty = player.PlayerData.job.onduty
            self.money = {cash = player.PlayerData.money["cash"], bank = player.PlayerData.money["bank"]}
            self.number = Players[source] ~= nil and Players[source].number or nil
            
            self.getIdentity = function()                
                return {firstname = player.PlayerData.charinfo.firstname, lastname = player.PlayerData.charinfo.lastname}
            end

            self.addBankMoney = function(amount) 
                player.Functions.AddMoney("bank", amount)
            end
            self.addCash = function(amount) 
                player.Functions.AddMoney("cash", amount)
            end
            self.removeBankMoney = function(amount)
                player.Functions.RemoveMoney("bank", amount)
            end
            self.removeCash = function(amount) 
                player.Functions.RemoveMoney("cash", amount)
            end

            self.getItemCount = function(item)
                local item = player.Functions.GetItemByName(item)
                return item ~= nil and item.amount or 0
            end

            return self
        end

        return nil
    end,

    -- Server-side get player data by identifier
    getPlayerByIdentifier = function(identifier)
        local player = FOB.Functions.GetPlayerByCitizenId(identifier) -- Only replace this function
        if(player ~= nil) then
            return Config.FrameworkFunctions.getPlayer(player.PlayerData.source) -- And replace this player.source with player's source, function requires a player ID.
        end

        return nil
    end
}

Config.CustomCallbacks = {
    -- Advertisments app
    ["postAd"] = function(data)
        TriggerServerEvent("high_phone:postAd", data.title, data.content, data.image, data.data)
    end,
    ["deleteAd"] = function(data)
        TriggerServerEvent("high_phone:deleteAd", data.id)
    end,
    -- Twitter app
    ["postTweet"] = function(data)
        TriggerServerEvent("high_phone:postTweet", data.title, data.content, data.image)
    end,
    ["deleteTweet"] = function(data)
        TriggerServerEvent("high_phone:deleteTweet", data.id)
    end,
    ["postReply"] = function(data)
        TriggerServerEvent("high_phone:postReply", data.id, data.content)
    end,
    -- Messages app
    ["sendMessage"] = function(data)
        TriggerServerEvent("high_phone:sendMessage", data.number, data.content, data.attachments, data.time) -- data.time is for accurate saving of time of the messages.
    end,
    -- Mail app
    ["sendMail"] = function(data)
        if(not data.reply) then
            TriggerServerEvent("high_phone:sendMail", data.recipients, data.subject, data.content, data.attachments)
        else
            TriggerServerEvent("high_phone:sendMailReply", data.reply, data.recipients, data.subject, data.content, data.attachments)
        end
    end,
    -- Darkchat app
    ["sendDarkMessage"] = function(data)
        TriggerServerEvent("high_phone:sendDarkMessage", data.id, data.content, data.attachments, data.time) -- data.time is for accurate saving of time of the messages.
    end,
    -- Phone app
    ["callNumber"] = function(data, cb)
        Config.FrameworkFunctions.triggerCallback("high_phone:callNumber", function(response)
            cb(response) -- If response is "SUCCESS", the call screen will slide out. IMPORTANT TO CALLBACK SOMETHING!
            if(response == "SUCCESS") then
                DoPhoneAnimation('cellphone_text_to_call') -- Global function, play any animation from library cellphone@
                onCall = true -- Global variable, set it to true if in a call.
            end
        end, data.number, data.anonymous)
    end,
    -- Contacts app
    ["createContact"] = function(data, cb)
        Config.FrameworkFunctions.triggerCallback("high_phone:createContact", function(id)
            cb(id)
        end, data.number, data.name, data.photo, data.tag)
    end,
    -- Bank app
    ["transferMoney"] = function(data, cb)
        Config.FrameworkFunctions.triggerCallback("high_phone:transferMoney", function(response)
            cb(response) -- If response is "SUCCESS", a message saying that the transfer was successful will be shown. IMPORTANT TO CALLBACK SOMETHING!
        end, Config.TransferType == 1 and tonumber(data.id) or data.id, tonumber(data.amount), data.purpose)
    end,
    ["requestMoney"] = function(data, cb)
        Config.FrameworkFunctions.triggerCallback("high_phone:requestMoney", function(response)
            cb(response) -- If response is "SUCCESS", a message saying that the transfer was successful will be shown. IMPORTANT TO CALLBACK SOMETHING!
        end, tonumber(data.id), tonumber(data.amount), data.purpose)
    end,
    ["payBill"] = function(data, cb)
        Config.FrameworkFunctions.triggerCallback('high_phone:payInvoice', function()
            cb()
        end, data.id)
    end,
    ["cancelBill"] = function(data, cb)
        Config.FrameworkFunctions.triggerCallback("high_phone:cancelBill", function(response)
            cb(response) -- If response is "SUCCESS", a message saying that the cancelation was successful will be shown. IMPORTANT TO CALLBACK SOMETHING!
        end, data.id)
    end,
}

Config.Commands = {
    -- Do not rename the index, only change the name field if you want to change the command name.
    ["twitter_rank"] = {
        enabled = true,
        name = "settwitterrank",
        suggestion_label = "Set rank for a twitter account",
        args = {{
            name = "Email address",
            help = "Twitter user email address"
        }, {
            name = "Rank",
            help = "Twitter rank name"
        }},
        notifications = {
            ["error_prefix"] = "^1SYSTEM",
            ["success_prefix"] = "^2SYSTEM",
            ["email_not_specified"] = "You have to specify a twitter email address!",
            ["group_not_specified"] = "You have to specify a twitter group!",
            ["no_permission"] = "No permission for this command!",
            ["account_doesnt_exist"] = "A twitter account with this email doesn't exist!",
            ["group_successfully_set"] = "You've set the group on {email} to {rank}",
            ["rank_non_existant"] = "Rank {rank} doesn't exist!"
        }
    }
}

local function round(num, numDecimalPlaces)
    if numDecimalPlaces and numDecimalPlaces > 0 then
        local mult = 10 ^ numDecimalPlaces
        return math.floor(num * mult + 0.5) / mult
    end
    return math.floor(num + 0.5)
end

-- QB-Core invoices
if(IsDuplicityVersion()) then
    FOB.Functions.CreateCallback('high_phone:payInvoice', function(source, cb, id)
        local invoices = MySQL.Sync.fetchAll('SELECT * FROM phone_invoices WHERE id = @id', {["@id"] = id})

        if(invoices[1] ~= nil) then
            local Ply = FOB.Functions.GetPlayer(source)
            local SenderPly = FOB.Functions.GetPlayerByCitizenId(invoices[1].sendercitizenid)
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
        cb()
    end)    

    FOB.Commands.Add('bill', 'Bill A Player', {{name = 'id', help = 'Player ID'}, {name = 'amount', help = 'Fine Amount'}}, false, function(source, args)
        local biller = FOB.Functions.GetPlayer(source)
        local billed = FOB.Functions.GetPlayer(tonumber(args[1]))
        local amount = tonumber(args[2])
        if biller.PlayerData.job.name == "police" or biller.PlayerData.job.name == 'ambulance' or biller.PlayerData.job.name == 'mechanic' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
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

    RegisterNetEvent("qb-phone:server:sendNewMail", function(mailData)
        local src = source
        local attachments = {}
        if(mailData.button and mailData.button.buttonEvent) then
            attachments = {{button = {label = "Accept", color = "#000", event = mailData.button.buttonEvent, args = {mailData.button.buttonData}}}}
        end

        TriggerEvent("high_phone:sendMailFromServer", {address = string.gsub(mailData.sender, "%s+", "") .. Config.MailFormat, name = mailData.sender, photo = ""}, mailData.subject, mailData.message, attachments, src)
    end)

    RegisterNetEvent("qb-phone:server:sendNewMailToOffline", function(citizenid, mailData)
        local attachments = {}
        if(mailData.button and mailData.button.buttonEvent) then
            attachments = {{button = {label = "Accept", color = "#000", event = mailData.button.buttonEvent, args = {mailData.button.buttonData}}}}
        end
    
        TriggerEvent("high_phone:sendOfflineMailFromServer", citizenid, {address = string.gsub(mailData.sender, "%s+", "") .. Config.MailFormat, name = mailData.sender, photo = ""}, mailData.subject, mailData.message, attachments)
    end)
end