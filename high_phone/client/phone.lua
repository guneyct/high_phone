local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = nil
L1_1 = nil
L2_1 = RegisterNetEvent
L3_1 = "high_phone:updateCalls"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "high_phone:updateCalls"
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.FrameworkFunctions
  L0_2 = L0_2.triggerCallback
  L1_2 = "high_phone:getCalls"
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "updateCalls"
    L2_3.calls = A0_3
    L1_3(L2_3)
  end
  L0_2(L1_2, L2_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "updateCalls"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = TriggerEvent
  L3_2 = "high_phone:updateCalls"
  L2_2(L3_2)
  A1_2("ok")
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "clearCalls"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "high_phone:clearCalls"
  L4_2 = A0_2.number
  L2_2(L3_2, L4_2)
  A1_2("ok")
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "deleteCall"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "high_phone:deleteCall"
  L4_2 = A0_2.time
  L2_2(L3_2, L4_2)
  A1_2("ok")
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "clearAllCalls"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = TriggerServerEvent
  L3_2 = "high_phone:clearAllCalls"
  L2_2(L3_2)
  A1_2("ok")
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "call"
L4_1 = Config
L4_1 = L4_1.CustomCallbacks
L4_1 = L4_1.callNumber
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2)
  local L1_2, L2_2, L3_2
  L1_2 = DoPhoneAnimation
  L2_2 = "cellphone_text_to_call"
  L1_2(L2_2)
  onCall = true
  L1_2 = Config
  L1_2 = L1_2.Voice
  if "mumble-voip" == L1_2 then
    L1_2 = exports
    L1_2 = L1_2["mumble-voip"]
    L2_2 = L1_2
    L1_2 = L1_2.SetCallChannel
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = Config
    L1_2 = L1_2.Voice
    if "tokovoip_script" == L1_2 then
      L0_1 = A0_2
      L1_2 = exports
      L1_2 = L1_2.tokovoip_script
      L2_2 = L1_2
      L1_2 = L1_2.addPlayerToRadio
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    else
      L1_2 = Config
      L1_2 = L1_2.Voice
      if "pma-voice" == L1_2 then
        L1_2 = exports
        L1_2 = L1_2["pma-voice"]
        L2_2 = L1_2
        L1_2 = L1_2.SetCallChannel
        L3_2 = A0_2
        L1_2(L2_2, L3_2)
      else
        L1_2 = NetworkSetVoiceChannel
        L2_2 = A0_2
        L1_2(L2_2)
        L1_2 = NetworkSetTalkerProximity
        L2_2 = 0.0
        L1_2(L2_2)
      end
    end
  end
  A1_2("ok")
end
addToCall = L2_1
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = onCall
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Voice
    if "mumble-voip" == L0_2 then
      L0_2 = exports
      L0_2 = L0_2["mumble-voip"]
      L1_2 = L0_2
      L0_2 = L0_2.SetCallChannel
      L2_2 = 0
      L0_2(L1_2, L2_2)
    else
      L0_2 = Config
      L0_2 = L0_2.Voice
      if "tokovoip_script" == L0_2 then
        L0_2 = L0_1
        if nil ~= L0_2 then
          L0_2 = exports
          L0_2 = L0_2.tokovoip_script
          L1_2 = L0_2
          L0_2 = L0_2.removePlayerFromRadio
          L2_2 = L0_1
          L0_2(L1_2, L2_2)
          L0_2 = nil
          L0_1 = L0_2
        end
      else
        L0_2 = Config
        L0_2 = L0_2.Voice
        if "pma-voice" == L0_2 then
          L0_2 = exports
          L0_2 = L0_2["pma-voice"]
          L1_2 = L0_2
          L0_2 = L0_2.SetCallChannel
          L2_2 = 0
          L0_2(L1_2, L2_2)
        else
          L0_2 = Citizen
          L0_2 = L0_2.InvokeNative
          L1_2 = -2290459716368080823
          L0_2(L1_2)
          L0_2 = NetworkSetTalkerProximity
          L1_2 = 2.5
          L0_2(L1_2)
        end
      end
    end
    onCall = false
    L0_2 = isOpen
    if L0_2 then
      L0_2 = DoPhoneAnimation
      L1_2 = "cellphone_call_to_text"
      L0_2(L1_2)
    else
      L0_2 = DoPhoneAnimation
      L1_2 = "cellphone_call_out"
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
end
removeFromCall = L2_1
L2_1 = RegisterNUICallback
L3_1 = "pickupCall"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = addToCall
  L3_2 = A0_2.id
  L2_2(L3_2)
  L2_2 = A0_2.job
  if not L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "high_phone:pickupCall"
    L4_2 = A0_2.number
    L2_2(L3_2, L4_2)
  else
    L2_2 = TriggerServerEvent
    L3_2 = "high_phone:pickupJobCall"
    L4_2 = A0_2.number
    L2_2(L3_2, L4_2)
  end
  A1_2("ok")
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "declineCall"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "high_phone:endCall"
  L4_2 = A0_2.number
  L2_2(L3_2, L4_2)
  A1_2("ok")
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "endCall"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "high_phone:endCall"
  L4_2 = A0_2.number
  L2_2(L3_2, L4_2)
  L2_2 = removeFromCall
  L2_2()
  A1_2("ok")
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "high_phone:incomingJobCall"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "high_phone:incomingJobCall"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "incomingJobCall"
  L4_2.id = A0_2
  L4_2.from = A1_2
  L4_2.anonymous = A2_2
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "high_phone:incomingCall"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "high_phone:incomingCall"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "incomingCall"
  L4_2.id = A0_2
  L4_2.from = A1_2
  L4_2.anonymous = A2_2
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "high_phone:changeCallStatus"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "high_phone:changeCallStatus"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "changeCallStatus"
  L3_2.status = A0_2
  L2_2(L3_2)
  if "oncall" == A0_2 then
    L2_2 = addToCall
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "high_phone:endCall"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "high_phone:endCall"
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "endCall"
  L2_2.number = A0_2
  L1_2(L2_2)
  L1_2 = removeFromCall
  L1_2()
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "high_phone:cancelJobCall"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "high_phone:cancelJobCall"
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "endCall"
  L2_2.number = A0_2
  L1_2(L2_2)
end
L2_1(L3_1, L4_1)
