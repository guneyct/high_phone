local L0_1, L1_1, L2_1
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:getContacts"
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
  L5_2 = "SELECT * FROM phone_contacts WHERE `owner` = @owner"
  L6_2 = {}
  L7_2 = L2_2.identifier
  L6_2["@owner"] = L7_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L1_3 = getPlayerCalls
    L2_3 = L2_2.identifier
    L1_3 = L1_3(L2_3)
    L2_3 = pairs
    L3_3 = Config
    L3_3 = L3_3.JobContacts
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L7_3.id = L6_3
      L8_3 = table
      L8_3 = L8_3.insert
      L9_3 = A0_3
      L10_3 = 1
      L11_3 = L7_3
      L8_3(L9_3, L10_3, L11_3)
    end
    L2_3 = pairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = {}
      L7_3.calls = L8_3
      L8_3 = pairs
      L9_3 = L1_3
      L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
      for L12_3, L13_3 in L8_3, L9_3, L10_3, L11_3 do
        L14_3 = L13_3.from
        L15_3 = L7_3.number
        if L14_3 ~= L15_3 then
          L14_3 = L13_3.to
          L15_3 = L7_3.number
          if L14_3 ~= L15_3 then
            goto lbl_50
          end
        end
        L14_3 = L13_3.to
        L15_3 = L3_2
        L14_3 = L14_3 == L15_3
        L13_3.incoming = L14_3
        L14_3 = table
        L14_3 = L14_3.insert
        L15_3 = L7_3.calls
        L16_3 = L13_3
        L14_3(L15_3, L16_3)
        ::lbl_50::
      end
      L8_3 = table
      L8_3 = L8_3.sort
      L9_3 = L7_3.calls
      function L10_3(A0_4, A1_4)
        local L2_4, L3_4
        L2_4 = A0_4.time
        L3_4 = A1_4.time
        L2_4 = L2_4 > L3_4
        return L2_4
      end
      L8_3(L9_3, L10_3)
      L8_3 = pairs
      L9_3 = L7_3.calls
      L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
      for L12_3, L13_3 in L8_3, L9_3, L10_3, L11_3 do
        L14_3 = Config
        L14_3 = L14_3.ContactCallsLimit
        if L12_3 >= L14_3 then
          L14_3 = L7_3.calls
          L14_3[L12_3] = nil
        end
      end
    end
    L2_3 = A1_2
    L3_3 = json
    L3_3 = L3_3.encode
    L4_3 = A0_3
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L3_3(L4_3)
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
  end
  L4_2(L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:createContact"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = A0_2
  L7_2 = Config
  L7_2 = L7_2.FrameworkFunctions
  L7_2 = L7_2.getPlayer
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L8_2 = MySQL
  L8_2 = L8_2.Async
  L8_2 = L8_2.execute
  L9_2 = "INSERT INTO phone_contacts (`owner`, `number`, `name`, `photo`, `tag`) VALUES (@owner, @number, @name, @photo, @tag)"
  L10_2 = {}
  L11_2 = L7_2.identifier
  L10_2["@owner"] = L11_2
  L10_2["@number"] = A2_2
  L10_2["@name"] = A3_2
  L10_2["@photo"] = A4_2
  L10_2["@tag"] = A5_2
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = MySQL
    L0_3 = L0_3.Async
    L0_3 = L0_3.fetchScalar
    L1_3 = "SELECT `id` FROM phone_contacts WHERE `owner` = @owner AND `number` = @number ORDER BY `id` DESC LIMIT 1"
    L2_3 = {}
    L3_3 = L7_2.identifier
    L2_3["@owner"] = L3_3
    L3_3 = A2_2
    L2_3["@number"] = L3_3
    function L3_3(A0_4)
      local L1_4, L2_4
      L1_4 = A1_2
      L2_4 = A0_4
      L1_4(L2_4)
    end
    L0_3(L1_3, L2_3, L3_3)
  end
  L8_2(L9_2, L10_2, L11_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:editContact"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:editContact"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = source
  L6_2 = Config
  L6_2 = L6_2.FrameworkFunctions
  L6_2 = L6_2.getPlayer
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = MySQL
  L7_2 = L7_2.Async
  L7_2 = L7_2.execute
  L8_2 = "UPDATE phone_contacts SET `number` = @number, `name` = @name, `photo` = @photo, `tag` = @tag WHERE id = @id AND owner = @owner"
  L9_2 = {}
  L10_2 = L6_2.identifier
  L9_2["@owner"] = L10_2
  L9_2["@number"] = A1_2
  L9_2["@name"] = A2_2
  L9_2["@photo"] = A3_2
  L9_2["@tag"] = A4_2
  L9_2["@id"] = A0_2
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerClientEvent
    L1_3 = "high_phone:updateContacts"
    L2_3 = L5_2
    L0_3(L1_3, L2_3)
  end
  L7_2(L8_2, L9_2, L10_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:deleteContact"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:deleteContact"
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
  L5_2 = "DELETE FROM phone_contacts WHERE `id` = @id AND `owner` = @owner"
  L6_2 = {}
  L6_2["@id"] = A0_2
  L7_2 = L3_2.identifier
  L6_2["@owner"] = L7_2
  L4_2(L5_2, L6_2)
end
L0_1(L1_1, L2_1)
