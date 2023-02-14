local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "high_phone:addAdvertisment"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:addAdvertisment"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "newAd"
  L2_2.ad = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:deleteAd"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:deleteAd"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "deleteAd"
  L2_2.adId = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "postAd"
L2_1 = Config
L2_1 = L2_1.CustomCallbacks
L2_1 = L2_1.postAd
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "editAd"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerServerEvent
  L3_2 = "high_phone:editAd"
  L4_2 = A0_2.id
  L5_2 = A0_2.title
  L6_2 = A0_2.content
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "deleteAd"
L2_1 = Config
L2_1 = L2_1.CustomCallbacks
L2_1 = L2_1.deleteAd
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateAds"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:updateAds"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = playerLoaded
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.FrameworkFunctions
    L0_2 = L0_2.triggerCallback
    L1_2 = "high_phone:getAds"
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.action = "updateAds"
      L3_3 = json
      L3_3 = L3_3.encode
      L4_3 = A0_3
      L3_3 = L3_3(L4_3)
      L2_3.ads = L3_3
      L1_3(L2_3)
    end
    L0_2(L1_2, L2_2)
  end
end
L0_1(L1_1, L2_1)
