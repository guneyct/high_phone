local L0_1, L1_1, L2_1
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:getDarkchatData"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L3_2 = getPlayerData
    L4_2 = L2_2.source
    L5_2 = "darkchatuser"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A1_2
    L5_2 = L3_2 or L5_2
    if nil == L3_2 or not L3_2 then
      L5_2 = "{}"
    end
    L4_2(L5_2)
  else
    L3_2 = A1_2
    L4_2 = "{}"
    L3_2(L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:saveDarkchatData"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:saveDarkchatData"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.execute
  L4_2 = "UPDATE "
  L5_2 = Config
  L5_2 = L5_2.PlayersTable
  L6_2 = " SET darkchatuser = @darkchatuser WHERE "
  L7_2 = Config
  L7_2 = L7_2.IdentifierColumn
  L8_2 = " = @identifier"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L5_2 = {}
  L6_2 = json
  L6_2 = L6_2.encode
  L7_2 = {}
  L7_2.nickname = A0_2
  L7_2.photo = A1_2
  L6_2 = L6_2(L7_2)
  L5_2["@darkchatuser"] = L6_2
  L6_2 = L2_2.identifier
  L5_2["@identifier"] = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "high_phone:updateDarkchatData"
  L5_2 = L2_2.source
  L3_2(L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:getDarkGroups"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * FROM phone_darkgroups ORDER BY `id` DESC"
  L5_2 = {}
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
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
        L15_3 = L2_2.identifier
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
      L9_3 = "SELECT * FROM phone_darkmessages WHERE `to` = @group ORDER BY time DESC LIMIT "
      L10_3 = Config
      L10_3 = L10_3.DarkMessageLimit
      L9_3 = L9_3 .. L10_3
      L10_3 = {}
      L11_3 = L7_3.id
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
      L9_3 = json
      L9_3 = L9_3.decode
      L10_3 = L7_3.members
      L9_3 = L9_3(L10_3)
      L10_3 = {}
      L11_3 = pairs
      L12_3 = L9_3
      L11_3, L12_3, L13_3, L14_3 = L11_3(L12_3)
      for L15_3, L16_3 in L11_3, L12_3, L13_3, L14_3 do
        L17_3 = getDarkchatDataByIdentifier
        L18_3 = L16_3
        L17_3 = L17_3(L18_3)
        if L17_3 then
          L18_3 = table
          L18_3 = L18_3.insert
          L19_3 = L10_3
          L20_3 = {}
          L20_3.identifier = L16_3
          L21_3 = L17_3.nickname
          L20_3.nickname = L21_3
          L21_3 = L17_3.photo
          L20_3.photo = L21_3
          L18_3(L19_3, L20_3)
        end
      end
      L11_3 = json
      L11_3 = L11_3.encode
      L12_3 = L10_3
      L11_3 = L11_3(L12_3)
      L7_3.members = L11_3
    end
    L2_3 = A1_2
    L3_3 = {}
    L3_3.groups = L1_3
    L4_3 = L2_2.identifier
    L3_3.identifier = L4_3
    L4_3 = os
    L4_3 = L4_3.time
    L4_3 = L4_3()
    L4_3 = L4_3 * 1000
    L3_3.time = L4_3
    L2_3(L3_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:getDarkGroup"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Config
  L3_2 = L3_2.FrameworkFunctions
  L3_2 = L3_2.getPlayer
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.fetchAll
  L5_2 = "SELECT * FROM phone_darkgroups WHERE `id` = @id LIMIT 1"
  L6_2 = {}
  L6_2["@id"] = A2_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L1_3 = MySQL
    L1_3 = L1_3.Sync
    L1_3 = L1_3.fetchAll
    L2_3 = "SELECT * FROM phone_darkmessages WHERE `to` = @group ORDER BY time DESC LIMIT "
    L3_3 = Config
    L3_3 = L3_3.DarkMessageLimit
    L2_3 = L2_3 .. L3_3
    L3_3 = {}
    L4_3 = A2_2
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
    L2_3 = json
    L2_3 = L2_3.decode
    L3_3 = A0_3[1]
    L3_3 = L3_3.members
    L2_3 = L2_3(L3_3)
    L3_3 = {}
    L4_3 = pairs
    L5_3 = L2_3
    L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
    for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
      L10_3 = getDarkchatDataByIdentifier
      L11_3 = L9_3
      L10_3 = L10_3(L11_3)
      if L10_3 then
        L11_3 = table
        L11_3 = L11_3.insert
        L12_3 = L3_3
        L13_3 = {}
        L13_3.identifier = L9_3
        L14_3 = L10_3.nickname
        L13_3.nickname = L14_3
        L14_3 = L10_3.photo
        L13_3.photo = L14_3
        L11_3(L12_3, L13_3)
      end
    end
    L4_3 = A0_3[1]
    L5_3 = json
    L5_3 = L5_3.encode
    L6_3 = L3_3
    L5_3 = L5_3(L6_3)
    L4_3.members = L5_3
    L4_3 = A1_2
    L5_3 = {}
    L6_3 = A0_3[1]
    L5_3.group = L6_3
    L6_3 = L3_2.identifier
    L5_3.identifier = L6_3
    L6_3 = os
    L6_3 = L6_3.time
    L6_3 = L6_3()
    L6_3 = L6_3 * 1000
    L5_3.time = L6_3
    L4_3(L5_3)
  end
  L4_2(L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:sendDarkSystemMessage"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = source
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.fetchScalar
  L4_2 = "SELECT members FROM phone_darkgroups WHERE `id` = @id"
  L5_2 = {}
  L5_2["@id"] = A0_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L1_3 = json
    L1_3 = L1_3.decode
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = pairs
    L3_3 = L1_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = Config
      L8_3 = L8_3.FrameworkFunctions
      L8_3 = L8_3.getPlayerByIdentifier
      L9_3 = L7_3
      L8_3 = L8_3(L9_3)
      if L8_3 then
        L9_3 = L8_3.source
        L10_3 = L2_2
        if L9_3 ~= L10_3 then
          L9_3 = TriggerClientEvent
          L10_3 = "high_phone:receivedDarkGroupMessage"
          L11_3 = L8_3.source
          L12_3 = A0_2
          L13_3 = "SYSTEM"
          L14_3 = A1_2
          L15_3 = "[]"
          L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
        end
      end
    end
  end
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.execute
  L4_2 = "INSERT INTO phone_darkmessages (`from`, `to`, `message`, `attachments`, `time`) VALUES (@from, @to, @message, @attachments, @time)"
  L5_2 = {}
  L5_2["@from"] = "SYSTEM"
  L5_2["@to"] = A0_2
  L5_2["@message"] = A1_2
  L5_2["@attachments"] = "[]"
  L6_2 = os
  L6_2 = L6_2.time
  L6_2 = L6_2()
  L6_2 = L6_2 * 1000
  L5_2["@time"] = L6_2
  L3_2(L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:sendDarkMessage"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:sendDarkMessage"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = source
  L5_2 = Config
  L5_2 = L5_2.FrameworkFunctions
  L5_2 = L5_2.getPlayer
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.fetchScalar
  L7_2 = "SELECT members FROM phone_darkgroups WHERE `id` = @id"
  L8_2 = {}
  L8_2["@id"] = A0_2
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L1_3 = json
    L1_3 = L1_3.decode
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = pairs
    L3_3 = L1_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = Config
      L8_3 = L8_3.FrameworkFunctions
      L8_3 = L8_3.getPlayerByIdentifier
      L9_3 = L7_3
      L8_3 = L8_3(L9_3)
      if L8_3 then
        L9_3 = L8_3.source
        L10_3 = L4_2
        if L9_3 ~= L10_3 then
          L9_3 = TriggerClientEvent
          L10_3 = "high_phone:receivedDarkGroupMessage"
          L11_3 = L8_3.source
          L12_3 = A0_2
          L13_3 = L5_2.identifier
          L14_3 = A1_2
          L15_3 = A2_2
          if nil ~= L15_3 then
            L15_3 = A2_2
            if L15_3 then
              goto lbl_33
            end
          end
          L15_3 = "[]"
          ::lbl_33::
          L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
        end
      end
    end
  end
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.execute
  L7_2 = "INSERT INTO phone_darkmessages (`from`, `to`, `message`, `attachments`, `time`) VALUES (@from, @to, @message, @attachments, @time)"
  L8_2 = {}
  L9_2 = L5_2.identifier
  L8_2["@from"] = L9_2
  L8_2["@to"] = A0_2
  L8_2["@message"] = A1_2
  L9_2 = A2_2 or L9_2
  if nil == A2_2 or not A2_2 then
    L9_2 = "[]"
  end
  L8_2["@attachments"] = L9_2
  L9_2 = A3_2 or L9_2
  if nil == A3_2 or not A3_2 then
    L9_2 = os
    L9_2 = L9_2.time
    L9_2 = L9_2()
    L9_2 = L9_2 * 1000
  end
  L8_2["@time"] = L9_2
  L6_2(L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:createDarkGroup"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = Config
  L5_2 = L5_2.FrameworkFunctions
  L5_2 = L5_2.getPlayer
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = string
  L6_2 = L6_2.random
  L7_2 = Config
  L7_2 = L7_2.DarkGroupInviteCodeLength
  L6_2 = L6_2(L7_2)
  L7_2 = MySQL
  L7_2 = L7_2.Async
  L7_2 = L7_2.execute
  L8_2 = "INSERT INTO phone_darkgroups (`owner`, `invitecode`, `name`, `photo`, `maxmembers`, `members`) VALUES (@owner, @invitecode, @name, @photo, @maxmembers, @members)"
  L9_2 = {}
  L10_2 = L5_2.identifier
  L9_2["@owner"] = L10_2
  L9_2["@invitecode"] = L6_2
  L9_2["@name"] = A2_2
  L9_2["@photo"] = A3_2
  L9_2["@maxmembers"] = A4_2
  L10_2 = json
  L10_2 = L10_2.encode
  L11_2 = {}
  L12_2 = L5_2.identifier
  L11_2[1] = L12_2
  L10_2 = L10_2(L11_2)
  L9_2["@members"] = L10_2
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = MySQL
    L0_3 = L0_3.Async
    L0_3 = L0_3.fetchScalar
    L1_3 = "SELECT `id` FROM phone_darkgroups WHERE `owner` = @owner ORDER BY `id` DESC LIMIT 1"
    L2_3 = {}
    L3_3 = L5_2.identifier
    L2_3["@owner"] = L3_3
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = A1_2
      L2_4 = json
      L2_4 = L2_4.encode
      L3_4 = {}
      L3_4.id = A0_4
      L4_4 = L6_2
      L3_4.invitecode = L4_4
      L2_4, L3_4, L4_4 = L2_4(L3_4)
      L1_4(L2_4, L3_4, L4_4)
      L1_4 = TriggerClientEvent
      L2_4 = "high_phone:updateDarkGroups"
      L3_4 = A0_2
      L1_4(L2_4, L3_4)
    end
    L0_3(L1_3, L2_3, L3_3)
  end
  L7_2(L8_2, L9_2, L10_2)
end
L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:joinDarkGroup"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Config
  L3_2 = L3_2.FrameworkFunctions
  L3_2 = L3_2.getPlayer
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.fetchAll
  L5_2 = "SELECT id, members, maxmembers, bannedmembers FROM phone_darkgroups WHERE invitecode = @invitecode LIMIT 1"
  L6_2 = {}
  L6_2["@invitecode"] = A2_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = A0_3[1]
    if nil ~= L1_3 then
      L1_3 = json
      L1_3 = L1_3.decode
      L2_3 = A0_3[1]
      L2_3 = L2_3.members
      L1_3 = L1_3(L2_3)
      L2_3 = #L1_3
      L3_3 = A0_3[1]
      L3_3 = L3_3.maxmembers
      if L2_3 >= L3_3 then
        L2_3 = A1_2
        L3_3 = Config
        L3_3 = L3_3.Languages
        L4_3 = Config
        L4_3 = L4_3.Language
        L3_3 = L3_3[L4_3]
        L3_3 = L3_3.notifications
        L3_3 = L3_3.groupmemberlimitreached
        return L2_3(L3_3)
      end
      L2_3 = false
      L3_3 = pairs
      L4_3 = L1_3
      L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
      for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
        L9_3 = L3_2.identifier
        if L8_3 == L9_3 then
          L2_3 = true
          break
        end
      end
      if L2_3 then
        L3_3 = A1_2
        L4_3 = Config
        L4_3 = L4_3.Languages
        L5_3 = Config
        L5_3 = L5_3.Language
        L4_3 = L4_3[L5_3]
        L4_3 = L4_3.notifications
        L4_3 = L4_3.alreadyingroup
        L3_3(L4_3)
      else
        L3_3 = A0_3[1]
        L3_3 = L3_3.bannedmembers
        if nil ~= L3_3 then
          L3_3 = json
          L3_3 = L3_3.decode
          L4_3 = A0_3[1]
          L4_3 = L4_3.bannedmembers
          L3_3 = L3_3(L4_3)
          if L3_3 then
            goto lbl_62
          end
        end
        L3_3 = {}
        ::lbl_62::
        L4_3 = false
        L5_3 = pairs
        L6_3 = L3_3
        L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
        for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
          L11_3 = L3_2.identifier
          if L10_3 == L11_3 then
            L4_3 = true
            break
          end
        end
        if not L4_3 then
          L5_3 = table
          L5_3 = L5_3.insert
          L6_3 = L1_3
          L7_3 = L3_2.identifier
          L5_3(L6_3, L7_3)
          L5_3 = MySQL
          L5_3 = L5_3.Async
          L5_3 = L5_3.execute
          L6_3 = "UPDATE phone_darkgroups SET members = @members WHERE `id` = @id"
          L7_3 = {}
          L8_3 = A0_3[1]
          L8_3 = L8_3.id
          L7_3["@id"] = L8_3
          L8_3 = json
          L8_3 = L8_3.encode
          L9_3 = L1_3
          L8_3 = L8_3(L9_3)
          L7_3["@members"] = L8_3
          function L8_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4
            L0_4 = A1_2
            L1_4 = "SUCCESS"
            L0_4(L1_4)
            L0_4 = TriggerClientEvent
            L1_4 = "high_phone:updateDarkGroups"
            L2_4 = A0_2
            L0_4(L1_4, L2_4)
            L0_4 = getDarkchatDataByIdentifier
            L1_4 = L3_2.identifier
            L0_4 = L0_4(L1_4)
            L1_4 = TriggerEvent
            L2_4 = "high_phone:sendDarkSystemMessage"
            L3_4 = A0_3
            L3_4 = L3_4[1]
            L3_4 = L3_4.id
            L4_4 = replace_vars
            L5_4 = Config
            L5_4 = L5_4.Languages
            L6_4 = Config
            L6_4 = L6_4.Language
            L5_4 = L5_4[L6_4]
            L5_4 = L5_4.notifications
            L5_4 = L5_4.member_joined
            L6_4 = {}
            L7_4 = L0_4.nickname
            L6_4.memberName = L7_4
            L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4 = L4_4(L5_4, L6_4)
            L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4)
            L1_4 = pairs
            L2_4 = L1_3
            L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
            for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
              L7_4 = Config
              L7_4 = L7_4.FrameworkFunctions
              L7_4 = L7_4.getPlayerByIdentifier
              L8_4 = L6_4
              L7_4 = L7_4(L8_4)
              if L7_4 then
                L8_4 = L7_4.source
                L9_4 = A0_2
                if L8_4 ~= L9_4 then
                  L8_4 = TriggerClientEvent
                  L9_4 = "high_phone:updateDarkGroup"
                  L10_4 = L7_4.source
                  L11_4 = A0_3
                  L11_4 = L11_4[1]
                  L11_4 = L11_4.id
                  L8_4(L9_4, L10_4, L11_4)
                end
              end
            end
          end
          L5_3(L6_3, L7_3, L8_3)
        else
          L5_3 = A1_2
          L6_3 = Config
          L6_3 = L6_3.Languages
          L7_3 = Config
          L7_3 = L7_3.Language
          L6_3 = L6_3[L7_3]
          L6_3 = L6_3.notifications
          L6_3 = L6_3.bannedfromgroup
          L5_3(L6_3)
        end
      end
    else
      L1_3 = A1_2
      L2_3 = Config
      L2_3 = L2_3.Languages
      L3_3 = Config
      L3_3 = L3_3.Language
      L2_3 = L2_3[L3_3]
      L2_3 = L2_3.notifications
      L2_3 = L2_3.invitedoesntexist
      L1_3(L2_3)
    end
  end
  L4_2(L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:saveDarkGroup"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:saveDarkGroup"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = Config
  L4_2 = L4_2.FrameworkFunctions
  L4_2 = L4_2.getPlayer
  L5_2 = source
  L4_2 = L4_2(L5_2)
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.execute
  L6_2 = "UPDATE phone_darkgroups SET `name` = @name, `photo` = @photo, `maxmembers` = @maxmembers WHERE `id` = @id AND `owner` = @owner"
  L7_2 = {}
  L7_2["@id"] = A0_2
  L8_2 = L4_2.identifier
  L7_2["@owner"] = L8_2
  L7_2["@name"] = A1_2
  L7_2["@photo"] = A2_2
  L7_2["@maxmembers"] = A3_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = MySQL
    L0_3 = L0_3.Async
    L0_3 = L0_3.fetchScalar
    L1_3 = "SELECT members FROM phone_darkgroups WHERE `id` = @id"
    L2_3 = {}
    L3_3 = A0_2
    L2_3["@id"] = L3_3
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
      L1_4 = json
      L1_4 = L1_4.decode
      L2_4 = A0_4
      L1_4 = L1_4(L2_4)
      L2_4 = pairs
      L3_4 = L1_4
      L2_4, L3_4, L4_4, L5_4 = L2_4(L3_4)
      for L6_4, L7_4 in L2_4, L3_4, L4_4, L5_4 do
        L8_4 = Config
        L8_4 = L8_4.FrameworkFunctions
        L8_4 = L8_4.getPlayerByIdentifier
        L9_4 = L7_4
        L8_4 = L8_4(L9_4)
        if L8_4 then
          L9_4 = TriggerClientEvent
          L10_4 = "high_phone:updateDarkGroup"
          L11_4 = L8_4.source
          L12_4 = A0_2
          L9_4(L10_4, L11_4, L12_4)
        end
      end
    end
    L0_3(L1_3, L2_3, L3_3)
  end
  L5_2(L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:deleteDarkGroup"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:deleteDarkGroup"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.fetchScalar
  L4_2 = "SELECT members FROM phone_darkgroups WHERE `id` = @id"
  L5_2 = {}
  L5_2["@id"] = A0_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = json
    L1_3 = L1_3.decode
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = MySQL
    L2_3 = L2_3.Async
    L2_3 = L2_3.execute
    L3_3 = "DELETE FROM phone_darkgroups WHERE `id` = @id AND `owner` = @owner"
    L4_3 = {}
    L5_3 = A0_2
    L4_3["@id"] = L5_3
    L5_3 = L2_2.identifier
    L4_3["@owner"] = L5_3
    function L5_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4
      if A0_4 > 0 then
        L1_4 = TriggerClientEvent
        L2_4 = "high_phone:updateDarkGroups"
        L3_4 = L1_2
        L1_4(L2_4, L3_4)
        L1_4 = pairs
        L2_4 = L1_3
        L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
        for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
          L7_4 = Config
          L7_4 = L7_4.FrameworkFunctions
          L7_4 = L7_4.getPlayerByIdentifier
          L8_4 = L6_4
          L7_4 = L7_4(L8_4)
          if L7_4 then
            L8_4 = L7_4.source
            L9_4 = L1_2
            if L8_4 ~= L9_4 then
              L8_4 = TriggerClientEvent
              L9_4 = "high_phone:deleteDarkGroup"
              L10_4 = L7_4.source
              L11_4 = A0_2
              L8_4(L9_4, L10_4, L11_4)
            end
          end
        end
      end
    end
    L2_3(L3_3, L4_3, L5_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:leaveDarkGroup"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:leaveDarkGroup"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.fetchScalar
  L4_2 = "SELECT members FROM phone_darkgroups WHERE `id` = @id"
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
      L8_3 = L2_2.identifier
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
    L3_3 = "UPDATE phone_darkgroups SET `members` = @members WHERE `id` = @id"
    L4_3 = {}
    L5_3 = A0_2
    L4_3["@id"] = L5_3
    L5_3 = json
    L5_3 = L5_3.encode
    L6_3 = L1_3
    L5_3 = L5_3(L6_3)
    L4_3["@members"] = L5_3
    function L5_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4
      L0_4 = TriggerClientEvent
      L1_4 = "high_phone:deleteDarkGroup"
      L2_4 = L1_2
      L3_4 = A0_2
      L0_4(L1_4, L2_4, L3_4)
      L0_4 = getDarkchatDataByIdentifier
      L1_4 = L2_2.identifier
      L0_4 = L0_4(L1_4)
      L1_4 = TriggerEvent
      L2_4 = "high_phone:sendDarkSystemMessage"
      L3_4 = A0_2
      L4_4 = replace_vars
      L5_4 = Config
      L5_4 = L5_4.Languages
      L6_4 = Config
      L6_4 = L6_4.Language
      L5_4 = L5_4[L6_4]
      L5_4 = L5_4.notifications
      L5_4 = L5_4.member_left
      L6_4 = {}
      L7_4 = L0_4.nickname
      L6_4.memberName = L7_4
      L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4 = L4_4(L5_4, L6_4)
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4)
      L1_4 = pairs
      L2_4 = L1_3
      L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
      for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
        L7_4 = Config
        L7_4 = L7_4.FrameworkFunctions
        L7_4 = L7_4.getPlayerByIdentifier
        L8_4 = L6_4
        L7_4 = L7_4(L8_4)
        if L7_4 then
          L8_4 = L7_4.source
          L9_4 = L1_2
          if L8_4 ~= L9_4 then
            L8_4 = TriggerClientEvent
            L9_4 = "high_phone:updateDarkGroup"
            L10_4 = L7_4.source
            L11_4 = A0_2
            L8_4(L9_4, L10_4, L11_4)
          end
        end
      end
    end
    L2_3(L3_3, L4_3, L5_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:kickDarkMember"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:kickDarkMember"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = Config
  L3_2 = L3_2.FrameworkFunctions
  L3_2 = L3_2.getPlayer
  L4_2 = source
  L3_2 = L3_2(L4_2)
  L4_2 = Config
  L4_2 = L4_2.FrameworkFunctions
  L4_2 = L4_2.getPlayerByIdentifier
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.fetchScalar
  L6_2 = "SELECT members FROM phone_darkgroups WHERE `id` = @id"
  L7_2 = {}
  L7_2["@id"] = A0_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = json
    L1_3 = L1_3.decode
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = pairs
    L3_3 = L1_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = A1_2
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
    L3_3 = "UPDATE phone_darkgroups SET `members` = @members WHERE `id` = @id AND `owner` = @owner"
    L4_3 = {}
    L5_3 = A0_2
    L4_3["@id"] = L5_3
    L5_3 = L3_2.identifier
    L4_3["@owner"] = L5_3
    L5_3 = json
    L5_3 = L5_3.encode
    L6_3 = L1_3
    L5_3 = L5_3(L6_3)
    L4_3["@members"] = L5_3
    function L5_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
      if A0_4 > 0 then
        L1_4 = L4_2
        if L1_4 then
          L1_4 = TriggerClientEvent
          L2_4 = "high_phone:deleteDarkGroup"
          L3_4 = L4_2.source
          L4_4 = A0_2
          L1_4(L2_4, L3_4, L4_4)
        end
        L1_4 = getDarkchatDataByIdentifier
        L2_4 = A1_2
        L1_4 = L1_4(L2_4)
        L2_4 = TriggerEvent
        L3_4 = "high_phone:sendDarkSystemMessage"
        L4_4 = A0_2
        L5_4 = replace_vars
        L6_4 = Config
        L6_4 = L6_4.Languages
        L7_4 = Config
        L7_4 = L7_4.Language
        L6_4 = L6_4[L7_4]
        L6_4 = L6_4.notifications
        L6_4 = L6_4.member_kicked
        L7_4 = {}
        L8_4 = L1_4.nickname
        L7_4.memberName = L8_4
        L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4 = L5_4(L6_4, L7_4)
        L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
        L2_4 = pairs
        L3_4 = L1_3
        L2_4, L3_4, L4_4, L5_4 = L2_4(L3_4)
        for L6_4, L7_4 in L2_4, L3_4, L4_4, L5_4 do
          L8_4 = Config
          L8_4 = L8_4.FrameworkFunctions
          L8_4 = L8_4.getPlayerByIdentifier
          L9_4 = L7_4
          L8_4 = L8_4(L9_4)
          if L8_4 then
            L9_4 = L8_4.source
            L10_4 = L4_2
            if L10_4 then
              L10_4 = L4_2.source
              if L10_4 then
                goto lbl_50
              end
            end
            L10_4 = -1
            ::lbl_50::
            if L9_4 ~= L10_4 then
              L9_4 = TriggerClientEvent
              L10_4 = "high_phone:updateDarkGroup"
              L11_4 = L8_4.source
              L12_4 = A0_2
              L9_4(L10_4, L11_4, L12_4)
            end
          end
        end
      end
    end
    L2_3(L3_3, L4_3, L5_3)
  end
  L5_2(L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:banDarkMember"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:banDarkMember"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = Config
  L3_2 = L3_2.FrameworkFunctions
  L3_2 = L3_2.getPlayer
  L4_2 = source
  L3_2 = L3_2(L4_2)
  L4_2 = Config
  L4_2 = L4_2.FrameworkFunctions
  L4_2 = L4_2.getPlayerByIdentifier
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.fetchAll
  L6_2 = "SELECT members, bannedmembers FROM phone_darkgroups WHERE `id` = @id"
  L7_2 = {}
  L7_2["@id"] = A0_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = json
    L1_3 = L1_3.decode
    L2_3 = A0_3[1]
    L2_3 = L2_3.members
    L1_3 = L1_3(L2_3)
    L2_3 = pairs
    L3_3 = L1_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = A1_2
      if L7_3 == L8_3 then
        L8_3 = table
        L8_3 = L8_3.remove
        L9_3 = L1_3
        L10_3 = L6_3
        L8_3(L9_3, L10_3)
        break
      end
    end
    L2_3 = A0_3[1]
    L2_3 = L2_3.bannedmembers
    if nil ~= L2_3 then
      L2_3 = json
      L2_3 = L2_3.decode
      L3_3 = A0_3[1]
      L3_3 = L3_3.bannedmembers
      L2_3 = L2_3(L3_3)
      if L2_3 then
        goto lbl_35
      end
    end
    L2_3 = {}
    ::lbl_35::
    L3_3 = table
    L3_3 = L3_3.insert
    L4_3 = L2_3
    L5_3 = A1_2
    L3_3(L4_3, L5_3)
    L3_3 = MySQL
    L3_3 = L3_3.Async
    L3_3 = L3_3.execute
    L4_3 = "UPDATE phone_darkgroups SET `members` = @members, `bannedmembers` = @bannedmembers WHERE `id` = @id AND `owner` = @owner"
    L5_3 = {}
    L6_3 = A0_2
    L5_3["@id"] = L6_3
    L6_3 = L3_2.identifier
    L5_3["@owner"] = L6_3
    L6_3 = json
    L6_3 = L6_3.encode
    L7_3 = L1_3
    L6_3 = L6_3(L7_3)
    L5_3["@members"] = L6_3
    L6_3 = json
    L6_3 = L6_3.encode
    L7_3 = L2_3
    L6_3 = L6_3(L7_3)
    L5_3["@bannedmembers"] = L6_3
    function L6_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
      if A0_4 > 0 then
        L1_4 = L4_2
        if L1_4 then
          L1_4 = TriggerClientEvent
          L2_4 = "high_phone:deleteDarkGroup"
          L3_4 = L4_2.source
          L4_4 = A0_2
          L1_4(L2_4, L3_4, L4_4)
        end
        L1_4 = getDarkchatDataByIdentifier
        L2_4 = A1_2
        L1_4 = L1_4(L2_4)
        L2_4 = TriggerEvent
        L3_4 = "high_phone:sendDarkSystemMessage"
        L4_4 = A0_2
        L5_4 = replace_vars
        L6_4 = Config
        L6_4 = L6_4.Languages
        L7_4 = Config
        L7_4 = L7_4.Language
        L6_4 = L6_4[L7_4]
        L6_4 = L6_4.notifications
        L6_4 = L6_4.member_banned
        L7_4 = {}
        L8_4 = L1_4.nickname
        L7_4.memberName = L8_4
        L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4 = L5_4(L6_4, L7_4)
        L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
        L2_4 = pairs
        L3_4 = L1_3
        L2_4, L3_4, L4_4, L5_4 = L2_4(L3_4)
        for L6_4, L7_4 in L2_4, L3_4, L4_4, L5_4 do
          L8_4 = Config
          L8_4 = L8_4.FrameworkFunctions
          L8_4 = L8_4.getPlayerByIdentifier
          L9_4 = L7_4
          L8_4 = L8_4(L9_4)
          if L8_4 then
            L9_4 = L8_4.source
            L10_4 = L4_2
            if L10_4 then
              L10_4 = L4_2.source
              if L10_4 then
                goto lbl_50
              end
            end
            L10_4 = -1
            ::lbl_50::
            if L9_4 ~= L10_4 then
              L9_4 = TriggerClientEvent
              L10_4 = "high_phone:updateDarkGroup"
              L11_4 = L8_4.source
              L12_4 = A0_2
              L9_4(L10_4, L11_4, L12_4)
            end
          end
        end
      end
    end
    L3_3(L4_3, L5_3, L6_3)
  end
  L5_2(L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:deleteDarkMessage"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:deleteDarkMessage"
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
  L5_2 = "DELETE FROM phone_darkmessages WHERE `time` = @time AND `from` = @from"
  L6_2 = {}
  L6_2["@time"] = A0_2
  L7_2 = L3_2.identifier
  L6_2["@from"] = L7_2
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = MySQL
    L0_3 = L0_3.Async
    L0_3 = L0_3.fetchScalar
    L1_3 = "SELECT members FROM phone_darkgroups WHERE `id` = @id"
    L2_3 = {}
    L3_3 = A1_2
    L2_3["@id"] = L3_3
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
      L1_4 = json
      L1_4 = L1_4.decode
      L2_4 = A0_4
      L1_4 = L1_4(L2_4)
      L2_4 = pairs
      L3_4 = L1_4
      L2_4, L3_4, L4_4, L5_4 = L2_4(L3_4)
      for L6_4, L7_4 in L2_4, L3_4, L4_4, L5_4 do
        L8_4 = Config
        L8_4 = L8_4.FrameworkFunctions
        L8_4 = L8_4.getPlayerByIdentifier
        L9_4 = L7_4
        L8_4 = L8_4(L9_4)
        if L8_4 then
          L9_4 = TriggerClientEvent
          L10_4 = "high_phone:updateDarkGroup"
          L11_4 = L8_4.source
          L12_4 = A1_2
          L9_4(L10_4, L11_4, L12_4)
        end
      end
    end
    L0_3(L1_3, L2_3, L3_3)
  end
  L4_2(L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
