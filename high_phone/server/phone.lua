local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Config
    L7_2 = L7_2.FrameworkFunctions
    L7_2 = L7_2.getPlayer
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = Config
    L8_2 = L8_2.FrameworkFunctions
    L8_2 = L8_2.getPlayer
    L9_2 = L6_2.user
    L8_2 = L8_2(L9_2)
    if L5_2 == A0_2 then
      L9_2 = getPlayerCalls
      L10_2 = L7_2.identifier
      L9_2 = L9_2(L10_2)
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L9_2
      L12_2 = {}
      if L7_2 then
        L13_2 = getNumberByIdentifier
        L14_2 = L7_2.identifier
        L13_2 = L13_2(L14_2)
        if L13_2 then
          goto lbl_33
        end
      end
      L13_2 = nil
      ::lbl_33::
      L12_2.from = L13_2
      L13_2 = L6_2.userNumber
      L12_2.to = L13_2
      L13_2 = L6_2.time
      if L13_2 > 0 then
        L13_2 = os
        L13_2 = L13_2.time
        L13_2 = L13_2()
        L14_2 = L6_2.time
        L13_2 = L13_2 - L14_2
        if L13_2 then
          goto lbl_48
        end
      end
      L13_2 = 0
      ::lbl_48::
      L12_2.length = L13_2
      L13_2 = os
      L13_2 = L13_2.time
      L13_2 = L13_2()
      L13_2 = L13_2 * 1000
      L12_2.time = L13_2
      L10_2(L11_2, L12_2)
      L10_2 = MySQL
      L10_2 = L10_2.Async
      L10_2 = L10_2.execute
      L11_2 = "UPDATE "
      L12_2 = Config
      L12_2 = L12_2.PlayersTable
      L13_2 = " SET calls = @calls WHERE "
      L14_2 = Config
      L14_2 = L14_2.IdentifierColumn
      L15_2 = " = @identifier"
      L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
      L12_2 = {}
      L13_2 = L7_2.identifier
      L12_2["@identifier"] = L13_2
      L13_2 = json
      L13_2 = L13_2.encode
      L14_2 = L9_2
      L13_2 = L13_2(L14_2)
      L12_2["@calls"] = L13_2
      function L13_2()
        local L0_3, L1_3, L2_3
        L0_3 = TriggerClientEvent
        L1_3 = "high_phone:updateCalls"
        L2_3 = A0_2
        L0_3(L1_3, L2_3)
        L0_3 = TriggerClientEvent
        L1_3 = "high_phone:updateContacts"
        L2_3 = A0_2
        L0_3(L1_3, L2_3)
      end
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = L6_2.user
      if L10_2 then
        L10_2 = getPlayerCalls
        L11_2 = L8_2.identifier
        L10_2 = L10_2(L11_2)
        L11_2 = table
        L11_2 = L11_2.insert
        L12_2 = L10_2
        L13_2 = {}
        L14_2 = L6_2.anonymous
        if not L14_2 and L7_2 then
          L14_2 = getNumberByIdentifier
          L15_2 = L7_2.identifier
          L14_2 = L14_2(L15_2)
          if L14_2 then
            goto lbl_105
          end
        end
        L14_2 = Config
        L14_2 = L14_2.Languages
        L15_2 = Config
        L15_2 = L15_2.Language
        L14_2 = L14_2[L15_2]
        L14_2 = L14_2.unknown_caller
        ::lbl_105::
        L13_2.from = L14_2
        L14_2 = L6_2.userNumber
        L13_2.to = L14_2
        L14_2 = L6_2.time
        if L14_2 > 0 then
          L14_2 = os
          L14_2 = L14_2.time
          L14_2 = L14_2()
          L15_2 = L6_2.time
          L14_2 = L14_2 - L15_2
          if L14_2 then
            goto lbl_120
          end
        end
        L14_2 = 0
        ::lbl_120::
        L13_2.length = L14_2
        L14_2 = os
        L14_2 = L14_2.time
        L14_2 = L14_2()
        L14_2 = L14_2 * 1000
        L13_2.time = L14_2
        L11_2(L12_2, L13_2)
        L11_2 = MySQL
        L11_2 = L11_2.Async
        L11_2 = L11_2.execute
        L12_2 = "UPDATE "
        L13_2 = Config
        L13_2 = L13_2.PlayersTable
        L14_2 = " SET calls = @calls WHERE "
        L15_2 = Config
        L15_2 = L15_2.IdentifierColumn
        L16_2 = " = @identifier"
        L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
        L13_2 = {}
        L14_2 = L8_2.identifier
        L13_2["@identifier"] = L14_2
        L14_2 = json
        L14_2 = L14_2.encode
        L15_2 = L10_2
        L14_2 = L14_2(L15_2)
        L13_2["@calls"] = L14_2
        function L14_2()
          local L0_3, L1_3, L2_3
          L0_3 = TriggerClientEvent
          L1_3 = "high_phone:updateCalls"
          L2_3 = L6_2.user
          L0_3(L1_3, L2_3)
          L0_3 = TriggerClientEvent
          L1_3 = "high_phone:updateContacts"
          L2_3 = L6_2.user
          L0_3(L1_3, L2_3)
        end
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = getNumberByIdentifier
        L12_2 = L7_2.identifier
        L11_2 = L11_2(L12_2)
        L12_2 = TriggerClientEvent
        L13_2 = "high_phone:endCall"
        L14_2 = L6_2.user
        L15_2 = L11_2
        L12_2(L13_2, L14_2, L15_2)
      end
      L10_2 = L0_1
      L10_2[L5_2] = nil
      L10_2 = Config
      L10_2 = L10_2.Voice
      if "saltychat" == L10_2 then
        L10_2 = exports
        L10_2 = L10_2.saltychat
        L11_2 = L10_2
        L10_2 = L10_2.RemovePlayersFromCall
        L12_2 = ""
        L13_2 = L6_2.id
        L14_2 = ""
        L12_2 = L12_2 .. L13_2 .. L14_2
        L13_2 = {}
        L14_2 = L5_2
        L15_2 = L6_2.user
        L13_2[1] = L14_2
        L13_2[2] = L15_2
        L10_2(L11_2, L12_2, L13_2)
      end
    else
      L9_2 = L6_2.user
      if L9_2 == A0_2 then
        L9_2 = getPlayerCalls
        L10_2 = L7_2.identifier
        L9_2 = L9_2(L10_2)
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L9_2
        L12_2 = {}
        if L7_2 then
          L13_2 = getNumberByIdentifier
          L14_2 = L7_2.identifier
          L13_2 = L13_2(L14_2)
          if L13_2 then
            goto lbl_197
          end
        end
        L13_2 = nil
        ::lbl_197::
        L12_2.from = L13_2
        L13_2 = L6_2.userNumber
        L12_2.to = L13_2
        L13_2 = L6_2.time
        if L13_2 > 0 then
          L13_2 = os
          L13_2 = L13_2.time
          L13_2 = L13_2()
          L14_2 = L6_2.time
          L13_2 = L13_2 - L14_2
          if L13_2 then
            goto lbl_212
          end
        end
        L13_2 = 0
        ::lbl_212::
        L12_2.length = L13_2
        L13_2 = os
        L13_2 = L13_2.time
        L13_2 = L13_2()
        L13_2 = L13_2 * 1000
        L12_2.time = L13_2
        L10_2(L11_2, L12_2)
        L10_2 = MySQL
        L10_2 = L10_2.Async
        L10_2 = L10_2.execute
        L11_2 = "UPDATE "
        L12_2 = Config
        L12_2 = L12_2.PlayersTable
        L13_2 = " SET calls = @calls WHERE "
        L14_2 = Config
        L14_2 = L14_2.IdentifierColumn
        L15_2 = " = @identifier"
        L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
        L12_2 = {}
        L13_2 = L7_2.identifier
        L12_2["@identifier"] = L13_2
        L13_2 = json
        L13_2 = L13_2.encode
        L14_2 = L9_2
        L13_2 = L13_2(L14_2)
        L12_2["@calls"] = L13_2
        function L13_2()
          local L0_3, L1_3, L2_3
          L0_3 = TriggerClientEvent
          L1_3 = "high_phone:updateCalls"
          L2_3 = A0_2
          L0_3(L1_3, L2_3)
          L0_3 = TriggerClientEvent
          L1_3 = "high_phone:updateContacts"
          L2_3 = A0_2
          L0_3(L1_3, L2_3)
        end
        L10_2(L11_2, L12_2, L13_2)
        if L7_2 then
          L10_2 = getPlayerCalls
          L11_2 = L8_2.identifier
          L10_2 = L10_2(L11_2)
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L10_2
          L13_2 = {}
          L14_2 = L6_2.anonymous
          if not L14_2 and L7_2 then
            L14_2 = getNumberByIdentifier
            L15_2 = L7_2.identifier
            L14_2 = L14_2(L15_2)
            if L14_2 then
              goto lbl_268
            end
          end
          L14_2 = Config
          L14_2 = L14_2.Languages
          L15_2 = Config
          L15_2 = L15_2.Language
          L14_2 = L14_2[L15_2]
          L14_2 = L14_2.unknown_caller
          ::lbl_268::
          L13_2.from = L14_2
          L14_2 = L6_2.userNumber
          L13_2.to = L14_2
          L14_2 = L6_2.time
          if L14_2 > 0 then
            L14_2 = os
            L14_2 = L14_2.time
            L14_2 = L14_2()
            L15_2 = L6_2.time
            L14_2 = L14_2 - L15_2
            if L14_2 then
              goto lbl_283
            end
          end
          L14_2 = 0
          ::lbl_283::
          L13_2.length = L14_2
          L14_2 = os
          L14_2 = L14_2.time
          L14_2 = L14_2()
          L14_2 = L14_2 * 1000
          L13_2.time = L14_2
          L11_2(L12_2, L13_2)
          L11_2 = MySQL
          L11_2 = L11_2.Async
          L11_2 = L11_2.execute
          L12_2 = "UPDATE "
          L13_2 = Config
          L13_2 = L13_2.PlayersTable
          L14_2 = " SET calls = @calls WHERE "
          L15_2 = Config
          L15_2 = L15_2.IdentifierColumn
          L16_2 = " = @identifier"
          L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
          L13_2 = {}
          L14_2 = L8_2.identifier
          L13_2["@identifier"] = L14_2
          L14_2 = json
          L14_2 = L14_2.encode
          L15_2 = L10_2
          L14_2 = L14_2(L15_2)
          L13_2["@calls"] = L14_2
          function L14_2()
            local L0_3, L1_3, L2_3
            L0_3 = TriggerClientEvent
            L1_3 = "high_phone:updateCalls"
            L2_3 = L5_2
            L0_3(L1_3, L2_3)
            L0_3 = TriggerClientEvent
            L1_3 = "high_phone:updateContacts"
            L2_3 = L5_2
            L0_3(L1_3, L2_3)
          end
          L11_2(L12_2, L13_2, L14_2)
          L11_2 = getNumberByIdentifier
          L12_2 = L8_2.identifier
          L11_2 = L11_2(L12_2)
          L12_2 = TriggerClientEvent
          L13_2 = "high_phone:endCall"
          L14_2 = L5_2
          L15_2 = L11_2
          L12_2(L13_2, L14_2, L15_2)
        end
        L10_2 = L0_1
        L10_2[L5_2] = nil
        L10_2 = Config
        L10_2 = L10_2.Voice
        if "saltychat" == L10_2 then
          L10_2 = exports
          L10_2 = L10_2.saltychat
          L11_2 = L10_2
          L10_2 = L10_2.RemovePlayersFromCall
          L12_2 = ""
          L13_2 = L6_2.id
          L14_2 = ""
          L12_2 = L12_2 .. L13_2 .. L14_2
          L13_2 = {}
          L14_2 = L5_2
          L15_2 = L6_2.user
          L13_2[1] = L14_2
          L13_2[2] = L15_2
          L10_2(L11_2, L12_2, L13_2)
        end
      end
    end
  end
end
L2_1 = Config
L2_1 = L2_1.FrameworkFunctions
L2_1 = L2_1.registerCallback
L3_1 = "high_phone:getCalls"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = getPlayerCalls
  L4_2 = L2_2.identifier
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = Config
    L10_2 = L10_2.CallsLimit
    if L8_2 >= L10_2 then
      L3_2[L8_2] = nil
    end
  end
  L4_2 = A1_2
  L5_2 = json
  L5_2 = L5_2.encode
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "high_phone:clearCalls"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "high_phone:clearCalls"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = getPlayerCalls
  L4_2 = L2_2.identifier
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.from
    if L10_2 ~= A0_2 then
      L10_2 = L9_2.to
      if L10_2 ~= A0_2 then
        goto lbl_21
      end
    end
    L3_2[L8_2] = nil
    ::lbl_21::
  end
  L4_2 = {}
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L10_2 then
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L4_2
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
    end
  end
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.execute
  L6_2 = "UPDATE "
  L7_2 = Config
  L7_2 = L7_2.PlayersTable
  L8_2 = " SET calls = @calls WHERE "
  L9_2 = Config
  L9_2 = L9_2.IdentifierColumn
  L10_2 = " = @identifier"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L7_2 = {}
  L8_2 = L2_2.identifier
  L7_2["@identifier"] = L8_2
  L8_2 = json
  L8_2 = L8_2.encode
  L9_2 = L4_2
  L8_2 = L8_2(L9_2)
  L7_2["@calls"] = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerClientEvent
    L1_3 = "high_phone:updateCalls"
    L2_3 = L1_2
    L0_3(L1_3, L2_3)
    L0_3 = TriggerClientEvent
    L1_3 = "high_phone:updateContacts"
    L2_3 = L1_2
    L0_3(L1_3, L2_3)
  end
  L5_2(L6_2, L7_2, L8_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "high_phone:deleteCall"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "high_phone:deleteCall"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = getPlayerCalls
  L4_2 = L2_2.identifier
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.time
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
  L7_2 = " SET calls = @calls WHERE "
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
  L6_2["@calls"] = L7_2
  L4_2(L5_2, L6_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "high_phone:clearAllCalls"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "high_phone:clearAllCalls"
function L4_1(A0_2)
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
  L6_2 = " SET calls = '[]' WHERE "
  L7_2 = Config
  L7_2 = L7_2.IdentifierColumn
  L8_2 = " = @identifier"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L5_2 = {}
  L6_2 = L2_2.identifier
  L5_2["@identifier"] = L6_2
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerClientEvent
    L1_3 = "high_phone:updateContacts"
    L2_3 = L1_2
    L0_3(L1_3, L2_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
L2_1(L3_1, L4_1)
L2_1 = Config
L2_1 = L2_1.FrameworkFunctions
L2_1 = L2_1.registerCallback
L3_1 = "high_phone:callNumber"
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L4_2 = Config
  L4_2 = L4_2.FrameworkFunctions
  L4_2 = L4_2.getPlayer
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.number
  L6_2 = getPlayerByNumber
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L7_2 = math
  L7_2 = L7_2.randomseed
  L8_2 = os
  L8_2 = L8_2.time
  L8_2 = L8_2()
  L8_2 = A0_2 + L8_2
  L7_2(L8_2)
  L7_2 = nil
  L8_2 = pairs
  L9_2 = Config
  L9_2 = L9_2.JobContacts
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = L13_2.number
    if A2_2 == L14_2 then
      L14_2 = L13_2.callable
      if L14_2 then
        L7_2 = L12_2
      end
    end
  end
  if L6_2 and not L7_2 then
    L8_2 = "SUCCESS"
    L9_2 = pairs
    L10_2 = L0_1
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = L6_2.source
      if L13_2 ~= L15_2 then
        L15_2 = L14_2.user
        L16_2 = L6_2.source
        if L15_2 ~= L16_2 then
          goto lbl_58
        end
      end
      L15_2 = Config
      L15_2 = L15_2.Languages
      L16_2 = Config
      L16_2 = L16_2.Language
      L15_2 = L15_2[L16_2]
      L15_2 = L15_2.notifications
      L8_2 = L15_2.userbusy
      do break end
      ::lbl_58::
    end
    L9_2 = Players
    L10_2 = L6_2.source
    L9_2 = L9_2[L10_2]
    if nil ~= L9_2 then
      L9_2 = Players
      L10_2 = L6_2.source
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.airplane
      if not L9_2 then
        goto lbl_79
      end
    end
    L9_2 = Config
    L9_2 = L9_2.Languages
    L10_2 = Config
    L10_2 = L10_2.Language
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2.notifications
    L8_2 = L9_2.usernotavailable
    ::lbl_79::
    if "SUCCESS" == L8_2 then
      L9_2 = L0_1
      L10_2 = {}
      L11_2 = math
      L11_2 = L11_2.random
      L12_2 = 11111111
      L13_2 = 999999999
      L11_2 = L11_2(L12_2, L13_2)
      L10_2.id = L11_2
      L11_2 = L6_2.source
      L10_2.user = L11_2
      L10_2.userNumber = A2_2
      L10_2.time = 0
      L10_2.status = "calling"
      L10_2.anonymous = A3_2
      L9_2[A0_2] = L10_2
      L9_2 = TriggerClientEvent
      L10_2 = "high_phone:incomingCall"
      L11_2 = L6_2.source
      L12_2 = L0_1
      L12_2 = L12_2[A0_2]
      L12_2 = L12_2.id
      L13_2 = L5_2
      L14_2 = A3_2
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    end
    L9_2 = A1_2
    L10_2 = L8_2
    L9_2(L10_2)
  elseif L7_2 then
    L8_2 = Config
    L8_2 = L8_2.FrameworkFunctions
    L8_2 = L8_2.getPlayers
    L8_2 = L8_2()
    L9_2 = false
    L10_2 = 1
    L11_2 = #L8_2
    L12_2 = 1
    for L13_2 = L10_2, L11_2, L12_2 do
      L14_2 = Config
      L14_2 = L14_2.FrameworkFunctions
      L14_2 = L14_2.getPlayer
      L15_2 = L8_2[L13_2]
      L14_2 = L14_2(L15_2)
      L15_2 = L14_2.jobName
      if L15_2 == L7_2 then
        L15_2 = L14_2.source
        if L15_2 ~= A0_2 then
          L15_2 = L14_2.onDuty
          if nil ~= L15_2 then
            L15_2 = L14_2.onDuty
            if L15_2 then
              goto lbl_141
            end
          end
          L15_2 = L14_2.onDuty
          ::lbl_141::
          if nil == L15_2 then
            L15_2 = true
            L16_2 = pairs
            L17_2 = L0_1
            L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
            for L20_2, L21_2 in L16_2, L17_2, L18_2, L19_2 do
              L22_2 = L14_2.source
              if L20_2 ~= L22_2 then
                L22_2 = L21_2.user
                L23_2 = L14_2.source
                if L22_2 ~= L23_2 then
                  goto lbl_155
                end
              end
              L15_2 = false
              do break end
              ::lbl_155::
            end
            if L15_2 then
              L9_2 = true
              L16_2 = L0_1
              L17_2 = {}
              L18_2 = math
              L18_2 = L18_2.random
              L19_2 = 11111111
              L20_2 = 999999999
              L18_2 = L18_2(L19_2, L20_2)
              L17_2.id = L18_2
              L17_2.user = A2_2
              L17_2.userNumber = A2_2
              L17_2.time = 0
              L17_2.status = "calling"
              L17_2.anonymous = A3_2
              L16_2[A0_2] = L17_2
              L16_2 = TriggerClientEvent
              L17_2 = "high_phone:incomingJobCall"
              L18_2 = L14_2.source
              L19_2 = L0_1
              L19_2 = L19_2[A0_2]
              L19_2 = L19_2.id
              L20_2 = L5_2
              L21_2 = A3_2
              L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
            end
          end
        end
      end
    end
    if L9_2 then
      L10_2 = A1_2
      L11_2 = "SUCCESS"
      L10_2(L11_2)
    else
      L10_2 = A1_2
      L11_2 = Config
      L11_2 = L11_2.Languages
      L12_2 = Config
      L12_2 = L12_2.Language
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2.notifications
      L11_2 = L11_2.noavailableunits
      L10_2(L11_2)
    end
  else
    L8_2 = L0_1
    L9_2 = {}
    L10_2 = math
    L10_2 = L10_2.random
    L11_2 = 11111111
    L12_2 = 999999999
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.id = L10_2
    L9_2.user = nil
    L9_2.userNumber = A2_2
    L9_2.time = 0
    L9_2.status = "calling"
    L9_2.anonymous = A3_2
    L8_2[A0_2] = L9_2
    L8_2 = A1_2
    L9_2 = "SUCCESS"
    L8_2(L9_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "high_phone:pickupCall"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "high_phone:pickupCall"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = getPlayerByNumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = L2_2.source
    L3_2 = L0_1
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L4_2 = L2_2.source
      L3_2 = L0_1
      L3_2 = L3_2[L4_2]
      L3_2.status = "oncall"
      L4_2 = L2_2.source
      L3_2 = L0_1
      L3_2 = L3_2[L4_2]
      L4_2 = os
      L4_2 = L4_2.time
      L4_2 = L4_2()
      L3_2.time = L4_2
      L3_2 = TriggerClientEvent
      L4_2 = "high_phone:changeCallStatus"
      L5_2 = L2_2.source
      L7_2 = L2_2.source
      L6_2 = L0_1
      L6_2 = L6_2[L7_2]
      L6_2 = L6_2.status
      L8_2 = L2_2.source
      L7_2 = L0_1
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.id
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = Config
      L3_2 = L3_2.Voice
      if "saltychat" == L3_2 then
        L3_2 = exports
        L3_2 = L3_2.saltychat
        L4_2 = L3_2
        L3_2 = L3_2.AddPlayersToCall
        L5_2 = ""
        L7_2 = L2_2.source
        L6_2 = L0_1
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2.id
        L7_2 = ""
        L5_2 = L5_2 .. L6_2 .. L7_2
        L6_2 = {}
        L7_2 = L2_2.source
        L8_2 = L1_2
        L6_2[1] = L7_2
        L6_2[2] = L8_2
        L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "high_phone:pickupJobCall"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "high_phone:pickupJobCall"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = source
  L2_2 = getPlayerByNumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = L2_2.source
    L3_2 = L0_1
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L4_2 = L2_2.source
      L3_2 = L0_1
      L3_2 = L3_2[L4_2]
      L3_2.status = "oncall"
      L4_2 = L2_2.source
      L3_2 = L0_1
      L3_2 = L3_2[L4_2]
      L4_2 = os
      L4_2 = L4_2.time
      L4_2 = L4_2()
      L3_2.time = L4_2
      L4_2 = L2_2.source
      L3_2 = L0_1
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.user
      L4_2 = pairs
      L5_2 = Config
      L5_2 = L5_2.JobContacts
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L11_2 = L2_2.source
        L10_2 = L0_1
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.user
        L11_2 = L9_2.number
        if L10_2 == L11_2 then
          L3_2 = L8_2
        end
      end
      L4_2 = Config
      L4_2 = L4_2.FrameworkFunctions
      L4_2 = L4_2.getPlayers
      L4_2 = L4_2()
      L5_2 = 1
      L6_2 = #L4_2
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = Config
        L9_2 = L9_2.FrameworkFunctions
        L9_2 = L9_2.getPlayer
        L10_2 = L4_2[L8_2]
        L9_2 = L9_2(L10_2)
        L10_2 = L9_2.jobName
        if L10_2 == L3_2 then
          L10_2 = L9_2.source
          if L10_2 ~= L1_2 then
            L10_2 = TriggerClientEvent
            L11_2 = "high_phone:cancelJobCall"
            L12_2 = L9_2.source
            L13_2 = A0_2
            L10_2(L11_2, L12_2, L13_2)
          end
        end
      end
      L5_2 = TriggerClientEvent
      L6_2 = "high_phone:changeCallStatus"
      L7_2 = L2_2.source
      L9_2 = L2_2.source
      L8_2 = L0_1
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.status
      L10_2 = L2_2.source
      L9_2 = L0_1
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.id
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L6_2 = L2_2.source
      L5_2 = L0_1
      L5_2 = L5_2[L6_2]
      L5_2.user = L1_2
      L5_2 = Config
      L5_2 = L5_2.Voice
      if "saltychat" == L5_2 then
        L5_2 = exports
        L5_2 = L5_2.saltychat
        L6_2 = L5_2
        L5_2 = L5_2.AddPlayersToCall
        L7_2 = ""
        L9_2 = L2_2.source
        L8_2 = L0_1
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.id
        L9_2 = ""
        L7_2 = L7_2 .. L8_2 .. L9_2
        L8_2 = {}
        L9_2 = L2_2.source
        L10_2 = L1_2
        L8_2[1] = L9_2
        L8_2[2] = L10_2
        L5_2(L6_2, L7_2, L8_2)
      end
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "high_phone:endCall"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "high_phone:endCall"
function L4_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L1_2 = source
  L0_2(L1_2)
end
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = Config
L3_1 = L3_1.Events
L3_1 = L3_1.playerDropped
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = A0_2
  L1_2(L2_2)
end
L2_1(L3_1, L4_1)
