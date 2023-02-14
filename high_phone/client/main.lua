local QBCore = exports['qb-core']:GetCoreObject()

local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
playerLoaded = false
isOpen = false
onCall = false
L0_1 = false
L1_1 = false
L2_1 = {}
L3_1 = false
L4_1 = false
L5_1 = false
L6_1 = nil
L7_1 = RegisterNUICallback
L8_1 = "nuiLoaded"
function L9_1(A0_2, cb)
    local L1_2, L2_2
    L1_2 = true
    L5_1 = L1_2
    L1_2 = Config
    L1_2 = L1_2.SyncedSounds
    if L1_2 then
        L1_2 = Config
        L1_2 = L1_2.UseHigh3D
        if not L1_2 then
            L1_2 = Config
            L1_2 = L1_2.UseExternalxSound
            if not L1_2 then
                goto lbl_20
            end
        end
    end
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.status = "disablexSound"
    cb("ok")
    L1_2(L2_2)
    ::lbl_20::
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "high_phone:updateData"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "high_phone:updateData"
function L9_1()
    local L0_2, L1_2, L2_2, L3_2
    while true do
        L0_2 = L5_1
        if L0_2 then
            L0_2 = FOB
            if L0_2 then
                break
            end
        end
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 500
        L0_2(L1_2)
    end
    L0_2 = Config
    L0_2 = L0_2.FrameworkFunctions
    L0_2 = L0_2.triggerCallback
    L1_2 = "high_phone:getMyData"
    function L2_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3
        L1_3 = json
        L1_3 = L1_3.decode
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        L2_3 = L1_3.number
        if L2_3 then
            playerLoaded = true
            L2_3 = L1_3.number
            L6_1 = L2_3
            L2_3 = SendNUIMessage
            L3_3 = {}
            L3_3.action = "updateData"
            L4_3 = L1_3.name
            L3_3.fullname = L4_3
            L4_3 = GetPlayerServerId
            L5_3 = PlayerId
            L5_3 = L5_3()
            L4_3 = L4_3(L5_3)
            L3_3.id = L4_3
            L4_3 = GetPlayerName
            L5_3 = PlayerId
            L5_3 = L5_3()
            L4_3 = L4_3(L5_3)
            L3_3.name = L4_3
            L4_3 = L1_3.number
            L3_3.number = L4_3
            L4_3 = L1_3.settings
            L3_3.settings = L4_3
            L4_3 = L1_3.identifier
            L3_3.identifier = L4_3
            L4_3 = L1_3.job
            L3_3.job = L4_3
            L2_3(L3_3)
            L2_3 = SendNUIMessage
            L3_3 = {}
            L3_3.action = "updateConfig"
            L4_3 = {}
            L5_3 = Config
            L5_3 = L5_3.MailFormat
            L4_3.mailFormat = L5_3
            L5_3 = Config
            L5_3 = L5_3.TwitterResetTimer
            L4_3.twitterResetTimer = L5_3
            L5_3 = Config
            L5_3 = L5_3.SyncedSounds
            L4_3.syncedSounds = L5_3
            L5_3 = Config
            L5_3 = L5_3.MaxRecipients
            L4_3.maxRecipients = L5_3
            L3_3.config = L4_3
            L2_3(L3_3)
            L2_3 = SendNUIMessage
            L3_3 = {}
            L3_3.action = "updateAdCategories"
            L4_3 = json
            L4_3 = L4_3.encode
            L5_3 = Config
            L5_3 = L5_3.AdsCategories
            L4_3 = L4_3(L5_3)
            L3_3.categories = L4_3
            L2_3(L3_3)
            L2_3 = TriggerEvent
            L3_3 = "high_phone:updateContacts"
            L2_3(L3_3)
            L2_3 = TriggerEvent
            L3_3 = "high_phone:updateCalls"
            L2_3(L3_3)
            L2_3 = TriggerEvent
            L3_3 = "high_phone:updateChats"
            L2_3(L3_3)
            L2_3 = TriggerEvent
            L3_3 = "high_phone:updateMail"
            L2_3(L3_3)
            L2_3 = TriggerEvent
            L3_3 = "high_phone:updateGroups"
            L2_3(L3_3)
            L2_3 = TriggerEvent
            L3_3 = "high_phone:updateAds"
            L2_3(L3_3)
            L2_3 = TriggerEvent
            L3_3 = "high_phone:updateTwitter"
            L2_3(L3_3)
            L2_3 = TriggerEvent
            L3_3 = "high_phone:updateBankData"
            L2_3(L3_3)
            L2_3 = TriggerEvent
            L3_3 = "high_phone:updateNotes"
            L2_3(L3_3)
            L2_3 = TriggerEvent
            L3_3 = "high_phone:updateDarkchat"
            L2_3(L3_3)
            L2_3 = TriggerEvent
            L3_3 = "high_phone:updateGallery"
            L2_3(L3_3)
            TriggerEvent("high_phone:updateVehicles")
        end
    end
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "high_phone:updateJob"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "high_phone:updateJob"
function L9_1(A0_2)
    local L1_2, L2_2
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "updateJob"
    L2_2.job = A0_2
    L1_2(L2_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNUICallback
L8_1 = "updateSettings"
function L9_1(A0_2, cb)
    local L1_2, L2_2, L3_2
    L1_2 = TriggerServerEvent
    L2_2 = "high_phone:updateSettings"
    L3_2 = A0_2.settings
    L1_2(L2_2, L3_2)
    cb("ok")
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNUICallback
L8_1 = "updateAirplane"
function L9_1(A0_2, cb)
    local L1_2, L2_2, L3_2
    L1_2 = TriggerServerEvent
    L2_2 = "high_phone:updateAirplane"
    L3_2 = A0_2.toggle
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.toggle
    if not L1_2 then
        L1_2 = playerLoaded
        if L1_2 then
            L1_2 = TriggerEvent
            L2_2 = "high_phone:updateContacts"
            L1_2(L2_2)
            L1_2 = TriggerEvent
            L2_2 = "high_phone:updateCalls"
            L1_2(L2_2)
            L1_2 = TriggerEvent
            L2_2 = "high_phone:updateChats"
            L1_2(L2_2)
            L1_2 = TriggerEvent
            L2_2 = "high_phone:updateGroups"
            L1_2(L2_2)
            L1_2 = TriggerEvent
            L2_2 = "high_phone:updateAds"
            L1_2(L2_2)
            L1_2 = TriggerEvent
            L2_2 = "high_phone:updateTwitter"
            L1_2(L2_2)
        end
    end
    cb("ok")
end
L7_1(L8_1, L9_1)
L7_1 = {}
L8_1 = RegisterNetEvent
L9_1 = "high_phone:playSyncedSound"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "high_phone:playSyncedSound"
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
    local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
    L5_2 = A0_2
    L6_2 = "-"
    L7_2 = A1_2
    L5_2 = L5_2 .. L6_2 .. L7_2
    L6_2 = Config
    L6_2 = L6_2.UseHigh3D
    if L6_2 then
        L6_2 = L7_1
        L7_2 = exports
        L8_2 = Config
        L8_2 = L8_2.High3DName
        L7_2 = L7_2[L8_2]
        L8_2 = L7_2
        L7_2 = L7_2.Play3DEntity
        L9_2 = A1_2
        L10_2 = Config
        L10_2 = L10_2.SyncedSoundDistance
        L11_2 = A2_2
        L12_2 = A3_2
        L13_2 = A4_2
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L6_2[L5_2] = L7_2
    else
        L6_2 = NetworkGetEntityFromNetworkId
        L7_2 = A1_2
        L6_2 = L6_2(L7_2)
        L7_2 = NetworkDoesEntityExistWithNetworkId
        L8_2 = A1_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
            L7_2 = IsEntityAPed
            L8_2 = L6_2
            L7_2 = L7_2(L8_2)
            if L7_2 then
                L7_2 = IsPedAPlayer
                L8_2 = L6_2
                L7_2 = L7_2(L8_2)
                if L7_2 then
                    L7_2 = L7_1
                    L7_2[L5_2] = A1_2
                    L7_2 = PlayUrlPos
                    L8_2 = L5_2
                    L9_2 = A2_2
                    L10_2 = A3_2
                    L11_2 = GetEntityCoords
                    L12_2 = L6_2
                    L11_2 = L11_2(L12_2)
                    L12_2 = A4_2
                    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
                    L7_2 = Distance
                    L8_2 = L5_2
                    L9_2 = Config
                    L9_2 = L9_2.SyncedSoundDistance
                    L7_2(L8_2, L9_2)
                    if A4_2 then
                        L7_2 = destroyOnFinish
                        L8_2 = L5_2
                        L9_2 = false
                        L7_2(L8_2, L9_2)
                    end
                end
            end
        end
    end
end
L8_1(L9_1, L10_1)
L8_1 = Citizen
L8_1 = L8_1.CreateThread
function L9_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    L0_2 = Config
    L0_2 = L0_2.UseHigh3D
    if L0_2 then
        return
    end
    L0_2 = Config
    L0_2 = L0_2.xSoundPositionUpdateFrequency
    while true do
        L1_2 = Wait
        L2_2 = L0_2
        L1_2(L2_2)
        L1_2 = pairs
        L2_2 = L7_1
        L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
        for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
            L7_2 = NetworkGetEntityFromNetworkId
            L8_2 = L6_2
            L7_2 = L7_2(L8_2)
            L8_2 = NetworkDoesEntityExistWithNetworkId
            L9_2 = L6_2
            L8_2 = L8_2(L9_2)
            if L8_2 then
                L8_2 = IsEntityAPed
                L9_2 = L7_2
                L8_2 = L8_2(L9_2)
                if L8_2 then
                    L8_2 = IsPedAPlayer
                    L9_2 = L7_2
                    L8_2 = L8_2(L9_2)
                    if L8_2 then
                        L8_2 = soundExists
                        L9_2 = L5_2
                        L8_2 = L8_2(L9_2)
                        if L8_2 then
                            L8_2 = Position
                            L9_2 = L5_2
                            L10_2 = GetEntityCoords
                            L11_2 = L7_2
                            L10_2, L11_2 = L10_2(L11_2)
                            L8_2(L9_2, L10_2, L11_2)
                        end
                    end
                end
            else
                L8_2 = soundExists
                L9_2 = L5_2
                L8_2 = L8_2(L9_2)
                if L8_2 then
                    L8_2 = Destroy
                    L9_2 = L5_2
                    L8_2(L9_2)
                end
            end
        end
    end
end
L8_1(L9_1)
L8_1 = RegisterNetEvent
L9_1 = "high_phone:stopSyncedSound"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "high_phone:stopSyncedSound"
function L10_1(A0_2)
    local L1_2, L2_2
    L1_2 = Config
    L1_2 = L1_2.UseHigh3D
    if L1_2 then
        L1_2 = L7_1
        L1_2 = L1_2[A0_2]
        if L1_2 then
            L1_2 = L7_1
            L1_2 = L1_2[A0_2]
            L1_2 = L1_2.destroy
            L1_2()
            L1_2 = L7_1
            L1_2[A0_2] = nil
        end
    else
        L1_2 = Config
        L1_2 = L1_2.UseHigh3D
        if not L1_2 then
            L1_2 = L7_1
            L1_2 = L1_2[A0_2]
            if L1_2 then
                L1_2 = Destroy
                L2_2 = A0_2
                L1_2(L2_2)
                L1_2 = L7_1
                L1_2[A0_2] = nil
            end
        end
    end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "playSyncedSound"
function L10_1(A0_2, cb)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    L1_2 = {}
    L2_2 = pairs
    L3_2 = GetActivePlayers
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2()
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = GetPlayerServerId
        L11_2 = L7_2
        L10_2, L11_2 = L10_2(L11_2)
        table.insert(L9_2, L10_2, L11_2)
    end
    L2_2 = TriggerServerEvent
    L3_2 = "high_phone:playSyncedSound"
    L4_2 = L1_2
    L5_2 = A0_2.id
    L6_2 = NetworkGetNetworkIdFromEntity
    L7_2 = PlayerPedId
    L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L7_2 = A0_2.src
    L8_2 = A0_2.volume
    L9_2 = A0_2.loop
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    cb("ok")
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "stopSyncedSound"
function L10_1(A0_2, cb)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
    L1_2 = TriggerServerEvent
    L2_2 = "high_phone:stopSyncedSound"
    L3_2 = A0_2.id
    L4_2 = "-"
    L5_2 = NetworkGetNetworkIdFromEntity
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L5_2 = L5_2(L6_2)
    L3_2 = L3_2 .. L4_2 .. L5_2
    L1_2(L2_2, L3_2)
    cb("ok")
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "changeCamera"
function L10_1(A0_2, cb)
    local L1_2, L2_2, L3_2
    L1_2 = A0_2.frontCamera
    if nil ~= L1_2 then
        L1_2 = Citizen
        L1_2 = L1_2.InvokeNative
        L2_2 = 2635073306796480568
        L3_2 = A0_2.frontCamera
        L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2.portrait
    if L1_2 then
        L1_2 = SetTimecycleModifier
        L2_2 = "MP_corona_heist_DOF"
        L1_2(L2_2)
        L1_2 = SetTimecycleModifierStrength
        L2_2 = 1.0
        L1_2(L2_2)
    else
        L1_2 = ClearTimecycleModifier
        L1_2()
    end
    cb("ok")
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "shareImage"
function L10_1(A0_2, cb)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
    L1_2 = Config
    L1_2 = L1_2.FrameworkFunctions
    L1_2 = L1_2.getClosestPlayer
    L1_2, L2_2 = L1_2()
    if -1 ~= L1_2 then
        L3_2 = Config
        L3_2 = L3_2.AirdropDistance
        if L2_2 < L3_2 then
            L3_2 = TriggerServerEvent
            L4_2 = "high_phone:sendAirdrop"
            L5_2 = GetPlayerServerId
            L6_2 = L1_2
            L5_2 = L5_2(L6_2)
            L6_2 = "image"
            L7_2 = json
            L7_2 = L7_2.encode
            L8_2 = A0_2
            L7_2, L8_2 = L7_2(L8_2)
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        end
    end
    cb("ok")
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "high_phone:updateGallery"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "high_phone:updateGallery"
function L10_1()
    local L0_2, L1_2, L2_2
    L0_2 = Config
    L0_2 = L0_2.FrameworkFunctions
    L0_2 = L0_2.triggerCallback
    L1_2 = "high_phone:getGallery"
    function L2_2(A0_3)
        local L1_3, L2_3
        L1_3 = SendNUIMessage
        L2_3 = {}
        L2_3.action = "updateGallery"
        L2_3.photos = A0_3
        L1_3(L2_3)
    end
    L0_2(L1_2, L2_2)
end
L8_1(L9_1, L10_1)

L8_1 = RegisterNUICallback
L9_1 = "savePhoto"
function L10_1(A0_2, cb)
    local L1_2, L2_2, L3_2, L4_2, L5_2
    L1_2 = TriggerServerEvent
    L2_2 = "high_phone:savePhoto"
    L3_2 = A0_2.url
    L4_2 = A0_2.src
    L5_2 = A0_2.date
    L1_2(L2_2, L3_2, L4_2, L5_2, source)
    cb("ok")
end
L8_1(L9_1, L10_1)

L8_1 = RegisterNUICallback
L9_1 = "deletePhoto"
function L10_1(A0_2, cb)
    local L1_2, L2_2, L3_2
    L1_2 = TriggerServerEvent
    L2_2 = "high_phone:deletePhoto"
    L3_2 = A0_2.url
    L1_2(L2_2, L3_2)
    cb("ok")
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "high_phone:updateNotes"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "high_phone:updateNotes"
function L10_1()
    local L0_2, L1_2, L2_2
    L0_2 = Config
    L0_2 = L0_2.FrameworkFunctions
    L0_2 = L0_2.triggerCallback
    L1_2 = "high_phone:getNotes"
    function L2_2(A0_3)
        local L1_3, L2_3
        L1_3 = SendNUIMessage
        L2_3 = {}
        L2_3.action = "updateNotes"
        L2_3.notes = A0_3
        L1_3(L2_3)
    end
    L0_2(L1_2, L2_2)
end
L8_1(L9_1, L10_1)

RegisterNetEvent("high_phone:updateVehicles", function()
    QBCore.Functions.TriggerCallback("high_phone:getVehicles", function(vehicles)
        local data = {}
        for k, v in pairs(vehicles) do
            data[#data + 1] = {
                brand = QBCore.Shared.Vehicles[v.vehicle].brand,
                name = QBCore.Shared.Vehicles[v.vehicle].name,
                plate = v.plate,
                garage = v.garage
            }
        end

        SendNUIMessage({
            action = "updateVehicles",
            vehicles = data
        })
    end)
end)

local AracCikariliyor = false
RegisterNUICallback("getCarVale", function(data, cb)
    if not AracCikariliyor then
        AracCikariliyor = true
        local plate = data.plate
        local gameVehicles = QBCore.Functions.GetVehicles()

        for i = 1, #gameVehicles do
            if DoesEntityExist(gameVehicles[i]) then
                if GetVehicleNumberPlateText(gameVehicles[i]) == plate then
                    local vehicleCoords = GetEntityCoords(gameVehicles[i])
                    SetNewWaypoint(vehicleCoords.x, vehicleCoords.y)
                    QBCore.Functions.Notify(plate .. " plakalı aracın dışarıda veya çekilmişlerde.", "error")
                    return
                end
            end
        end

        local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 1.5, 6.0, 1.0)
        local spawnPoint = {
            x = coords.x,
            y = coords.y,
            z = coords.z,
            r = 1.0
        }
        
        QBCore.Functions.TriggerCallback('garage:fetchVehicleProperties', function(properties)
            if properties == nil then
                QBCore.Functions.Notify("Araç garajda değil.", "error", 4500)
                return
            end
            wait = 1000 * math.random(15, 20)
            QBCore.Functions.Notify("Aracınız vale tarafından getiriliyor. Tahmini bekleme süresi: " .. wait / 1000,
            "success")
            Wait(wait)
            QBCore.Functions.SpawnVehicle(properties.model, function(veh)
                QBCore.Functions.SetVehicleProperties(veh, properties)
                TriggerServerEvent('high_phone:sendBillVale', Config.ValePrice)
                TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
                QBCore.Functions.Notify("Araç çıkarıldı.", "success", 4500)
                cb("ok")
            end, spawnPoint, true)
        end, plate)
        AracCikariliyor = false
    end
    cb("ok")
end)

RegisterNUICallback("updateVehicles", function(cb)
    QBCore.Functions.TriggerCallback("high_phone:getVehicles", function(vehicles)
        local data = {}
        for k, v in pairs(vehicles) do
            data[#data + 1] = {
                brand = QBCore.Shared.Vehicles[v.vehicle].brand,
                name = QBCore.Shared.Vehicles[v.vehicle].name,
                plate = v.plate,
                garage = v.state == 0 and "Çekilmiş" or v.garage
            }
        end

        SendNUIMessage({
            action = "updateVehicles",
            vehicles = data
        })
        cb("ok")
    end)
end)

L8_1 = RegisterNUICallback
L9_1 = "updateNotes"
function L10_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    L2_2 = TriggerServerEvent
    L3_2 = "high_phone:updateNotes"
    L4_2 = A0_2.notes
    L2_2(L3_2, L4_2)
    A1_2("ok")
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "toggleFlashlight"
function L10_1(A0_2, cb)
    local L1_2, L2_2, L3_2, L4_2, L5_2
    L1_2 = A0_2.toggle
    L1_1 = L1_2
    L1_2 = Config
    L1_2 = L1_2.SyncedFlashlight
    if L1_2 then
        L1_2 = GetPlayerServerId
        L2_2 = PlayerId
        L2_2, L3_2, L4_2, L5_2 = L2_2()
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        L2_2 = TriggerServerEvent
        L3_2 = "high_phone:toggleFlashlight"
        L4_2 = L1_2
        L5_2 = A0_2.toggle
        L2_2(L3_2, L4_2, L5_2)
    end
    cb("ok")
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "high_phone:toggleFlashlight"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "high_phone:toggleFlashlight"
function L10_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
    L2_2 = GetPlayerFromServerId
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = PlayerId
    L3_2 = L3_2()
    if L2_2 == L3_2 then
        return
    end
    L3_2 = L2_1
    if A1_2 then
        L4_2 = {}
        L4_2.owner = L2_2
        if L4_2 then
            goto lbl_18
        end
    end
    L4_2 = nil
    ::lbl_18::
    L3_2[L2_2] = L4_2
    if A1_2 and -1 ~= L2_2 then
        L3_2 = GetPlayerPed
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        L4_2 = GetEntityCoords
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        L5_2 = GetOffsetFromEntityInWorldCoords
        L6_2 = L3_2
        L7_2 = 0.0
        L8_2 = 100000.0
        L9_2 = 0.0
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
        L6_2 = L2_1
        L6_2 = L6_2[L2_2]
        L7_2 = L4_2.x
        L6_2.x = L7_2
        L6_2 = L2_1
        L6_2 = L6_2[L2_2]
        L7_2 = L4_2.y
        L6_2.y = L7_2
        L6_2 = L2_1
        L6_2 = L6_2[L2_2]
        L7_2 = L4_2.z
        L7_2 = L7_2 - 0.5
        L6_2.z = L7_2
        L6_2 = L2_1
        L6_2 = L6_2[L2_2]
        L7_2 = L5_2.x
        L6_2.dirx = L7_2
        L6_2 = L2_1
        L6_2 = L6_2[L2_2]
        L7_2 = L5_2.y
        L6_2.diry = L7_2
        L6_2 = L2_1
        L6_2 = L6_2[L2_2]
        L7_2 = L5_2.z
        L6_2.dirz = L7_2
    end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "disableMouseFocus"
function L10_1(A0_2, cb)
    local L1_2, L2_2, L3_2
    L1_2 = true
    L3_1 = L1_2
    L1_2 = SetNuiFocus
    L2_2 = false
    L3_2 = false
    L1_2(L2_2, L3_2)
    cb("ok")
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "inputFocus"
function L10_1(A0_2, cb)
    local L1_2, L2_2, L3_2
    L1_2 = A0_2.disableInput
    if L1_2 then
        L1_2 = GetGameTimer
        L1_2 = L1_2()
        while true do
            L2_2 = GetGameTimer
            L2_2 = L2_2()
            L2_2 = L2_2 - L1_2
            L3_2 = 200
            if not (L2_2 < L3_2) then
                break
            end
            L2_2 = Citizen
            L2_2 = L2_2.Wait
            L3_2 = 0
            L2_2(L3_2)
            L2_2 = DisableAllControlActions
            L3_2 = 0
            L2_2(L3_2)
        end
    end
    L1_2 = SetNuiFocusKeepInput
    L2_2 = A0_2.disableInput
    L2_2 = not L2_2
    L1_2(L2_2)
    cb("ok")
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "getGameDate"
function L10_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2
    L2_2 = A1_2
    L3_2 = json
    L3_2 = L3_2.encode
    L4_2 = {}
    L5_2 = GetClockYear
    L5_2 = L5_2()
    L4_2.year = L5_2
    L5_2 = GetClockMonth
    L5_2 = L5_2()
    L4_2.month = L5_2
    L5_2 = GetClockDayOfWeek
    L5_2 = L5_2()
    L4_2.weekday = L5_2
    L5_2 = GetClockDayOfMonth
    L5_2 = L5_2()
    L4_2.day = L5_2
    L5_2 = GetClockHours
    L5_2 = L5_2()
    L4_2.hour = L5_2
    L5_2 = GetClockMinutes
    L5_2 = L5_2()
    L4_2.minute = L5_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2, L5_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "openCamera"
function L10_1(A0_2, cb)
    local L1_2, L2_2, L3_2, L4_2, L5_2
    L1_2 = CreateMobilePhone
    L2_2 = 0
    L1_2(L2_2)
    L1_2 = CellCamActivate
    L2_2 = true
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = true
    L0_1 = L1_2
    L1_2 = A0_2.frontCamera
    if nil ~= L1_2 then
        L1_2 = Citizen
        L1_2 = L1_2.InvokeNative
        L2_2 = 2635073306796480568
        L3_2 = A0_2.frontCamera
        L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2.portrait
    if L1_2 then
        L1_2 = SetTimecycleModifier
        L2_2 = "MP_corona_heist_DOF"
        L1_2(L2_2)
        L1_2 = SetTimecycleModifierStrength
        L2_2 = 1.0
        L1_2(L2_2)
    end
    L1_2 = StopAnimTask
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = currentAnimLib
    L4_2 = currentAnim
    L5_2 = 2.5
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = deletePhone
    L1_2()
    currentAnimLib = nil
    currentAnim = nil
    cb("ok")
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "closeCamera"
function L10_1(A0_2, cb)
    local L1_2, L2_2, L3_2
    L1_2 = ClearTimecycleModifier
    L1_2()
    L1_2 = DestroyMobilePhone
    L1_2()
    L1_2 = CellCamActivate
    L2_2 = false
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = false
    L0_1 = L1_2
    L1_2 = DoPhoneAnimation
    L2_2 = "cellphone_text_read_base"
    L1_2(L2_2)
    L1_2 = SetTimeout
    L2_2 = 250
    function L3_2()
        local L0_3, L1_3
        L0_3 = newPhoneProp
        L0_3()
    end
    L1_2(L2_2, L3_2)
    cb("ok")
end
L8_1(L9_1, L10_1)
L8_1 = Citizen
L8_1 = L8_1.CreateThread
function L9_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2,
        L17_2, L18_2
    L0_2 = GetFirstPersonAimCamZoomFactor
    L0_2 = L0_2()
    while true do
        L1_2 = Citizen
        L1_2 = L1_2.Wait
        L2_2 = 0
        L1_2(L2_2)
        L1_2 = false
        L2_2 = isOpen
        if L2_2 then
            L2_2 = L0_1
            if L2_2 then
                L2_2 = HideHudComponentThisFrame
                L3_2 = 7
                L2_2(L3_2)
                L2_2 = HideHudComponentThisFrame
                L3_2 = 8
                L2_2(L3_2)
                L2_2 = HideHudComponentThisFrame
                L3_2 = 9
                L2_2(L3_2)
                L2_2 = HideHudComponentThisFrame
                L3_2 = 6
                L2_2(L3_2)
                L2_2 = HideHudComponentThisFrame
                L3_2 = 19
                L2_2(L3_2)
                L2_2 = HideHudAndRadarThisFrame
                L2_2()
                L2_2 = ThefeedHideThisFrame
                L2_2()
                L2_2 = GetFirstPersonAimCamZoomFactor
                L2_2 = L2_2()
                if L0_2 ~= L2_2 then
                    L2_2 = GetFirstPersonAimCamZoomFactor
                    L2_2 = L2_2()
                    L0_2 = L2_2
                    L2_2 = SendNUIMessage
                    L3_2 = {}
                    L3_2.action = "updateZoom"
                    L3_2.zoom = L0_2
                    L2_2(L3_2)
                end
            end
            L2_2 = L1_1
            if L2_2 then
                L2_2 = GetEntityCoords
                L3_2 = PlayerPedId
                L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 =
                    L3_2()
                L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2,
                    L17_2, L18_2)
                L3_2 = GetOffsetFromEntityInWorldCoords
                L4_2 = PlayerPedId
                L4_2 = L4_2()
                L5_2 = 0.0
                L6_2 = 100000.0
                L7_2 = 0.0
                L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
                L4_2 = DrawSpotLight
                L5_2 = L2_2.x
                L6_2 = L2_2.y
                L7_2 = L2_2.z
                L7_2 = L7_2 - 0.5
                L8_2 = L3_2.x
                L9_2 = L3_2.y
                L10_2 = L3_2.z
                L11_2 = 255
                L12_2 = 255
                L13_2 = 255
                L14_2 = 10.0
                L15_2 = 5.0
                L16_2 = 0.0
                L17_2 = 40.0
                L18_2 = 60.0
                L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
            end
            L2_2 = L3_1
            if not L2_2 then
                L2_2 = DisableControlAction
                L3_2 = 0
                L4_2 = 1
                L5_2 = true
                L2_2(L3_2, L4_2, L5_2)
                L2_2 = DisableControlAction
                L3_2 = 0
                L4_2 = 2
                L5_2 = true
                L2_2(L3_2, L4_2, L5_2)
                L2_2 = DisableControlAction
                L3_2 = 0
                L4_2 = 14
                L5_2 = true
                L2_2(L3_2, L4_2, L5_2)
                L2_2 = DisableControlAction
                L3_2 = 0
                L4_2 = 15
                L5_2 = true
                L2_2(L3_2, L4_2, L5_2)
                L2_2 = DisableControlAction
                L3_2 = 0
                L4_2 = 16
                L5_2 = true
                L2_2(L3_2, L4_2, L5_2)
                L2_2 = DisableControlAction
                L3_2 = 0
                L4_2 = 17
                L5_2 = true
                L2_2(L3_2, L4_2, L5_2)
                L2_2 = DisableControlAction
                L3_2 = 0
                L4_2 = 24
                L5_2 = true
                L2_2(L3_2, L4_2, L5_2)
                L2_2 = DisableControlAction
                L3_2 = 0
                L4_2 = 25
                L5_2 = true
                L2_2(L3_2, L4_2, L5_2)
                L2_2 = DisableControlAction
                L3_2 = 0
                L4_2 = 69
                L5_2 = true
                L2_2(L3_2, L4_2, L5_2)
                L2_2 = DisableControlAction
                L3_2 = 0
                L4_2 = 70
                L5_2 = true
                L2_2(L3_2, L4_2, L5_2)
                L2_2 = DisableControlAction
                L3_2 = 0
                L4_2 = 92
                L5_2 = true
                L2_2(L3_2, L4_2, L5_2)
                L2_2 = DisableControlAction
                L3_2 = 0
                L4_2 = 257
                L5_2 = true
                L2_2(L3_2, L4_2, L5_2)
                SetPedStealthMovement(PlayerPedId(), false,"")
                DisableControlAction(0, 1, 36)
            else
                L2_2 = L3_1
                if L2_2 then
                    L2_2 = IsControlJustPressed
                    L3_2 = 0
                    L4_2 = 25
                    L2_2 = L2_2(L3_2, L4_2)
                    if L2_2 then
                        L2_2 = false
                        L3_1 = L2_2
                        L2_2 = SetNuiFocus
                        L3_2 = true
                        L4_2 = true
                        L2_2(L3_2, L4_2)
                    end
                end
            end
            L2_2 = DisableControlAction
            L3_2 = 0
            L4_2 = 81
            L5_2 = true
            L2_2(L3_2, L4_2, L5_2)
            L2_2 = DisableControlAction
            L3_2 = 0
            L4_2 = 82
            L5_2 = true
            L2_2(L3_2, L4_2, L5_2)
            L2_2 = DisableControlAction
            L3_2 = 0
            L4_2 = 99
            L5_2 = true
            L2_2(L3_2, L4_2, L5_2)
            L2_2 = DisableControlAction
            L3_2 = 0
            L4_2 = 200
            L5_2 = true
            L2_2(L3_2, L4_2, L5_2)
        else
            L1_2 = true
        end
        if L1_2 then
            L2_2 = Citizen
            L2_2 = L2_2.Wait
            L3_2 = 500
            L2_2(L3_2)
        end
    end
end
L8_1(L9_1)
L8_1 = false
L9_1 = Citizen
L9_1 = L9_1.CreateThread
function L10_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    while true do
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 500
        L0_2(L1_2)
        L0_2 = false
        L1_2 = PlayerId
        L1_2 = L1_2()
        L2_2 = pairs
        L3_2 = L2_1
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
        for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
            L8_2 = L7_2.owner
            if -1 ~= L8_2 then
                L8_2 = L7_2.x
                if L8_2 then
                    L8_2 = GetEntityCoords
                    L9_2 = PlayerPedId
                    L9_2, L10_2, L11_2, L12_2 = L9_2()
                    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
                    L9_2 = vector3
                    L10_2 = L7_2.x
                    L11_2 = L7_2.y
                    L12_2 = L7_2.z
                    L9_2 = L9_2(L10_2, L11_2, L12_2)
                    L8_2 = L8_2 - L9_2
                    L8_2 = #L8_2
                    L9_2 = Config
                    L9_2 = L9_2.SyncedFlashlightDistance
                    if L8_2 < L9_2 then
                        L0_2 = true
                        break
                    end
                end
            end
        end
        L8_1 = L0_2
    end
end
L9_1(L10_1)
L9_1 = Citizen
L9_1 = L9_1.CreateThread
function L10_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
    L0_2 = Config
    L0_2 = L0_2.SyncedFlashlightUpdateFraquency
    while true do
        L1_2 = Citizen
        L1_2 = L1_2.Wait
        L2_2 = L0_2
        L1_2(L2_2)
        L1_2 = PlayerId
        L1_2 = L1_2()
        L2_2 = pairs
        L3_2 = L2_1
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
        for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
            L8_2 = L7_2.owner
            if -1 ~= L8_2 then
                L8_2 = GetPlayerPed
                L9_2 = L7_2.owner
                L8_2 = L8_2(L9_2)
                L9_2 = GetEntityCoords
                L10_2 = L8_2
                L9_2 = L9_2(L10_2)
                L10_2 = GetOffsetFromEntityInWorldCoords
                L11_2 = L8_2
                L12_2 = 0.0
                L13_2 = 100000.0
                L14_2 = 0.0
                L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
                L11_2 = L9_2.x
                L7_2.x = L11_2
                L11_2 = L9_2.y
                L7_2.y = L11_2
                L11_2 = L9_2.z
                L11_2 = L11_2 - 0.5
                L7_2.z = L11_2
                L11_2 = L10_2.x
                L7_2.dirx = L11_2
                L11_2 = L10_2.y
                L7_2.diry = L11_2
                L11_2 = L10_2.z
                L7_2.dirz = L11_2
            end
        end
        L2_2 = L8_1
        if not L2_2 then
            L2_2 = Wait
            L3_2 = 500
            L2_2(L3_2)
        end
    end
end
L9_1(L10_1)
L9_1 = Citizen
L9_1 = L9_1.CreateThread
function L10_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2,
        L17_2, L18_2, L19_2, L20_2, L21_2
    L0_2 = Config
    L0_2 = L0_2.SyncedFlashlightDistance
    while true do
        L1_2 = Citizen
        L1_2 = L1_2.Wait
        L2_2 = 0
        L1_2(L2_2)
        L1_2 = L8_1
        if L1_2 then
            L1_2 = pairs
            L2_2 = L2_1
            L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
            for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
                L7_2 = L6_2.x
                if L7_2 then
                    L7_2 = GetEntityCoords
                    L8_2 = PlayerPedId
                    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 =
                        L8_2()
                    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2,
                        L21_2)
                    L8_2 = vector3
                    L9_2 = L6_2.x
                    L10_2 = L6_2.y
                    L11_2 = L6_2.z
                    L8_2 = L8_2(L9_2, L10_2, L11_2)
                    L7_2 = L7_2 - L8_2
                    L7_2 = #L7_2
                    if L0_2 > L7_2 then
                        L7_2 = DrawSpotLight
                        L8_2 = L6_2.x
                        L9_2 = L6_2.y
                        L10_2 = L6_2.z
                        L11_2 = L6_2.dirx
                        L12_2 = L6_2.diry
                        L13_2 = L6_2.dirz
                        L14_2 = 255
                        L15_2 = 255
                        L16_2 = 255
                        L17_2 = 10.0
                        L18_2 = 5.0
                        L19_2 = 0.0
                        L20_2 = 40.0
                        L21_2 = 60.0
                        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2,
                            L21_2)
                    end
                end
            end
        else
            L1_2 = Wait
            L2_2 = 500
            L1_2(L2_2)
        end
    end
end
L9_1(L10_1)
L9_1 = RegisterNUICallback
L10_1 = "hasPhone"
function L11_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    L2_2 = FOB
    if L2_2 then
        L2_2 = Config
        L2_2 = L2_2.FrameworkFunctions
        L2_2 = L2_2.triggerCallback
        L3_2 = "high_phone:hasPhone"
        function L4_2(A0_3)
            local L1_3, L2_3
            L1_3 = A1_2
            L2_3 = A0_3
            L1_3(L2_3)
        end
        L2_2(L3_2, L4_2)
    else
        L2_2 = A1_2
        L3_2 = false
        L2_2(L3_2)
    end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNUICallback
L10_1 = "openPhone"
function L11_1(A0_2, cb)
    local L1_2, L2_2
    L1_2 = TriggerEvent
    L2_2 = "high_phone:openPhone"
    L1_2(L2_2)
    cb("ok")
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNUICallback
L10_1 = "closePhone"
function L11_1(A0_2, cb)
    local L1_2, L2_2, L3_2
    L1_2 = TriggerEvent
    L2_2 = "high_phone:closePhone"
    L1_2(L2_2)
    L1_2 = Citizen
    L1_2 = L1_2.SetTimeout
    L2_2 = 200
    function L3_2()
        local L0_3, L1_3
        isOpen = false
    end
    L1_2(L2_2, L3_2)
    L1_2 = SetNuiFocus
    L2_2 = false
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = SetNuiFocusKeepInput
    L2_2 = false
    L1_2(L2_2)
    L1_2 = L0_1
    if L1_2 then
        L1_2 = ClearTimecycleModifier
        L1_2()
        L1_2 = DestroyMobilePhone
        L1_2()
        L1_2 = CellCamActivate
        L2_2 = false
        L3_2 = false
        L1_2(L2_2, L3_2)
        L1_2 = false
        L0_1 = L1_2
    end
    L1_2 = onCall
    if not L1_2 then
        L1_2 = DoPhoneAnimation
        L2_2 = "cellphone_text_out"
        L1_2(L2_2)
        L1_2 = SetTimeout
        L2_2 = 400
        function L3_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3
            L0_3 = StopAnimTask
            L1_3 = PlayerPedId
            L1_3 = L1_3()
            L2_3 = currentAnimLib
            L3_3 = currentAnim
            L4_3 = 2.5
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = deletePhone
            L0_3()
            currentAnimLib = nil
            currentAnim = nil
        end
        L1_2(L2_2, L3_2)
    end
    cb("ok")
end
L9_1(L10_1, L11_1)
function L9_1()
    local L0_2, L1_2, L2_2
    L0_2 = isOpen
    if L0_2 then
        L0_2 = TriggerEvent
        L1_2 = "high_phone:closePhone"
        L0_2(L1_2)
        L0_2 = Citizen
        L0_2 = L0_2.SetTimeout
        L1_2 = 200
        function L2_2()
            local L0_3, L1_3
            isOpen = false
        end
        L0_2(L1_2, L2_2)
        L0_2 = SetNuiFocus
        L1_2 = false
        L2_2 = false
        L0_2(L1_2, L2_2)
        L0_2 = SetNuiFocusKeepInput
        L1_2 = false
        L0_2(L1_2)
        L0_2 = SendNUIMessage
        L1_2 = {}
        L1_2.action = "close"
        L0_2(L1_2)
        L0_2 = L0_1
        if L0_2 then
            L0_2 = ClearTimecycleModifier
            L0_2()
            L0_2 = DestroyMobilePhone
            L0_2()
            L0_2 = CellCamActivate
            L1_2 = false
            L2_2 = false
            L0_2(L1_2, L2_2)
            L0_2 = false
            L0_1 = L0_2
        end
        L0_2 = DoPhoneAnimation
        L1_2 = "cellphone_text_out"
        L0_2(L1_2)
        L0_2 = SetTimeout
        L1_2 = 400
        function L2_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3
            L0_3 = StopAnimTask
            L1_3 = PlayerPedId
            L1_3 = L1_3()
            L2_3 = currentAnimLib
            L3_3 = currentAnim
            L4_3 = 2.5
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = deletePhone
            L0_3()
            currentAnimLib = nil
            currentAnim = nil
        end
        L0_2(L1_2, L2_2)
    end
end
forceClosePhone = L9_1
function L9_1(A0_2)
    local L1_2, L2_2, L3_2

    Config.FrameworkFunctions.triggerCallback("high_phone:isPlayerDead", function(data)
        if not data.isDead and not data.lastStand then
            if not A0_2 then
                L1_2 = Config
                L1_2 = L1_2.AllowUsageInWater
                if not L1_2 then
                    L1_2 = IsPedSwimming
                    L2_2 = PlayerPedId
                    L2_2, L3_2 = L2_2()
                    L1_2 = L1_2(L2_2, L3_2)
                    if L1_2 then
                        return
                    end
                end
            end
            L1_2 = Config
            L1_2 = L1_2.AllowInPauseMenu
            if not L1_2 then
                L1_2 = IsPauseMenuActive
                L1_2 = L1_2()
                if L1_2 then
                    return
                end
            end
            L1_2 = IsEntityDead
            L2_2 = PlayerPedId
            L2_2, L3_2 = L2_2()
            L1_2 = L1_2(L2_2, L3_2)
            if L1_2 then
                return
            end
            L1_2 = Config
            L1_2 = L1_2.CanOpen
            if L1_2 then
                L1_2 = Config
                L1_2 = L1_2.CanOpen
                L1_2 = L1_2()
                if L1_2 then
                    goto lbl_43
                end
            end
            L1_2 = Config
            L1_2 = L1_2.CanOpen
            ::lbl_43::
            if not L1_2 then
                L1_2 = Config
                L1_2 = L1_2.FrameworkFunctions
                L1_2 = L1_2.triggerCallback
                L2_2 = "high_phone:hasPhone"
                function L3_2(A0_3)
                    local L1_3, L2_3, L3_3, L4_3
                    L4_1 = A0_3
                    L1_3 = L4_1
                    if L1_3 then
                        isOpen = true
                        L1_3 = SetCurrentPedWeapon
                        L2_3 = PlayerPedId
                        L2_3 = L2_3()
                        L3_3 = GetHashKey
                        L4_3 = "weapon_unarmed"
                        L3_3 = L3_3(L4_3)
                        L4_3 = true
                        L1_3(L2_3, L3_3, L4_3)
                        L1_3 = SetNuiFocus
                        L2_3 = true
                        L3_3 = true
                        L1_3(L2_3, L3_3)
                        L1_3 = SetNuiFocusKeepInput
                        L2_3 = true
                        L1_3(L2_3)
                        L1_3 = SendNUIMessage
                        L2_3 = {}
                        L2_3.action = "open"
                        L1_3(L2_3)
                        L1_3 = onCall
                        if not L1_3 then
                            L1_3 = DoPhoneAnimation
                            L2_3 = "cellphone_text_in"
                            L1_3(L2_3)
                            L1_3 = SetTimeout
                            L2_3 = 250
                            function L3_3()
                                local L0_4, L1_4
                                L0_4 = newPhoneProp
                                L0_4()
                            end
                            L1_3(L2_3, L3_3)
                        end
                    end
                end
                L1_2(L2_2, L3_2)
            end
        end
    end)
end
OpenPhone = L9_1

L9_1 = RegisterNetEvent
L10_1 = "high_phone:openPhone"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "high_phone:openPhone"
function L11_1(A0_2)
    local L1_2, L2_2
    L1_2 = OpenPhone
    L2_2 = A0_2
    L1_2(L2_2)
end
L9_1(L10_1, L11_1)

L9_1 = RegisterNetEvent
L10_1 = "high_phone:receivedAirdrop"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "high_phone:receivedAirdrop"
function L11_1(A0_2, A1_2, A2_2, A3_2)
    local L4_2, L5_2
    L4_2 = SendNUIMessage
    L5_2 = {}
    L5_2.action = "newAirdrop"
    L5_2.type = A0_2
    L5_2.senderName = A1_2
    L5_2.senderId = A2_2
    L5_2.data = A3_2
    L4_2(L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "high_phone:sendNotification"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "high_phone:sendNotification"
function L11_1(A0_2, A1_2, A2_2)
    local L3_2, L4_2
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "sendNotification"
    L4_2.app = A0_2
    L4_2.content = A1_2
    L4_2.length = A2_2
    L3_2(L4_2)
end
L9_1(L10_1, L11_1)

L9_1 = RegisterCommand
L10_1 = "openphone"
function L11_1()
    local L0_2, L1_2
    L0_2 = isOpen
    if not L0_2 then
        L0_2 = IsNuiFocused
        L0_2 = L0_2()
        if not L0_2 then
            L0_2 = OpenPhone
            L0_2()
        end
    else
        L0_2 = IsNuiFocusKeepingInput
        L0_2 = L0_2()
        if 1 == L0_2 then
            L0_2 = forceClosePhone
            L0_2()
        end
    end
end
L12_1 = false
L9_1(L10_1, L11_1, L12_1)

L9_1 = Citizen
L9_1 = L9_1.CreateThread
function L10_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
    L0_2 = Config
    L0_2 = L0_2.EnableKeyMapping
    if L0_2 then
        L0_2 = RegisterKeyMapping
        L1_2 = "openphone"
        L2_2 = Config
        L2_2 = L2_2.Languages
        L3_2 = Config
        L3_2 = L3_2.Language
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.open_phone
        L3_2 = "keyboard"
        L4_2 = Config
        L4_2 = L4_2.DefaultKeyMap
        L0_2(L1_2, L2_2, L3_2, L4_2)
    end
    L0_2 = Config
    L0_2 = L0_2.DisableControlAction
    L1_2 = Config
    L1_2 = L1_2.OpenKey
    L2_2 = Config
    L2_2 = L2_2.EnableKeyMapping
    if not L2_2 then
        while true do
            L2_2 = Citizen
            L2_2 = L2_2.Wait
            L3_2 = 0
            L2_2(L3_2)
            if L0_2 then
                L2_2 = DisableControlAction
                L3_2 = 0
                L4_2 = L1_2
                L5_2 = true
                L2_2(L3_2, L4_2, L5_2)
            end
            L2_2 = IsDisabledControlJustPressed
            L3_2 = 0
            L4_2 = L1_2
            L2_2 = L2_2(L3_2, L4_2)
            if L2_2 then
                L2_2 = GetLastInputMethod
                L3_2 = 0
                L2_2 = L2_2(L3_2)
                if L2_2 then
                    L2_2 = isOpen
                    if not L2_2 then
                        L2_2 = TriggerEvent
                        L3_2 = "high_phone:openPhone"
                        L2_2(L3_2)
                    end
                end
            else
                L2_2 = IsDisabledControlJustPressed
                L3_2 = 0
                L4_2 = L1_2
                L2_2 = L2_2(L3_2, L4_2)
                if L2_2 then
                    L2_2 = GetLastInputMethod
                    L3_2 = 0
                    L2_2 = L2_2(L3_2)
                    if L2_2 then
                        L2_2 = isOpen
                        if L2_2 then
                            L2_2 = forceClosePhone
                            L2_2()
                        end
                    end
                end
            end
        end
    end
end
L9_1(L10_1)
L9_1 = Citizen
L9_1 = L9_1.CreateThread
function L10_1()
    local L0_2, L1_2
    while true do
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 500
        L0_2(L1_2)
        L0_2 = IsEntityDead
        L1_2 = PlayerPedId
        L1_2 = L1_2()
        L0_2 = L0_2(L1_2)
        if not L0_2 then
            L0_2 = Config
            L0_2 = L0_2.AllowUsageInWater
            if not L0_2 then
                L0_2 = IsPedSwimming
                L1_2 = PlayerPedId
                L1_2 = L1_2()
                L0_2 = L0_2(L1_2)
                if L0_2 then
                    goto lbl_24
                end
            end
            L0_2 = L4_1
            if L0_2 then
                goto lbl_26
            end
        end
        ::lbl_24::
        L0_2 = forceClosePhone
        L0_2()
        ::lbl_26::
    end
end
L9_1(L10_1)
L9_1 = exports
L10_1 = "getPhoneNumber"
function L11_1()
    local L0_2, L1_2
    L0_2 = L6_1
    return L0_2
end
L9_1(L10_1, L11_1)
L9_1 = exports
L10_1 = "openPhone"
function L11_1(A0_2)
    local L1_2, L2_2
    L1_2 = OpenPhone
    L2_2 = A0_2
    L1_2(L2_2)
end
L9_1(L10_1, L11_1)
L9_1 = exports
L10_1 = "closePhone"
function L11_1()
    local L0_2, L1_2
    L0_2 = forceClosePhone
    L0_2()
end
L9_1(L10_1, L11_1)
L9_1 = exports
L10_1 = "isOpen"
function L11_1()
    local L0_2, L1_2
    L0_2 = isOpen
    return L0_2
end
L9_1(L10_1, L11_1)
L9_1 = exports
L10_1 = "isOnCall"
function L11_1()
    local L0_2, L1_2
    L0_2 = onCall
    return L0_2
end
L9_1(L10_1, L11_1)
L9_1 = exports
L10_1 = "isCameraEnabled"
function L11_1()
    local L0_2, L1_2
    L0_2 = L0_1
    return L0_2
end
L9_1(L10_1, L11_1)
L9_1 = exports
L10_1 = "sendNotification"
function L11_1(A0_2, A1_2, A2_2)
    local L3_2, L4_2
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "sendNotification"
    L4_2.app = A0_2
    L4_2.content = A1_2
    L4_2.length = A2_2
    L3_2(L4_2)
end
L9_1(L10_1, L11_1)

exports("isPhoneOpen", function()
    return isOpen
end)