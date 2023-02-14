local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateChats"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:updateChats"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.FrameworkFunctions
  L0_2 = L0_2.triggerCallback
  L1_2 = "high_phone:getChats"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
    L1_3 = pairs
    L2_3 = A0_3.chats
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = {}
      L8_3 = 0
      L9_3 = pairs
      L10_3 = A0_3.messages
      L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3)
      for L13_3, L14_3 in L9_3, L10_3, L11_3, L12_3 do
        L15_3 = L14_3.from
        L16_3 = L6_3.number
        if L15_3 ~= L16_3 then
          L15_3 = L14_3.to
          L16_3 = L6_3.number
          if L15_3 ~= L16_3 then
            goto lbl_68
          end
        end
        L15_3 = pairs
        L16_3 = Config
        L16_3 = L16_3.JobContacts
        L15_3, L16_3, L17_3, L18_3 = L15_3(L16_3)
        for L19_3, L20_3 in L15_3, L16_3, L17_3, L18_3 do
          L21_3 = L14_3.to
          L22_3 = L20_3.number
          if L21_3 == L22_3 then
            L21_3 = A0_3.playerJob
            if L21_3 == L19_3 then
              L21_3 = L14_3.from
              L22_3 = A0_3.playerNumber
              if L21_3 ~= L22_3 then
                L14_3.job = true
                L21_3 = L14_3.from
                L22_3 = ": "
                L23_3 = L14_3.message
                L21_3 = L21_3 .. L22_3 .. L23_3
                L14_3.message = L21_3
                L21_3 = L20_3.number
                L14_3.from = L21_3
                L21_3 = A0_3.playerNumber
                L14_3.to = L21_3
                break
              end
            end
          end
        end
        L15_3 = L14_3.time
        L16_3 = L6_3.lastOpened
        if L15_3 > L16_3 then
          L15_3 = A0_3.playerNumber
          L16_3 = L14_3.from
          if L15_3 ~= L16_3 then
            L15_3 = L14_3.job
            if not L15_3 then
              L8_3 = L8_3 + 1
            end
          end
        end
        L15_3 = table
        L15_3 = L15_3.insert
        L16_3 = L7_3
        L17_3 = L14_3
        L15_3(L16_3, L17_3)
        ::lbl_68::
      end
      L9_3 = #L7_3
      if L9_3 > 1 then
        L9_3 = table
        L9_3 = L9_3.sort
        L10_3 = L7_3
        function L11_3(A0_4, A1_4)
          local L2_4, L3_4
          L2_4 = A0_4.time
          L3_4 = A1_4.time
          L2_4 = L2_4 < L3_4
          return L2_4
        end
        L9_3(L10_3, L11_3)
      end
      L6_3.messages = L7_3
      L6_3.unread = L8_3
    end
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "updateChats"
    L3_3 = json
    L3_3 = L3_3.encode
    L4_3 = A0_3.chats
    L3_3 = L3_3(L4_3)
    L2_3.chats = L3_3
    L1_3(L2_3)
  end
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateGroups"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:updateGroups"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.FrameworkFunctions
  L0_2 = L0_2.triggerCallback
  L1_2 = "high_phone:getGroups"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L1_3 = pairs
    L2_3 = A0_3.groups
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = 0
      L8_3 = GetResourceKvpString
      L9_3 = "GROUP-"
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
            L16_3 = A0_3.playerNumber
            L17_3 = L15_3.from
            if L16_3 ~= L17_3 then
              L7_3 = L7_3 + 1
            end
          end
        end
      else
        L9_3 = SetResourceKvp
        L10_3 = "GROUP-"
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
            L15_3 = A0_3.playerNumber
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
    L2_3.action = "updateGroups"
    L3_3 = json
    L3_3 = L3_3.encode
    L4_3 = A0_3.groups
    L3_3 = L3_3(L4_3)
    L2_3.groups = L3_3
    L1_3(L2_3)
  end
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateGroup"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:updateGroup"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Config
  L1_2 = L1_2.FrameworkFunctions
  L1_2 = L1_2.triggerCallback
  L2_2 = "high_phone:getGroup"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = 0
    L2_3 = GetResourceKvpString
    L3_3 = "GROUP-"
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
          L10_3 = A0_3.playerNumber
          L11_3 = L9_3.from
          if L10_3 ~= L11_3 then
            L1_3 = L1_3 + 1
          end
        end
      end
    else
      L3_3 = SetResourceKvp
      L4_3 = "GROUP-"
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
          L9_3 = A0_3.playerNumber
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
    L4_3.action = "updateGroup"
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
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateChat"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:updateChat"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Config
  L1_2 = L1_2.FrameworkFunctions
  L1_2 = L1_2.triggerCallback
  L2_2 = "high_phone:getChat"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L1_3 = {}
    L2_3 = 0
    L3_3 = pairs
    L4_3 = A0_3.chat
    L4_3 = L4_3.messages
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L9_3 = pairs
      L10_3 = Config
      L10_3 = L10_3.JobContacts
      L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3)
      for L13_3, L14_3 in L9_3, L10_3, L11_3, L12_3 do
        L15_3 = L8_3.to
        L16_3 = L14_3.number
        if L15_3 == L16_3 then
          L15_3 = A0_3.playerJob
          if L15_3 == L13_3 then
            L15_3 = L8_3.from
            L16_3 = A0_3.playerNumber
            if L15_3 ~= L16_3 then
              L8_3.job = true
              L15_3 = L8_3.from
              L16_3 = ": "
              L17_3 = L8_3.message
              L15_3 = L15_3 .. L16_3 .. L17_3
              L8_3.message = L15_3
              L15_3 = L14_3.number
              L8_3.from = L15_3
              L15_3 = A0_3.playerNumber
              L8_3.to = L15_3
              break
            end
          end
        end
      end
      L9_3 = L8_3.time
      L10_3 = A0_3.chat
      L10_3 = L10_3.lastOpened
      if L9_3 > L10_3 then
        L9_3 = A0_3.playerNumber
        L10_3 = L8_3.from
        if L9_3 ~= L10_3 then
          L9_3 = L8_3.job
          if not L9_3 then
            L2_3 = L2_3 + 1
          end
        end
      end
      L9_3 = table
      L9_3 = L9_3.insert
      L10_3 = L1_3
      L11_3 = L8_3
      L9_3(L10_3, L11_3)
    end
    L3_3 = #L1_3
    if L3_3 > 1 then
      L3_3 = table
      L3_3 = L3_3.sort
      L4_3 = L1_3
      function L5_3(A0_4, A1_4)
        local L2_4, L3_4
        L2_4 = A0_4.time
        L3_4 = A1_4.time
        L2_4 = L2_4 < L3_4
        return L2_4
      end
      L3_3(L4_3, L5_3)
    end
    L3_3 = A0_3.chat
    L3_3.messages = L1_3
    L3_3 = A0_3.chat
    L3_3.unread = L2_3
    L3_3 = SendNUIMessage
    L4_3 = {}
    L4_3.action = "updateChat"
    L5_3 = json
    L5_3 = L5_3.encode
    L6_3 = A0_3.chat
    L5_3 = L5_3(L6_3)
    L4_3.data = L5_3
    L3_3(L4_3)
  end
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "readMessages"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:readMessages"
  L3_2 = A0_2.number
  L1_2(L2_2, L3_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "readGroupMessages"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetResourceKvpString
  L2_2 = "GROUP-"
  L3_2 = A0_2.id
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = json
    L2_2 = L2_2.decode
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = SetResourceKvp
    L4_2 = "GROUP-"
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
    L3_2 = "GROUP-"
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
L1_1 = "muteChat"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:muteChat"
  L3_2 = A0_2.id
  L4_2 = A0_2.muted
  L1_2(L2_2, L3_2, L4_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "updateChats"
function L2_1(A0_2, cb)
  local L1_2, L2_2
  L1_2 = TriggerEvent
  L2_2 = "high_phone:updateChats"
  L1_2(L2_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "createGroup"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.triggerCallback
  L3_2 = "high_phone:createGroup"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.name
  L6_2 = A0_2.photo
  L7_2 = A0_2.members
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "muteGroup"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetResourceKvpString
  L2_2 = "GROUP-"
  L3_2 = A0_2.id
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = json
    L2_2 = L2_2.decode
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = SetResourceKvp
    L4_2 = "GROUP-"
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
    L3_2 = "GROUP-"
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
L1_1 = "saveGroup"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = TriggerServerEvent
  L3_2 = "high_phone:saveGroup"
  L4_2 = A0_2.id
  L5_2 = A0_2.name
  L6_2 = A0_2.photo
  L7_2 = A0_2.members
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  A1_2("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:addGroup"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:addGroup"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = SetResourceKvp
  L6_2 = "GROUP-"
  L7_2 = A0_2
  L6_2 = L6_2 .. L7_2
  L7_2 = json
  L7_2 = L7_2.encode
  L8_2 = {}
  L8_2.lastOpened = A4_2
  L8_2.muted = false
  L7_2, L8_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SendNUIMessage
  L6_2 = {}
  L6_2.action = "addGroup"
  L6_2.id = A0_2
  L6_2.name = A1_2
  L6_2.photo = A2_2
  L6_2.members = A3_2
  L5_2(L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:deleteGroup"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:deleteGroup"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "deleteGroup"
  L2_2.id = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "leaveGroup"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:leaveGroup"
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
  L1_2 = DeleteResourceKvp
  L2_2 = "GROUP-"
  L3_2 = A0_2.id
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "deleteGroup"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:deleteGroup"
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
  L1_2 = DeleteResourceKvp
  L2_2 = "GROUP-"
  L3_2 = A0_2.id
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "createChat"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.triggerCallback
  L3_2 = "high_phone:createChat"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.name
  L6_2 = A0_2.number
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "deleteChat"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:deleteChat"
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "sendMessage"
L2_1 = Config
L2_1 = L2_1.CustomCallbacks
L2_1 = L2_1.sendMessage
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "deleteMessage"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:deleteMessage"
  L3_2 = A0_2.time
  L4_2 = A0_2.number
  L1_2(L2_2, L3_2, L4_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "setWaypoint"
function L2_1(A0_2, cb)
  local L1_2, L2_2, L3_2
  L1_2 = SetNewWaypoint
  L2_2 = A0_2.x
  L2_2 = L2_2 + 0.0
  L3_2 = A0_2.y
  L3_2 = L3_2 + 0.0
  L1_2(L2_2, L3_2)
  cb("ok")
end
L0_1(L1_1, L2_1)
RegisterNUICallback("getCoords", function(_ARG_0_, cb)
  local coords = GetEntityCoords(PlayerPedId())

  cb(json.encode({
    x = coords.x,
    y = coords.y
  }))
end)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:receivedMessage"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:receivedMessage"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.action = "newMessage"
  L5_2.from = A0_2
  L5_2.attachments = A2_2
  L5_2.content = A1_2
  L5_2.job = A3_2
  L4_2(L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:receivedGroupMessage"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:receivedGroupMessage"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.action = "newGroupMessage"
  L5_2.id = A0_2
  L5_2.from = A1_2
  L5_2.attachments = A3_2
  L5_2.content = A2_2
  L4_2(L5_2)
end
L0_1(L1_1, L2_1)
