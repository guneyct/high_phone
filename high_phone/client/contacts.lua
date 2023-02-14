local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateContacts"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:updateContacts"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.FrameworkFunctions
  L0_2 = L0_2.triggerCallback
  L1_2 = "high_phone:getContacts"
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "updateContacts"
    L2_3.contacts = A0_3
    L1_3(L2_3)
  end
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "updateContacts"
function L2_1(A0_2, cb)
  local L1_2, L2_2
  L1_2 = TriggerEvent
  L2_2 = "high_phone:updateContacts"
  L1_2(L2_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "shareContact"
function L2_1(A0_2, cb)
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
      L6_2 = "contact"
      L7_2 = json
      L7_2 = L7_2.encode
      L8_2 = A0_2
      L7_2, L8_2 = L7_2(L8_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:shareContactDetails"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:shareContactDetails"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.FrameworkFunctions
  L0_2 = L0_2.triggerCallback
  L1_2 = "high_phone:getMyData"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = json
    L1_3 = L1_3.decode
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = Config
    L2_3 = L2_3.FrameworkFunctions
    L2_3 = L2_3.getClosestPlayer
    L2_3, L3_3 = L2_3()
    if -1 ~= L2_3 then
      L4_3 = Config
      L4_3 = L4_3.AirdropDistance
      if L3_3 < L4_3 then
        L4_3 = TriggerServerEvent
        L5_3 = "high_phone:sendAirdrop"
        L6_3 = GetPlayerServerId
        L7_3 = L2_3
        L6_3 = L6_3(L7_3)
        L7_3 = "contact"
        L8_3 = json
        L8_3 = L8_3.encode
        L9_3 = {}
        L10_3 = L1_3.name
        L9_3.name = L10_3
        L10_3 = L1_3.number
        L9_3.number = L10_3
        L9_3.photo = ""
        L9_3.tag = ""
        L8_3, L9_3, L10_3 = L8_3(L9_3)
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      end
    end
  end
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "createContact"
L2_1 = Config
L2_1 = L2_1.CustomCallbacks
L2_1 = L2_1.createContact
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "editContact"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:editContact"
  L3_2 = A0_2.id
  L4_2 = A0_2.number
  L5_2 = A0_2.name
  L6_2 = A0_2.photo
  L7_2 = A0_2.tag
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "deleteContact"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:deleteContact"
  L3_2 = A0_2.id
  L4_2 = A0_2.number
  L1_2(L2_2, L3_2, L4_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
