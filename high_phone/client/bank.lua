local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = {}

RegisterNetEvent("high_phone:updateBankData")
AddEventHandler("high_phone:updateBankData", function(source)
    Config.FrameworkFunctions.triggerCallback("high_phone:getBankData", function(bankData)
        if bankData then
            Config.FrameworkFunctions.triggerCallback("high_phone:getInvoices", function(result)
                SendNUIMessage({
                    action = "updateBank",
                    invoices = result,
                    data = bankData
                })
            end)
        end
    end, source)
end)

RegisterNetEvent("high_phone:addMoneyRequest")
AddEventHandler("high_phone:addMoneyRequest", function(callback)
    local list = {
        request = callback
    }
    

    SendNUIMessage({
        action = "addMoneyRequest",
        data = list
    })
end)

RegisterNUICallback("updateBank", function(source, cb)
    TriggerEvent("high_phone:updateBankData", source)
    cb("ok")
end)

RegisterNUICallback("transferMoney", function(data, cb)
    QBCore.Functions.TriggerCallback("high_phone:transferMoney", function(result)
        cb(result)
    end, data.id, data.amount, data.purpose)
end)

RegisterNUICallback("transferCrypto", function(data, cb)
    Config.FrameworkFunctions.triggerCallback("high_phone:transferCrypto", function(result)
        cb(result)
    end, data.id, data.amount)
end)

RegisterNUICallback("sellCrypto", function(data, cb)
    Config.FrameworkFunctions.triggerCallback("qb-crypto:server:SellCrypto", function(result)
        cb(result)
    end, data)
end)

RegisterNUICallback("buyCrypto", function(data, cb)
    Config.FrameworkFunctions.triggerCallback("qb-crypto:server:BuyCrypto", function(result)
        cb(result)
    end, data)
end)

RegisterNUICallback("acceptRequest", function(data, cb)
    Config.FrameworkFunctions.triggerCallback("high_phone:acceptRequest", function(result)
        cb(result)
    end, data.id)
end)

RegisterNUICallback("requestMoney", function(data, cb)
    Config.FrameworkFunctions.triggerCallback("high_phone:requestMoney", function(result)
        cb(result)
    end, data.id, data.amount, data.purpose)
end)

RegisterNUICallback("payBill", function(data, cb)
    Config.FrameworkFunctions.triggerCallback("high_phone:payInvoice", function(result)
        cb(result)
    end, data.id)
end)