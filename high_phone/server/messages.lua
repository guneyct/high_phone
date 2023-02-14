local L0_1, L1_1, L2_1
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:getChats"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.number
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.fetchAll
  L5_2 = "SELECT * FROM phone_chats WHERE `owner` = @owner"
  L6_2 = {}
  L7_2 = L2_2.identifier
  L6_2["@owner"] = L7_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = MySQL
    L1_3 = L1_3.Async
    L1_3 = L1_3.fetchAll
    L2_3 = "SELECT * FROM phone_messages WHERE (`from` = @number OR `to` = @number) OR `to` = @job ORDER BY time DESC LIMIT "
    L3_3 = Config
    L3_3 = L3_3.MessageLimit
    L2_3 = L2_3 .. L3_3
    L3_3 = {}
    L4_3 = L3_2
    L3_3["@number"] = L4_3
    L4_3 = Config
    L4_3 = L4_3.JobContacts
    L5_3 = L2_2.jobName
    L4_3 = L4_3[L5_3]
    if L4_3 then
      L4_3 = Config
      L4_3 = L4_3.JobContacts
      L5_3 = L2_2.jobName
      L4_3 = L4_3[L5_3]
      L4_3 = L4_3.number
      if L4_3 then
        goto lbl_26
      end
    end
    L4_3 = "none"
    ::lbl_26::
    L3_3["@job"] = L4_3
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4
      L1_4 = A1_2
      L2_4 = {}
      L3_4 = A0_3
      L2_4.chats = L3_4
      L2_4.messages = A0_4
      L3_4 = L2_2.jobName
      L2_4.playerJob = L3_4
      L3_4 = L3_2
      L2_4.playerNumber = L3_4
      L1_4(L2_4)
    end
    L1_3(L2_3, L3_3, L4_3)
  end
  L4_2(L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)



L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:getChat"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = Config
  L3_2 = L3_2.FrameworkFunctions
  L3_2 = L3_2.getPlayer
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.number
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.fetchAll
  L6_2 = "SELECT * FROM phone_chats WHERE `owner` = @owner AND `number` = @number LIMIT 1"
  L7_2 = {}
  L8_2 = L3_2.identifier
  L7_2["@owner"] = L8_2
  L7_2["@number"] = A2_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = MySQL
    L1_3 = L1_3.Async
    L1_3 = L1_3.fetchAll
    L2_3 = "SELECT * FROM phone_messages WHERE (`from` = @number AND `to` = @secondnumber) OR (`from` = @secondnumber AND `to` = @number) OR `to` = @job ORDER BY time DESC LIMIT "
    L3_3 = Config
    L3_3 = L3_3.MessageLimit
    L2_3 = L2_3 .. L3_3
    L3_3 = {}
    L4_3 = L4_2
    L3_3["@number"] = L4_3
    L4_3 = A2_2
    L3_3["@secondnumber"] = L4_3
    L4_3 = Config
    L4_3 = L4_3.JobContacts
    L5_3 = L3_2.jobName
    L4_3 = L4_3[L5_3]
    if L4_3 then
      L4_3 = Config
      L4_3 = L4_3.JobContacts
      L5_3 = L3_2.jobName
      L4_3 = L4_3[L5_3]
      L4_3 = L4_3.number
      if L4_3 then
        goto lbl_28
      end
    end
    L4_3 = "none"
    ::lbl_28::
    L3_3["@job"] = L4_3
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4
      L1_4 = A0_3
      L1_4 = L1_4[1]
      L1_4.messages = A0_4
      L1_4 = A1_2
      L2_4 = {}
      L3_4 = A0_3
      L3_4 = L3_4[1]
      L2_4.chat = L3_4
      L3_4 = L3_2.jobName
      L2_4.playerJob = L3_4
      L3_4 = L4_2
      L2_4.playerNumber = L3_4
      L1_4(L2_4)
    end
    L1_3(L2_3, L3_3, L4_3)
  end
  L5_2(L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)


L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:getGroups"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.number
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.fetchAll
  L5_2 = "SELECT * FROM phone_groups ORDER BY `id` DESC"
  L6_2 = {}
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L1_3 = {}
    L2_3 = pairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = json
      L8_3 = L8_3.decode
      L9_3 = L7_3.members
      L8_3 = L8_3(L9_3)
      L9_3 = pairs
      L10_3 = L8_3
      L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3)
      for L13_3, L14_3 in L9_3, L10_3, L11_3, L12_3 do
        L15_3 = L3_2
        if L15_3 == L14_3 then
          L15_3 = table
          L15_3 = L15_3.insert
          L16_3 = L1_3
          L17_3 = L7_3
          L15_3(L16_3, L17_3)
          break
        end
      end
    end
    L2_3 = pairs
    L3_3 = L1_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = MySQL
      L8_3 = L8_3.Sync
      L8_3 = L8_3.fetchAll
      L9_3 = "SELECT * FROM phone_messages WHERE `to` = @group ORDER BY time DESC LIMIT "
      L10_3 = Config
      L10_3 = L10_3.MessageLimit
      L9_3 = L9_3 .. L10_3
      L10_3 = {}
      L11_3 = "GROUP-"
      L12_3 = L7_3.id
      L11_3 = L11_3 .. L12_3
      L10_3["@group"] = L11_3
      L8_3 = L8_3(L9_3, L10_3)
      L9_3 = #L8_3
      if L9_3 > 1 then
        L9_3 = table
        L9_3 = L9_3.sort
        L10_3 = L8_3
        function L11_3(A0_4, A1_4)
          local L2_4, L3_4
          L2_4 = A0_4.time
          L3_4 = A1_4.time
          L2_4 = L2_4 < L3_4
          return L2_4
        end
        L9_3(L10_3, L11_3)
      end
      L7_3.messages = L8_3
      L9_3 = L7_3.owner
      L10_3 = L2_2.identifier
      if L9_3 == L10_3 then
        L7_3.owned = true
      end
    end
    L2_3 = A1_2
    L3_3 = {}
    L3_3.groups = L1_3
    L4_3 = L3_2
    L3_3.playerNumber = L4_3
    L4_3 = os
    L4_3 = L4_3.time
    L4_3 = L4_3()
    L4_3 = L4_3 * 1000
    L3_3.time = L4_3
    L2_3(L3_3)
  end
  L4_2(L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)


L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:getGroup"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = Config
  L3_2 = L3_2.FrameworkFunctions
  L3_2 = L3_2.getPlayer
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.number
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.fetchAll
  L6_2 = "SELECT * FROM phone_groups WHERE `id` = @id LIMIT 1"
  L7_2 = {}
  L7_2["@id"] = A2_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_3[1]
    if L1_3 then
      L1_3 = MySQL
      L1_3 = L1_3.Sync
      L1_3 = L1_3.fetchAll
      L2_3 = "SELECT * FROM phone_messages WHERE `to` = @group ORDER BY time DESC LIMIT "
      L3_3 = Config
      L3_3 = L3_3.MessageLimit
      L2_3 = L2_3 .. L3_3
      L3_3 = {}
      L4_3 = "GROUP-"
      L5_3 = A2_2
      L4_3 = L4_3 .. L5_3
      L3_3["@group"] = L4_3
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = #L1_3
      if L2_3 > 1 then
        L2_3 = table
        L2_3 = L2_3.sort
        L3_3 = L1_3
        function L4_3(A0_4, A1_4)
          local L2_4, L3_4
          L2_4 = A0_4.time
          L3_4 = A1_4.time
          L2_4 = L2_4 < L3_4
          return L2_4
        end
        L2_3(L3_3, L4_3)
      end
      L2_3 = A0_3[1]
      L2_3.messages = L1_3
      L2_3 = A0_3[1]
      L2_3 = L2_3.owner
      L3_3 = L3_2.identifier
      if L2_3 == L3_3 then
        L2_3 = A0_3[1]
        L2_3.owned = true
      end
      L2_3 = A1_2
      L3_3 = {}
      L4_3 = A0_3[1]
      L3_3.group = L4_3
      L4_3 = L4_2
      L3_3.playerNumber = L4_3
      L4_3 = os
      L4_3 = L4_3.time
      L4_3 = L4_3()
      L4_3 = L4_3 * 1000
      L3_3.time = L4_3
      L2_3(L3_3)
    end
  end
  L5_2(L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)


L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:createGroup"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = Config
  L5_2 = L5_2.FrameworkFunctions
  L5_2 = L5_2.getPlayer
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.execute
  L7_2 = "INSERT INTO phone_groups (`owner`, `name`, `photo`, `members`) VALUES (@owner, @name, @photo, @members)"
  L8_2 = {}
  L9_2 = L5_2.identifier
  L8_2["@owner"] = L9_2
  L8_2["@name"] = A2_2
  L8_2["@photo"] = A3_2
  L8_2["@members"] = A4_2
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = MySQL
    L0_3 = L0_3.Async
    L0_3 = L0_3.fetchScalar
    L1_3 = "SELECT `id` FROM phone_groups WHERE `owner` = @owner ORDER BY `id` DESC LIMIT 1"
    L2_3 = {}
    L3_3 = L5_2.identifier
    L2_3["@owner"] = L3_3
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4
      L1_4 = pairs
      L2_4 = json
      L2_4 = L2_4.decode
      L3_4 = A4_2
      L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4 = L2_4(L3_4)
      L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4)
      for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
        L7_4 = getPlayerByNumber
        L8_4 = L6_4
        L7_4 = L7_4(L8_4)
        if L7_4 then
          L8_4 = L7_4.source
          L9_4 = A0_2
          if L8_4 ~= L9_4 then
            L8_4 = TriggerClientEvent
            L9_4 = "high_phone:addGroup"
            L10_4 = L7_4.source
            L11_4 = A0_4
            L12_4 = A2_2
            L13_4 = A3_2
            L14_4 = A4_2
            L15_4 = os
            L15_4 = L15_4.time
            L15_4 = L15_4()
            L15_4 = L15_4 * 1000
            L8_4(L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4)
          end
        end
      end
      L1_4 = A1_2
      L2_4 = A0_4
      L1_4(L2_4)
      L1_4 = TriggerClientEvent
      L2_4 = "high_phone:updateGroups"
      L3_4 = A0_2
      L1_4(L2_4, L3_4)
    end
    L0_3(L1_3, L2_3, L3_3)
  end
  L6_2(L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)


L0_1 = RegisterNetEvent
L1_1 = "high_phone:leaveGroup"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:leaveGroup"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Config
  L1_2 = L1_2.FrameworkFunctions
  L1_2 = L1_2.getPlayer
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.number
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.fetchScalar
  L4_2 = "SELECT members FROM phone_groups WHERE `id` = @id"
  L5_2 = {}
  L5_2["@id"] = A0_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = json
    L1_3 = L1_3.decode
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = pairs
    L3_3 = L1_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = L2_2
      if L7_3 == L8_3 then
        L8_3 = table
        L8_3 = L8_3.remove
        L9_3 = L1_3
        L10_3 = L6_3
        L8_3(L9_3, L10_3)
        break
      end
    end
    L2_3 = MySQL
    L2_3 = L2_3.Async
    L2_3 = L2_3.execute
    L3_3 = "UPDATE phone_groups SET `members` = @members WHERE `id` = @id"
    L4_3 = {}
    L5_3 = A0_2
    L4_3["@id"] = L5_3
    L5_3 = json
    L5_3 = L5_3.encode
    L6_3 = L1_3
    L5_3 = L5_3(L6_3)
    L4_3["@members"] = L5_3
    function L5_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4
      L0_4 = TriggerClientEvent
      L1_4 = "high_phone:deleteGroup"
      L2_4 = L1_2.source
      L3_4 = A0_2
      L0_4(L1_4, L2_4, L3_4)
      L0_4 = pairs
      L1_4 = L1_3
      L0_4, L1_4, L2_4, L3_4 = L0_4(L1_4)
      for L4_4, L5_4 in L0_4, L1_4, L2_4, L3_4 do
        L6_4 = getPlayerByNumber
        L7_4 = L5_4
        L6_4 = L6_4(L7_4)
        if L6_4 then
          L7_4 = TriggerClientEvent
          L8_4 = "high_phone:updateGroup"
          L9_4 = L6_4.source
          L10_4 = A0_2
          L7_4(L8_4, L9_4, L10_4)
        end
      end
    end
    L2_3(L3_3, L4_3, L5_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)

L0_1 = RegisterNetEvent
L1_1 = "high_phone:deleteGroup"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:deleteGroup"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Config
  L1_2 = L1_2.FrameworkFunctions
  L1_2 = L1_2.getPlayer
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.fetchScalar
  L3_2 = "SELECT members FROM phone_groups WHERE `id` = @id"
  L4_2 = {}
  L4_2["@id"] = A0_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = MySQL
    L1_3 = L1_3.Async
    L1_3 = L1_3.execute
    L2_3 = "DELETE FROM phone_groups WHERE `id` = @id AND `owner` = @owner"
    L3_3 = {}
    L4_3 = A0_2
    L3_3["@id"] = L4_3
    L4_3 = L1_2.identifier
    L3_3["@owner"] = L4_3
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4
      if A0_4 > 0 then
        L1_4 = pairs
        L2_4 = json
        L2_4 = L2_4.decode
        L3_4 = A0_3
        L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4 = L2_4(L3_4)
        L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4)
        for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
          L7_4 = getPlayerByNumber
          L8_4 = L6_4
          L7_4 = L7_4(L8_4)
          if L7_4 then
            L8_4 = TriggerClientEvent
            L9_4 = "high_phone:deleteGroup"
            L10_4 = L7_4.source
            L11_4 = A0_2
            L8_4(L9_4, L10_4, L11_4)
          end
        end
      end
    end
    L1_3(L2_3, L3_3, L4_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)


L0_1 = RegisterNetEvent
L1_1 = "high_phone:saveGroup"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:saveGroup"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = Config
  L4_2 = L4_2.FrameworkFunctions
  L4_2 = L4_2.getPlayer
  L5_2 = source
  L4_2 = L4_2(L5_2)
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.fetchScalar
  L6_2 = "SELECT members FROM phone_groups WHERE `id` = @id"
  L7_2 = {}
  L7_2["@id"] = A0_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L1_3 = json
    L1_3 = L1_3.decode
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = json
    L2_3 = L2_3.decode
    L3_3 = A3_2
    L2_3 = L2_3(L3_3)
    L3_3 = pairs
    L4_3 = L1_3
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L9_3 = true
      L10_3 = pairs
      L11_3 = L2_3
      L10_3, L11_3, L12_3, L13_3 = L10_3(L11_3)
      for L14_3, L15_3 in L10_3, L11_3, L12_3, L13_3 do
        if L8_3 == L15_3 then
          L9_3 = false
          break
        end
      end
      if L9_3 then
        L10_3 = getPlayerByNumber
        L11_3 = L8_3
        L10_3 = L10_3(L11_3)
        if L10_3 then
          L11_3 = TriggerClientEvent
          L12_3 = "high_phone:deleteGroup"
          L13_3 = L10_3.source
          L14_3 = A0_2
          L11_3(L12_3, L13_3, L14_3)
        end
      end
    end
    L3_3 = pairs
    L4_3 = L2_3
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L9_3 = true
      L10_3 = pairs
      L11_3 = L1_3
      L10_3, L11_3, L12_3, L13_3 = L10_3(L11_3)
      for L14_3, L15_3 in L10_3, L11_3, L12_3, L13_3 do
        if L8_3 == L15_3 then
          L9_3 = false
          break
        end
      end
      if L9_3 then
        L10_3 = getPlayerByNumber
        L11_3 = L8_3
        L10_3 = L10_3(L11_3)
        if L10_3 then
          L11_3 = TriggerClientEvent
          L12_3 = "high_phone:addGroup"
          L13_3 = L10_3.source
          L14_3 = A0_2
          L15_3 = A1_2
          L16_3 = A2_2
          L17_3 = A3_2
          L18_3 = os
          L18_3 = L18_3.time
          L18_3 = L18_3()
          L18_3 = L18_3 * 1000
          L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        end
      end
    end
    L3_3 = MySQL
    L3_3 = L3_3.Async
    L3_3 = L3_3.execute
    L4_3 = "UPDATE phone_groups SET `name` = @name, `photo` = @photo, `members` = @members WHERE `id` = @id AND `owner` = @owner"
    L5_3 = {}
    L6_3 = L4_2.identifier
    L5_3["@owner"] = L6_3
    L6_3 = A0_2
    L5_3["@id"] = L6_3
    L6_3 = A1_2
    L5_3["@name"] = L6_3
    L6_3 = A2_2
    L5_3["@photo"] = L6_3
    L6_3 = A3_2
    L5_3["@members"] = L6_3
    L3_3(L4_3, L5_3)
    L3_3 = pairs
    L4_3 = L2_3
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L9_3 = getPlayerByNumber
      L10_3 = L8_3
      L9_3 = L9_3(L10_3)
      if L9_3 then
        L10_3 = TriggerClientEvent
        L11_3 = "high_phone:updateGroups"
        L12_3 = L9_3.source
        L10_3(L11_3, L12_3)
      end
    end
  end
  L5_2(L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)



L0_1 = RegisterNetEvent
L1_1 = "high_phone:sendMessage"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:sendMessage"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = source
  L5_2 = Config
  L5_2 = L5_2.FrameworkFunctions
  L5_2 = L5_2.getPlayer
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.number
  L7_2 = getUserByNumber
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = nil
  L9_2 = pairs
  L10_2 = Config
  L10_2 = L10_2.JobContacts
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = L14_2.number
    if A0_2 == L15_2 then
      L8_2 = L13_2
    end
  end
  if L7_2 and not L8_2 then
    L9_2 = L7_2.source
    if not L9_2 then
      L9_2 = MySQL
      L9_2 = L9_2.Async
      L9_2 = L9_2.fetchScalar
      L10_2 = "SELECT id FROM phone_chats WHERE `owner` = @owner AND `number` = @number"
      L11_2 = {}
      L12_2 = Config
      L12_2 = L12_2.IdentifierColumn
      L12_2 = L7_2[L12_2]
      if not L12_2 then
        L12_2 = L7_2.identifier
      end
      L11_2["@owner"] = L12_2
      L11_2["@number"] = L6_2
      function L12_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3
        if not A0_3 then
          L1_3 = MySQL
          L1_3 = L1_3.Async
          L1_3 = L1_3.execute
          L2_3 = "INSERT INTO phone_chats (`owner`, `number`) VALUES (@owner, @number)"
          L3_3 = {}
          L4_3 = Config
          L5_3 = L4_3.IdentifierColumn
          L4_3 = L7_2
          L4_3 = L4_3[L5_3]
          if not L4_3 then
            L4_3 = L7_2.identifier
          end
          L3_3["@owner"] = L4_3
          L4_3 = L6_2
          L3_3["@number"] = L4_3
          L1_3(L2_3, L3_3)
        end
      end
      L9_2(L10_2, L11_2, L12_2)
  end
  else
    L9_2 = string
    L9_2 = L9_2.find
    L10_2 = A0_2
    L11_2 = "GROUP%-"
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = string
      L9_2 = L9_2.gsub
      L10_2 = A0_2
      L11_2 = "GROUP%-"
      L12_2 = ""
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L10_2 = MySQL
      L10_2 = L10_2.Async
      L10_2 = L10_2.fetchScalar
      L11_2 = "SELECT members FROM phone_groups WHERE `id` = @id"
      L12_2 = {}
      L13_2 = tonumber
      L14_2 = L9_2
      L13_2 = L13_2(L14_2)
      L12_2["@id"] = L13_2
      function L13_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
        L1_3 = json
        L1_3 = L1_3.decode
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        L2_3 = pairs
        L3_3 = L1_3
        L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
        for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
          L8_3 = getPlayerByNumber
          L9_3 = L7_3
          L8_3 = L8_3(L9_3)
          if L8_3 then
            L9_3 = L8_3.source
            L10_3 = L4_2
            if L9_3 ~= L10_3 then
              L9_3 = TriggerClientEvent
              L10_3 = "high_phone:receivedGroupMessage"
              L11_3 = L8_3.source
              L12_3 = L9_2
              L13_3 = L6_2
              L14_3 = A1_2
              L15_3 = A2_2
              L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
            end
          end
        end
      end
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  L9_2 = MySQL
  L9_2 = L9_2.Async
  L9_2 = L9_2.execute
  L10_2 = "INSERT INTO phone_messages (`from`, `to`, `message`, `attachments`, `time`) VALUES (@phone, @secondphone, @message, @attachments, @time)"
  L11_2 = {}
  L11_2["@phone"] = L6_2
  L11_2["@secondphone"] = A0_2
  L11_2["@message"] = A1_2
  L12_2 = A2_2 or L12_2
  if not A2_2 or not A2_2 then
    L12_2 = "[]"
  end
  L11_2["@attachments"] = L12_2
  L12_2 = A3_2 or L12_2
  if not A3_2 or not A3_2 then
    L12_2 = os
    L12_2 = L12_2.time
    L12_2 = L12_2()
    L12_2 = L12_2 * 1000
  end
  L11_2["@time"] = L12_2
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = L7_2
    if L0_3 then
      L0_3 = L7_2.source
      if L0_3 then
        L0_3 = TriggerClientEvent
        L1_3 = "high_phone:receivedMessage"
        L2_3 = L7_2.source
        L3_3 = L6_2
        L4_3 = A1_2
        L5_3 = A2_2
        if L5_3 then
          L5_3 = A2_2
          if L5_3 then
            goto lbl_19
          end
        end
        L5_3 = "[]"
        ::lbl_19::
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
      end
    end
    L0_3 = L8_2
    if L0_3 then
      L0_3 = Config
      L0_3 = L0_3.FrameworkFunctions
      L0_3 = L0_3.getPlayers
      L0_3 = L0_3()
      L1_3 = 1
      L2_3 = #L0_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = Config
        L5_3 = L5_3.FrameworkFunctions
        L5_3 = L5_3.getPlayer
        L6_3 = L0_3[L4_3]
        L5_3 = L5_3(L6_3)
        L6_3 = L5_3.jobName
        L7_3 = L8_2
        if L6_3 == L7_3 then
          L6_3 = L5_3.source
          L7_3 = L4_2
          if L6_3 ~= L7_3 then
            L6_3 = L5_3.onDuty
            if nil ~= L6_3 then
              L6_3 = L5_3.onDuty
              if L6_3 then
                goto lbl_53
              end
            end
            L6_3 = L5_3.onDuty
            ::lbl_53::
            if nil == L6_3 then
              L6_3 = TriggerClientEvent
              L7_3 = "high_phone:receivedMessage"
              L8_3 = L5_3.source
              L9_3 = A0_2
              L10_3 = L6_2
              L11_3 = ": "
              L12_3 = A1_2
              L10_3 = L10_3 .. L11_3 .. L12_3
              L11_3 = A2_2
              if L11_3 then
                L11_3 = A2_2
                if L11_3 then
                  goto lbl_68
                end
              end
              L11_3 = "[]"
              ::lbl_68::
              L12_3 = true
              L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
            end
          end
        end
      end
    end
  end
  L9_2(L10_2, L11_2, L12_2)
end
L0_1(L1_1, L2_1)


L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:createChat"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2
  L5_2 = Config
  L5_2 = L5_2.FrameworkFunctions
  L5_2 = L5_2.getPlayer
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.execute
  L7_2 = "INSERT INTO phone_chats (`owner`, `number`, `name`) VALUES (@owner, @number, @name)"
  L8_2 = {}
  L9_2 = L5_2.identifier
  L8_2["@owner"] = L9_2
  L8_2["@number"] = A3_2
  L8_2["@name"] = A2_2
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = MySQL
    L0_3 = L0_3.Async
    L0_3 = L0_3.fetchScalar
    L1_3 = "SELECT `id` FROM phone_chats WHERE `owner` = @owner AND `number` = @number ORDER BY `id` DESC LIMIT 1"
    L2_3 = {}
    L3_3 = L5_2.identifier
    L2_3["@owner"] = L3_3
    L3_3 = A3_2
    L2_3["@number"] = L3_3
    function L3_3(A0_4)
      local L1_4, L2_4
      L1_4 = A1_2
      L2_4 = A0_4
      L1_4(L2_4)
    end
    L0_3(L1_3, L2_3, L3_3)
  end
  L6_2(L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)


L0_1 = RegisterNetEvent
L1_1 = "high_phone:deleteChat"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:deleteChat"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.execute
  L4_2 = "DELETE FROM phone_chats WHERE `id` = @id AND `owner` = @owner"
  L5_2 = {}
  L5_2["@id"] = A0_2
  L6_2 = L2_2.identifier
  L5_2["@owner"] = L6_2
  L3_2(L4_2, L5_2)
end
L0_1(L1_1, L2_1)


L0_1 = RegisterNetEvent
L1_1 = "high_phone:muteChat"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:muteChat"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = Config
  L3_2 = L3_2.FrameworkFunctions
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "UPDATE phone_chats SET `muted` = @muted WHERE `owner` = @owner AND `id` = @id"
  L6_2 = {}
  L7_2 = L3_2.identifier
  L6_2["@owner"] = L7_2
  L6_2["@id"] = A0_2
  if true == A1_2 then
    L7_2 = 1
    if L7_2 then
      goto lbl_22
    end
  end
  L7_2 = 0
  ::lbl_22::
  L6_2["@muted"] = L7_2
  L4_2(L5_2, L6_2)
end
L0_1(L1_1, L2_1)


L0_1 = RegisterNetEvent
L1_1 = "high_phone:readMessages"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:readMessages"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.execute
  L4_2 = "UPDATE phone_chats SET `lastOpened` = @time WHERE `owner` = @owner AND `number` = @number"
  L5_2 = {}
  L6_2 = os
  L6_2 = L6_2.time
  L6_2 = L6_2()
  L6_2 = L6_2 * 1000
  L5_2["@time"] = L6_2
  L6_2 = L2_2.identifier
  L5_2["@owner"] = L6_2
  L5_2["@number"] = A0_2
  L3_2(L4_2, L5_2)
end
L0_1(L1_1, L2_1)


L0_1 = RegisterNetEvent
L1_1 = "high_phone:deleteMessage"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:deleteMessage"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = Config
  L3_2 = L3_2.FrameworkFunctions
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.number
  L5_2 = getPlayerByNumber
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.execute
  L7_2 = "DELETE FROM phone_messages WHERE `time` = @time AND `from` = @from"
  L8_2 = {}
  L8_2["@time"] = A0_2
  L8_2["@from"] = L4_2
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = string
    L0_3 = L0_3.find
    L1_3 = A1_2
    L2_3 = "GROUP%-"
    L0_3 = L0_3(L1_3, L2_3)
    if not L0_3 then
      L0_3 = TriggerClientEvent
      L1_3 = "high_phone:updateChat"
      L2_3 = L2_2
      L3_3 = A1_2
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L5_2
      if L0_3 then
        L0_3 = TriggerClientEvent
        L1_3 = "high_phone:updateChat"
        L2_3 = L5_2.source
        L3_3 = L4_2
        L0_3(L1_3, L2_3, L3_3)
      end
    else
      L0_3 = string
      L0_3 = L0_3.gsub
      L1_3 = A1_2
      L2_3 = "GROUP%-"
      L3_3 = ""
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      L1_3 = MySQL
      L1_3 = L1_3.Async
      L1_3 = L1_3.fetchScalar
      L2_3 = "SELECT members FROM phone_groups WHERE `id` = @id"
      L3_3 = {}
      L4_3 = tonumber
      L5_3 = L0_3
      L4_3 = L4_3(L5_3)
      L3_3["@id"] = L4_3
      function L4_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4
        L1_4 = json
        L1_4 = L1_4.decode
        L2_4 = A0_4
        L1_4 = L1_4(L2_4)
        L2_4 = pairs
        L3_4 = L1_4
        L2_4, L3_4, L4_4, L5_4 = L2_4(L3_4)
        for L6_4, L7_4 in L2_4, L3_4, L4_4, L5_4 do
          L8_4 = getPlayerByNumber
          L9_4 = L7_4
          L8_4 = L8_4(L9_4)
          if L8_4 then
            L9_4 = L8_4.source
            L10_4 = L2_2
            if L9_4 ~= L10_4 then
              L9_4 = TriggerClientEvent
              L10_4 = "high_phone:updateGroup"
              L11_4 = L8_4.source
              L12_4 = tonumber
              L13_4 = L0_3
              L12_4, L13_4 = L12_4(L13_4)
              L9_4(L10_4, L11_4, L12_4, L13_4)
            end
          end
        end
      end
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  L6_2(L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
