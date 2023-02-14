local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateMail"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:updateMail"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.FrameworkFunctions
  L0_2 = L0_2.triggerCallback
  L1_2 = "high_phone:getMail"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = pairs
    L2_3 = A0_3.mail
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = json
      L7_3 = L7_3.decode
      L8_3 = L6_3.mail
      L7_3 = L7_3(L8_3)
      L6_3.mail = L7_3
    end
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "updateMail"
    L3_3 = A0_3.mail
    L2_3.mail = L3_3
    L3_3 = A0_3.mailData
    L2_3.mailData = L3_3
    L1_3(L2_3)
  end
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "mailLogin"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.triggerCallback
  L3_2 = "high_phone:mailLogin"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.address
  L6_2 = A0_2.password
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "mailRegister"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.triggerCallback
  L3_2 = "high_phone:mailRegister"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.name
  L6_2 = A0_2.address
  L7_2 = A0_2.password
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "mailLogout"
function L2_1(A0_2, cb)
  local L1_2, L2_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:mailLogout"
  L1_2(L2_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "saveMailData"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:saveMailData"
  L3_2 = A0_2.name
  L4_2 = A0_2.photo
  L1_2(L2_2, L3_2, L4_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "sendMail"
L2_1 = Config
L2_1 = L2_1.CustomCallbacks
L2_1 = L2_1.sendMail
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "readMail"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:readMail"
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "muteMail"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:muteMail"
  L3_2 = A0_2.id
  L4_2 = A0_2.muted
  L1_2(L2_2, L3_2, L4_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "starMail"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:starMail"
  L3_2 = A0_2.id
  L4_2 = A0_2.starred
  L1_2(L2_2, L3_2, L4_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "deleteMail"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:deleteMail"
  L3_2 = A0_2.id
  L4_2 = A0_2.forever
  L1_2(L2_2, L3_2, L4_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "executeMailButton"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:executeMailButton"
  L3_2 = A0_2.conversation
  L4_2 = A0_2.mailTime
  L5_2 = A0_2.id
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = TriggerEvent
  L2_2 = A0_2.event
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = A0_2.args
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:receivedMail"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:receivedMail"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "newMail"
  L2_2.data = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
