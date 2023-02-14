local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateDarkchat"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:updateDarkchat"
function L2_1()
  local L0_2, L1_2
  L0_2 = TriggerEvent
  L1_2 = "high_phone:updateDarkchatData"
  L0_2(L1_2)
  L0_2 = TriggerEvent
  L1_2 = "high_phone:updateDarkGroups"
  L0_2(L1_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateDarkchatData"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:updateDarkchatData"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.FrameworkFunctions
  L0_2 = L0_2.triggerCallback
  L1_2 = "high_phone:getDarkchatData"
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "updateDarkchatData"
    L2_3.data = A0_3
    L1_3(L2_3)
  end
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateDarkGroups"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:updateDarkGroups"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.FrameworkFunctions
  L1_2 = L1_2.triggerCallback
  L2_2 = "high_phone:getDarkGroups"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L1_3 = pairs
    L2_3 = A0_3.groups
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = 0
      L8_3 = GetResourceKvpString
      L9_3 = "DARKGROUP-"
      L10_3 = L6_3.id
      L9_3 = L9_3 .. L10_3
      L8_3 = L8_3(L9_3)
      if L8_3 then
        L9_3 = json
        L9_3 = L9_3.decode
        L10_3 = L8_3
        L9_3 = L9_3(L10_3)
        L9_3 = L9_3.lastOpened
        if nil ~= L9_3 then
          L9_3 = json
          L9_3 = L9_3.decode
          L10_3 = L8_3
          L9_3 = L9_3(L10_3)
          L9_3 = L9_3.lastOpened
          if L9_3 then
            goto lbl_28
          end
        end
        L9_3 = A0_3.time
        ::lbl_28::
        L10_3 = json
        L10_3 = L10_3.decode
        L11_3 = L8_3
        L10_3 = L10_3(L11_3)
        L10_3 = L10_3.muted
        if nil ~= L10_3 then
          L10_3 = json
          L10_3 = L10_3.decode
          L11_3 = L8_3
          L10_3 = L10_3(L11_3)
          L10_3 = L10_3.muted
          if L10_3 then
            goto lbl_43
          end
        end
        L10_3 = false
        ::lbl_43::
        L6_3.muted = L10_3
        L10_3 = pairs
        L11_3 = L6_3.messages
        L10_3, L11_3, L12_3, L13_3 = L10_3(L11_3)
        for L14_3, L15_3 in L10_3, L11_3, L12_3, L13_3 do
          L16_3 = L15_3.time
          if L9_3 < L16_3 then
            L16_3 = A0_3.identifier
            L17_3 = L15_3.from
            if L16_3 ~= L17_3 then
              L7_3 = L7_3 + 1
            end
          end
        end
      else
        L9_3 = SetResourceKvp
        L10_3 = "DARKGROUP-"
        L11_3 = L6_3.id
        L10_3 = L10_3 .. L11_3
        L11_3 = json
        L11_3 = L11_3.encode
        L12_3 = {}
        L13_3 = A0_3.time
        L12_3.lastOpened = L13_3
        L12_3.muted = false
        L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L11_3(L12_3)
        L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
        L6_3.muted = false
        L9_3 = pairs
        L10_3 = L6_3.messages
        L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3)
        for L13_3, L14_3 in L9_3, L10_3, L11_3, L12_3 do
          L15_3 = L14_3.time
          L16_3 = A0_3.time
          if L15_3 > L16_3 then
            L15_3 = A0_3.identifier
            L16_3 = L14_3.from
            if L15_3 ~= L16_3 then
              L7_3 = L7_3 + 1
            end
          end
        end
      end
      L6_3.unread = L7_3
    end
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "updateDarkGroups"
    L3_3 = json
    L3_3 = L3_3.encode
    L4_3 = A0_3.groups
    L3_3 = L3_3(L4_3)
    L2_3.groups = L3_3
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateDarkGroup"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:updateDarkGroup"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Config
  L1_2 = L1_2.FrameworkFunctions
  L1_2 = L1_2.triggerCallback
  L2_2 = "high_phone:getDarkGroup"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = 0
    L2_3 = GetResourceKvpString
    L3_3 = "DARKGROUP-"
    L4_3 = A0_2
    L3_3 = L3_3 .. L4_3
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L3_3 = json
      L3_3 = L3_3.decode
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L3_3 = L3_3.lastOpened
      if nil ~= L3_3 then
        L3_3 = json
        L3_3 = L3_3.decode
        L4_3 = L2_3
        L3_3 = L3_3(L4_3)
        L3_3 = L3_3.lastOpened
        if L3_3 then
          goto lbl_24
        end
      end
      L3_3 = A0_3.time
      ::lbl_24::
      L4_3 = A0_3.group
      L5_3 = json
      L5_3 = L5_3.decode
      L6_3 = L2_3
      L5_3 = L5_3(L6_3)
      L5_3 = L5_3.muted
      if nil ~= L5_3 then
        L5_3 = json
        L5_3 = L5_3.decode
        L6_3 = L2_3
        L5_3 = L5_3(L6_3)
        L5_3 = L5_3.muted
        if L5_3 then
          goto lbl_40
        end
      end
      L5_3 = false
      ::lbl_40::
      L4_3.muted = L5_3
      L4_3 = pairs
      L5_3 = A0_3.group
      L5_3 = L5_3.messages
      L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
      for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
        L10_3 = L9_3.time
        if L3_3 < L10_3 then
          L10_3 = A0_3.identifier
          L11_3 = L9_3.from
          if L10_3 ~= L11_3 then
            L1_3 = L1_3 + 1
          end
        end
      end
    else
      L3_3 = SetResourceKvp
      L4_3 = "DARKGROUP-"
      L5_3 = A0_2
      L4_3 = L4_3 .. L5_3
      L5_3 = json
      L5_3 = L5_3.encode
      L6_3 = {}
      L7_3 = A0_3.time
      L6_3.lastOpened = L7_3
      L6_3.muted = false
      L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L5_3(L6_3)
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L3_3 = A0_3.group
      L3_3.muted = false
      L3_3 = pairs
      L4_3 = A0_3.group
      L4_3 = L4_3.messages
      L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
      for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
        L9_3 = L8_3.time
        L10_3 = A0_3.time
        if L9_3 > L10_3 then
          L9_3 = A0_3.identifier
          L10_3 = L8_3.from
          if L9_3 ~= L10_3 then
            L1_3 = L1_3 + 1
          end
        end
      end
    end
    L3_3 = A0_3.group
    L3_3.unread = L1_3
    L3_3 = SendNUIMessage
    L4_3 = {}
    L4_3.action = "updateDarkGroup"
    L5_3 = json
    L5_3 = L5_3.encode
    L6_3 = A0_3.group
    L5_3 = L5_3(L6_3)
    L4_3.data = L5_3
    L3_3(L4_3)
  end
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "sendDarkMessage"
L2_1 = Config
L2_1 = L2_1.CustomCallbacks
L2_1 = L2_1.sendDarkMessage
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "deleteDarkMessage"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:deleteDarkMessage"
  L3_2 = A0_2.time
  L4_2 = A0_2.id
  L1_2(L2_2, L3_2, L4_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "createDarkGroup"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.triggerCallback
  L3_2 = "high_phone:createDarkGroup"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.name
  L6_2 = A0_2.photo
  L7_2 = A0_2.maxmembers
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "saveDarkGroup"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = TriggerServerEvent
  L3_2 = "high_phone:saveDarkGroup"
  L4_2 = A0_2.id
  L5_2 = A0_2.name
  L6_2 = A0_2.photo
  L7_2 = A0_2.maxmembers
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  A1_2("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "kickDarkMember"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "high_phone:kickDarkMember"
  L4_2 = A0_2.id
  L5_2 = A0_2.member
  L2_2(L3_2, L4_2, L5_2)
  A1_2("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "banDarkMember"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "high_phone:banDarkMember"
  L4_2 = A0_2.id
  L5_2 = A0_2.member
  L2_2(L3_2, L4_2, L5_2)
  A1_2("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:deleteDarkGroup"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:deleteDarkGroup"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "deleteDarkGroup"
  L2_2.id = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "joinDarkGroup"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.triggerCallback
  L3_2 = "high_phone:joinDarkGroup"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.invitecode
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "deleteDarkGroup"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:deleteDarkGroup"
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
  L1_2 = DeleteResourceKvp
  L2_2 = "DARKGROUP-"
  L3_2 = A0_2.id
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "leaveDarkGroup"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:leaveDarkGroup"
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
  L1_2 = DeleteResourceKvp
  L2_2 = "DARKGROUP-"
  L3_2 = A0_2.id
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "readDarkMessages"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetResourceKvpString
  L2_2 = "DARKGROUP-"
  L3_2 = A0_2.id
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = json
    L2_2 = L2_2.decode
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = SetResourceKvp
    L4_2 = "DARKGROUP-"
    L5_2 = A0_2.id
    L4_2 = L4_2 .. L5_2
    L5_2 = json
    L5_2 = L5_2.encode
    L6_2 = {}
    L7_2 = A0_2.time
    L6_2.lastOpened = L7_2
    L7_2 = L2_2.muted
    L6_2.muted = L7_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = SetResourceKvp
    L3_2 = "DARKGROUP-"
    L4_2 = A0_2.id
    L3_2 = L3_2 .. L4_2
    L4_2 = json
    L4_2 = L4_2.encode
    L5_2 = {}
    L6_2 = A0_2.time
    L5_2.lastOpened = L6_2
    L5_2.muted = false
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "muteDarkGroup"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetResourceKvpString
  L2_2 = "DARKGROUP-"
  L3_2 = A0_2.id
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = json
    L2_2 = L2_2.decode
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = SetResourceKvp
    L4_2 = "DARKGROUP-"
    L5_2 = A0_2.id
    L4_2 = L4_2 .. L5_2
    L5_2 = json
    L5_2 = L5_2.encode
    L6_2 = {}
    L7_2 = L2_2.time
    L6_2.lastOpened = L7_2
    L7_2 = A0_2.muted
    L6_2.muted = L7_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = SetResourceKvp
    L3_2 = "DARKGROUP-"
    L4_2 = A0_2.id
    L3_2 = L3_2 .. L4_2
    L4_2 = json
    L4_2 = L4_2.encode
    L5_2 = {}
    L5_2.lastOpened = 0
    L6_2 = A0_2.muted
    L5_2.muted = L6_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "saveDarkchatData"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:saveDarkchatData"
  L3_2 = A0_2.nickname
  L4_2 = A0_2.photo
  L1_2(L2_2, L3_2, L4_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:receivedDarkGroupMessage"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:receivedDarkGroupMessage"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.action = "newDarkGroupMessage"
  L5_2.id = A0_2
  L5_2.from = A1_2
  L5_2.attachments = A3_2
  L5_2.content = A2_2
  L4_2(L5_2)
end
L0_1(L1_1, L2_1)
