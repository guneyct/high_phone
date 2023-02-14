local QBCore = exports['qb-core']:GetCoreObject()
local L0_1, L1_1, L2_1
L0_1 = {}
Players = L0_1

L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:getMyData"
function L2_1(A0_2, A1_2, A2_2)
    local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    L3_2 = Config
    L3_2 = L3_2.FrameworkFunctions
    L3_2 = L3_2.getPlayer
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
        L4_2 = L3_2.number
        if A2_2 then
            L5_2 = getPlayerData
            L6_2 = L3_2.source
            L7_2 = Config
            L7_2 = L7_2.PhoneNumberColumn
            L5_2 = L5_2(L6_2, L7_2)
            L4_2 = L5_2
        end
        L5_2 = L3_2.getIdentity
        L5_2 = L5_2()
        L6_2 = A1_2
        L7_2 = json
        L7_2 = L7_2.encode
        L8_2 = {}
        L9_2 = L3_2.identifier
        L8_2.identifier = L9_2
        L9_2 = L5_2.firstname
        L10_2 = " "
        L11_2 = L5_2.lastname
        L9_2 = L9_2 .. L10_2 .. L11_2
        L8_2.name = L9_2
        L8_2.number = L4_2
        L9_2 = json
        L9_2 = L9_2.encode
        L10_2 = {}
        L11_2 = L3_2.jobName
        L10_2.name = L11_2
        L11_2 = L3_2.jobGrade
        L10_2.grade = L11_2
        L9_2 = L9_2(L10_2)
        L8_2.job = L9_2
        L9_2 = getPlayerData
        L10_2 = A0_2
        L11_2 = "settings"
        L9_2 = L9_2(L10_2, L11_2)
        L8_2.settings = L9_2
        L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    else
        L4_2 = A1_2
        L5_2 = "{}"
        L4_2(L5_2)
    end
end
L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:getNotes"
function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2
    L2_2 = Config
    L2_2 = L2_2.FrameworkFunctions
    L2_2 = L2_2.getPlayer
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
        L3_2 = getPlayerNotes
        L4_2 = L2_2.identifier
        L3_2 = L3_2(L4_2)
        L4_2 = A1_2
        L5_2 = json
        L5_2 = L5_2.encode
        L6_2 = L3_2
        L5_2, L6_2 = L5_2(L6_2)
        L4_2(L5_2, L6_2)
    else
        L3_2 = A1_2
        L4_2 = "[]"
        L3_2(L4_2)
    end
end
L0_1(L1_1, L2_1)

QBCore.Functions.CreateCallback("high_phone:getVehicles", function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then

        MySQL.Async.fetchAll("SELECT * FROM player_vehicles WHERE citizenid = @citizenid", {
            ["@citizenid"] = Player.PlayerData.citizenid
        }, function(result)
            if result[1] then
                cb(result)
            end
        end)
    else
        cb(nil)
    end
end)

QBCore.Functions.CreateCallback('garage:fetchVehicleProperties', function(source, cb, plate)
    local Player = QBCore.Functions.GetPlayer(source)
    MySQL.Async.fetchAll("SELECT * FROM `player_vehicles` WHERE `plate` = '" .. plate .. "'", {},
        function(result)
            if result[1].state then
                MySQL.Async.execute('UPDATE player_vehicles SET state = @state WHERE plate = @plate', {
                    ['@plate'] = plate,
                    ['@state'] = 0
                })
                cb(json.decode(result[1].mods))
            else
                cb(nil)
            end
        end)
end)

-- L0_1 = Config
-- L0_1 = L0_1.FrameworkFunctions
-- L0_1 = L0_1.registerCallback
-- L1_1 = "high_phone:getGallery"
-- function L2_1(A0_2, A1_2)
--     local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
--     L2_2 = Config
--     L2_2 = L2_2.FrameworkFunctions
--     L2_2 = L2_2.getPlayer
--     L3_2 = A0_2
--     L2_2 = L2_2(L3_2)
--     L3_2 = MySQL
--     L3_2 = L3_2.Sync
--     L3_2 = L3_2.fetchScalar
--     L4_2 = "SELECT image FROM "
--     L5_2 = Config
--     L5_2 = "phone_gallery"
--     L6_2 = " WHERE "
--     L7_2 = Config
--     L7_2 = "citizenid"
--     L8_2 = " = @identifier"
--     L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
--     L5_2 = {}
--     L6_2 = L2_2.identifier
--     L5_2["@identifier"] = L6_2
--     L3_2 = L3_2(L4_2, L5_2)
--     L4_2 = A1_2
--     L5_2 = L3_2 or L5_2
--     if not L3_2 or not L3_2 then
--         L5_2 = "[]"
--     end
--     L4_2(L5_2)
-- end
-- L0_1(L1_1, L2_1)

QBCore.Functions.CreateCallback("high_phone:getGallery", function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then
        MySQL.Async.fetchAll("SELECT * FROM `phone_gallery` WHERE `citizenid` = @owner", {
            ["@owner"] = Player.PlayerData.citizenid
        }, function(result)
            if result[1] then
                local data = {}
                for k, v in pairs(result) do
                    data[#data + 1] = {
                        url = v.image,
                        src = "https://".. v.image,
                        date = tonumber(v.date)
                    }
                end

                cb(data)
            else
                cb({})
            end
        end)
    else
        cb({})
    end
end)

RegisterNetEvent("high_phone:savePhoto", function(_ARG_0_, _ARG_1_, _ARG_2_)
    local data = {}
    data.url = _ARG_0_
    data.src = _ARG_1_
    data.date = _ARG_2_
    local player = QBCore.Functions.GetPlayer(source)

    MySQL.Async.execute("INSERT INTO phone_gallery (`citizenid`, `image`, `date`) VALUES (@identifier, @photos, @date)",
        {
            ["@identifier"] = player.PlayerData.citizenid,
            ["@photos"] = data.url,
            ["@date"] = data.date
        })
end)

L0_1 = RegisterNetEvent
L1_1 = "high_phone:deletePhoto"
function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    L1_2 = source
    L2_2 = Config
    L2_2 = L2_2.FrameworkFunctions
    L2_2 = L2_2.getPlayer
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.fetchScalar
    L4_2 = "SELECT photos FROM "
    L5_2 = Config
    L5_2 = L5_2.PlayersTable
    L6_2 = " WHERE "
    L7_2 = Config
    L7_2 = "citizenid"
    L8_2 = " = @identifier"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
    L5_2 = {}
    L6_2 = L2_2.identifier
    L5_2["@identifier"] = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
        L4_2 = json
        L4_2 = L4_2.decode
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
            goto lbl_34
            L3_2 = L4_2 or L3_2
        end
    end
    L4_2 = {}
    L3_2 = L4_2
    ::lbl_34::
    L4_2 = pairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = L9_2.url
        if L10_2 == A0_2 then
            L10_2 = table
            L10_2 = L10_2.remove
            L11_2 = L3_2
            L12_2 = L8_2
            L10_2(L11_2, L12_2)
            break
        end
    end
    L4_2 = MySQL
    L4_2 = L4_2.Async
    L4_2 = L4_2.execute
    L5_2 = "UPDATE "
    L6_2 = Config
    L6_2 = L6_2.PlayersTable
    L7_2 = " SET photos = @photos WHERE "
    L8_2 = Config
    L8_2 = L8_2.IdentifierColumn
    L9_2 = " = @identifier"
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    L6_2 = {}
    L7_2 = L2_2.identifier
    L6_2["@identifier"] = L7_2
    L7_2 = json
    L7_2 = L7_2.encode
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    L6_2["@photos"] = L7_2
    L4_2(L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateNotes"
function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
    L1_2 = source
    L2_2 = Config
    L2_2 = L2_2.FrameworkFunctions
    L2_2 = L2_2.getPlayer
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = MySQL
    L3_2 = L3_2.Async
    L3_2 = L3_2.execute
    L4_2 = "UPDATE "
    L5_2 = Config
    L5_2 = L5_2.PlayersTable
    L6_2 = " SET `notes` = @notes WHERE "
    L7_2 = Config
    L7_2 = L7_2.IdentifierColumn
    L8_2 = " = @identifier"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
    L5_2 = {}
    L6_2 = L2_2.identifier
    L5_2["@identifier"] = L6_2
    L6_2 = json
    L6_2 = L6_2.encode
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L5_2["@notes"] = L6_2
    L3_2(L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:hasPhone"
function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    L2_2 = Config
    L2_2 = L2_2.FrameworkFunctions
    L2_2 = L2_2.getPlayer
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
        L3_2 = Config
        L3_2 = L3_2.ItemRequired
        if L3_2 then
            L3_2 = type
            L4_2 = Config
            L4_2 = L4_2.PhoneItem
            L3_2 = L3_2(L4_2)
            if "string" == L3_2 then
                L3_2 = L2_2.getItemCount
                L4_2 = Config
                L4_2 = L4_2.PhoneItem
                L3_2 = L3_2(L4_2)
                L4_2 = A1_2
                L5_2 = L3_2 or L5_2
                L5_2 = L3_2 and L3_2 > 0
                L4_2(L5_2)
            else
                L3_2 = type
                L4_2 = Config
                L4_2 = L4_2.PhoneItem
                L3_2 = L3_2(L4_2)
                if "table" == L3_2 then
                    L3_2 = false
                    L4_2 = pairs
                    L5_2 = Config
                    L5_2 = L5_2.PhoneItem
                    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
                    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
                        L10_2 = L2_2.getItemCount
                        L11_2 = L9_2
                        L10_2 = L10_2(L11_2)
                        if L10_2 and L10_2 > 0 then
                            L3_2 = true
                            break
                        end
                    end
                    L4_2 = A1_2
                    L5_2 = L3_2
                    L4_2(L5_2)
                end
            end
        else
            L3_2 = A1_2
            L4_2 = true
            L3_2(L4_2)
        end
    else
        L3_2 = A1_2
        L4_2 = false
        L3_2(L4_2)
    end
end
L0_1(L1_1, L2_1)

Config.FrameworkFunctions.registerCallback("high_phone:isPlayerDead", function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)

    if Player then
        local data = {
            isDead = Player.PlayerData.metadata['isdead'],
            lastStand = Player.PlayerData.metadata['inlaststand']
        }
        cb(data)
    else
        print("hig_phone: There was an error at Line - 374")
    end
end)

L0_1 = RegisterNetEvent
L1_1 = "high_phone:sendAirdrop"
function L2_1(A0_2, A1_2, A2_2)
    local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
    L3_2 = source
    L4_2 = TriggerClientEvent
    L5_2 = "high_phone:receivedAirdrop"
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = GetPlayerName
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    L9_2 = L3_2
    L10_2 = A2_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateSettings"
function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
    L1_2 = source
    L2_2 = Config
    L2_2 = L2_2.FrameworkFunctions
    L2_2 = L2_2.getPlayer
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = MySQL
    L3_2 = L3_2.Async
    L3_2 = L3_2.execute
    L4_2 = "UPDATE "
    L5_2 = Config
    L5_2 = L5_2.PlayersTable
    L6_2 = " SET settings = @settings WHERE "
    L7_2 = Config
    L7_2 = L7_2.IdentifierColumn
    L8_2 = " = @identifier"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
    L5_2 = {}
    L6_2 = json
    L6_2 = L6_2.encode
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L5_2["@settings"] = L6_2
    L6_2 = L2_2.identifier
    L5_2["@identifier"] = L6_2
    L3_2(L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:playSyncedSound"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
    local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
    L6_2 = source
    L7_2 = Config
    L7_2 = L7_2.SyncedSounds
    if not L7_2 then
        return
    end
    L7_2 = pairs
    L8_2 = A0_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        if L12_2 ~= L6_2 then
            L13_2 = TriggerClientEvent
            L14_2 = "high_phone:playSyncedSound"
            L15_2 = L12_2
            L16_2 = A1_2
            L17_2 = A2_2
            L18_2 = A3_2
            L19_2 = A4_2
            L20_2 = A5_2
            L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        end
    end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:stopSyncedSound"
function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2
    L1_2 = source
    L2_2 = Config
    L2_2 = L2_2.SyncedSounds
    if not L2_2 then
        return
    end
    L2_2 = TriggerClientEvent
    L3_2 = "high_phone:stopSyncedSound"
    L4_2 = -1
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:toggleFlashlight"
function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2
    L2_2 = TriggerClientEvent
    L3_2 = "high_phone:toggleFlashlight"
    L4_2 = -1
    L5_2 = A0_2
    L6_2 = A1_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateAirplane"
function L2_1(A0_2)
    local L1_2, L2_2
    L1_2 = source
    L2_2 = Players
    L2_2 = L2_2[L1_2]
    if L2_2 then
        L2_2 = Players
        L2_2 = L2_2[L1_2]
        L2_2.airplane = A0_2
    end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
    L1_2 = nil
    L2_2 = Config
    L2_2 = L2_2.PhoneNumberColumn
    L3_2 = Config
    L3_2 = L3_2.BankNumberColumn
    L4_2 = type
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if "table" ~= L4_2 then
        L4_2 = Config
        L4_2 = L4_2.FrameworkFunctions
        L4_2 = L4_2.getPlayer
        L5_2 = A0_2
        L4_2 = L4_2(L5_2)
        L1_2 = L4_2
    else
        L4_2 = Config
        L4_2 = L4_2.FrameworkFunctions
        L4_2 = L4_2.getPlayer
        L5_2 = A0_2.source
        if L5_2 then
            L5_2 = A0_2.source
            if L5_2 then
                goto lbl_35
            end
        end
        L5_2 = A0_2.PlayerData
        if L5_2 then
            L5_2 = A0_2.PlayerData
            L5_2 = L5_2.source
            if L5_2 then
                goto lbl_35
            end
        end
        if A02.source then
            goto lbl_35
        end
        L5_2 = A0_2.source
        ::lbl_35::
        L4_2 = L4_2(L5_2)
        L1_2 = L4_2
    end
    L4_2 = table
    L4_2 = L4_2.unpack
    L5_2 = getPlayerData
    L6_2 = A0_2 or nil
    L7_2 = {}
    L8_2 = L2_2
    L9_2 = L3_2
    L10_2 = "mailaccount"
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L7_2[3] = L10_2
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2(L6_2, L7_2)
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L7_2 = getTwitterUser
    L8_2 = L1_2.identifier
    L7_2 = L7_2(L8_2)
    if not L4_2 then
        L8_2 = getRandomNumber
        L9_2 = L1_2.source
        L8_2 = L8_2(L9_2)
        L4_2 = L8_2
        L9_2 = MySQL
        L9_2 = L9_2.Sync
        L9_2 = L9_2.execute
        L10_2 = "UPDATE "
        L11_2 = Config
        L11_2 = L11_2.PlayersTable
        L12_2 = " SET "
        L13_2 = L2_2
        L14_2 = " = @phone WHERE "
        L15_2 = Config
        L15_2 = L15_2.IdentifierColumn
        L16_2 = " = @identifier"
        L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
        L11_2 = {}
        L11_2["@phone"] = L8_2
        L12_2 = L1_2.identifier
        L11_2["@identifier"] = L12_2
        L9_2(L10_2, L11_2)
    end
    L8_2 = Config
    L8_2 = L8_2.EnableBankNumbersGeneration
    if L8_2 and not L5_2 then
        L8_2 = getRandomIBAN
        L9_2 = L1_2.source
        L8_2 = L8_2(L9_2)
        L5_2 = L8_2
        L9_2 = MySQL
        L9_2 = L9_2.Sync
        L9_2 = L9_2.execute
        L10_2 = "UPDATE "
        L11_2 = Config
        L11_2 = L11_2.PlayersTable
        L12_2 = " SET "
        L13_2 = L3_2
        L14_2 = " = @iban WHERE "
        L15_2 = Config
        L15_2 = L15_2.IdentifierColumn
        L16_2 = " = @identifier"
        L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
        L11_2 = {}
        L11_2["@iban"] = L8_2
        L12_2 = L1_2.identifier
        L11_2["@identifier"] = L12_2
        L9_2(L10_2, L11_2)
    end
    L8_2 = {}
    if L6_2 then
        L9_2 = MySQL
        L9_2 = L9_2.Async
        L9_2 = L9_2.fetchAll
        L10_2 = "SELECT name, photo FROM phone_mailaccounts WHERE address = @address LIMIT 1"
        L11_2 = {}
        L11_2["@address"] = L6_2
        L9_2 = L9_2(L10_2, L11_2)
        if L9_2 then
            L10_2 = {}
            L10_2.address = L6_2
            L11_2 = L9_2[1]
            L11_2 = L11_2.photo
            L10_2.photo = L11_2
            L11_2 = L9_2[1]
            L11_2 = L11_2.name
            L10_2.name = L11_2
            L8_2 = L10_2
        end
    end
    L9_2 = TriggerClientEvent
    L10_2 = "high_phone:updateData"
    L11_2 = L1_2.source
    L9_2(L10_2, L11_2)
    L9_2 = Players
    L10_2 = L1_2.source
    L11_2 = {}
    L12_2 = L1_2.source
    L11_2.source = L12_2
    L12_2 = Config
    L12_2 = L12_2.IdentifierColumn
    L13_2 = L1_2.identifier
    L11_2[L12_2] = L13_2
    L11_2.airplane = false
    L11_2.number = L4_2
    L11_2.iban = L5_2
    L11_2.twitterAccount = L7_2
    L11_2.mailData = L8_2
    L9_2[L10_2] = L11_2
end
loadPlayer = L0_1
L0_1 = RegisterCommand
L1_1 = "fixphone"
function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
    if 0 == A0_2 then
        L2_2 = pairs
        L3_2 = GetPlayers
        L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
        for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
            L8_2 = loadPlayer
            L9_2 = L7_2
            L8_2(L9_2)
        end
        return
    end
    L2_2 = loadPlayer
    L3_2 = A0_2
    L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = Config
L1_1 = L1_1.Events
L1_1 = L1_1.playerLoaded
function L2_1(A0_2)
    local L1_2, L2_2
    L1_2 = loadPlayer
    L2_2 = A0_2
    L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = Config
L1_1 = L1_1.Events
L1_1 = L1_1.playerDropped
function L2_1(A0_2)
    local L1_2
    L1_2 = Players
    L1_2[A0_2] = nil
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = Config
L1_1 = L1_1.Events
L1_1 = L1_1.updateJob
function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
    L1_2 = Config
    L1_2 = L1_2.FrameworkFunctions
    L1_2 = L1_2.getPlayer
    L2_2 = source
    L1_2 = L1_2(L2_2)
    if L1_2 then
        L2_2 = TriggerClientEvent
        L3_2 = "high_phone:updateJob"
        L4_2 = A0_2
        L5_2 = json
        L5_2 = L5_2.encode
        L6_2 = {}
        L7_2 = L1_2.jobName
        L6_2.name = L7_2
        L7_2 = L1_2.jobGrade
        L6_2.grade = L7_2
        L5_2, L6_2, L7_2 = L5_2(L6_2)
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "getPlayerPhoneNumber"
function L2_1(A0_2)
    local L1_2
    L1_2 = Players
    L1_2 = L1_2[A0_2]
    if L1_2 then
        L1_2 = Players
        L1_2 = L1_2[A0_2]
        L1_2 = L1_2.number
        if L1_2 then
            goto lbl_11
        end
    end
    L1_2 = nil
    ::lbl_11::
    return L1_2
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "getPlayerBankNumber"
function L2_1(A0_2)
    local L1_2
    L1_2 = Players
    L1_2 = L1_2[A0_2]
    if L1_2 then
        L1_2 = Players
        L1_2 = L1_2[A0_2]
        L1_2 = L1_2.iban
        if L1_2 then
            goto lbl_11
        end
    end
    L1_2 = nil
    ::lbl_11::
    return L1_2
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "getPlayerMailAddress"
function L2_1(A0_2)
    local L1_2
    L1_2 = Players
    L1_2 = L1_2[A0_2]
    if L1_2 then
        L1_2 = Players
        L1_2 = L1_2[A0_2]
        L1_2 = L1_2.mailData
        L1_2 = L1_2.address
        if L1_2 then
            goto lbl_12
        end
    end
    L1_2 = nil
    ::lbl_12::
    return L1_2
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "onResourceStart"
function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
    L1_2 = GetCurrentResourceName
    L1_2 = L1_2()
    if A0_2 == L1_2 then
        L1_2 = Wait
        L2_2 = 1000
        L1_2(L2_2)
        L1_2 = pairs
        L2_2 = GetPlayers
        L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
        L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
        for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
            L7_2 = loadPlayer
            L8_2 = tonumber
            L9_2 = L6_2
            L8_2, L9_2 = L8_2(L9_2)
            L7_2(L8_2, L9_2)
        end
    end
end
L0_1(L1_1, L2_1)
