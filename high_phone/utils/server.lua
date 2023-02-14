local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = nil
  L2_2 = Players
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.number
    if L9_2 == A0_2 then
      L9_2 = Config
      L9_2 = L9_2.FrameworkFunctions
      L9_2 = L9_2.getPlayer
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L1_2 = L9_2
      break
    end
  end
  return L1_2
end
getPlayerByNumber = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = nil
  L2_2 = Players
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.mailData
    L9_2 = L9_2.address
    if L9_2 == A0_2 then
      L1_2 = L8_2
      break
    end
  end
  return L1_2
end
getPlayerByMail = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = nil
  L2_2 = Players
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = Config
    L9_2 = L9_2.IdentifierColumn
    L9_2 = L8_2[L9_2]
    if L9_2 == A0_2 then
      L1_2 = L8_2
      break
    end
  end
  return L1_2
end
getPlayerByIdentifier = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchAll
  L2_2 = "SELECT * FROM "
  L3_2 = Config
  L3_2 = L3_2.PlayersTable
  L4_2 = " WHERE "
  L5_2 = Config
  L5_2 = L5_2.BankNumberColumn
  L6_2 = " = @iban LIMIT 1"
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  L3_2 = {}
  L3_2["@iban"] = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2[1]
  return L2_2
end
getUserByBank = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = getPlayerByNumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = MySQL
    L2_2 = L2_2.Sync
    L2_2 = L2_2.fetchAll
    L3_2 = "SELECT * FROM "
    L4_2 = Config
    L4_2 = L4_2.PlayersTable
    L5_2 = " WHERE "
    L6_2 = Config
    L6_2 = L6_2.PhoneNumberColumn
    L7_2 = " = @phone LIMIT 1"
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    L4_2 = {}
    L4_2["@phone"] = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2[1]
    return L3_2
  else
    return L1_2
  end
end
getUserByNumber = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = getPlayerByIdentifier
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = MySQL
    L2_2 = L2_2.Sync
    L2_2 = L2_2.fetchScalar
    L3_2 = "SELECT mailaccount FROM "
    L4_2 = Config
    L4_2 = L4_2.PlayersTable
    L5_2 = " WHERE "
    L6_2 = Config
    L6_2 = L6_2.IdentifierColumn
    L7_2 = " = @identifier"
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    L4_2 = {}
    L4_2["@identifier"] = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    return L2_2
  else
    L2_2 = L1_2.mailData
    L2_2 = L2_2.address
    return L2_2
  end
end
getMailAccountByIdentifier = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = getPlayerByIdentifier
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = MySQL
    L2_2 = L2_2.Sync
    L2_2 = L2_2.fetchScalar
    L3_2 = "SELECT "
    L4_2 = Config
    L4_2 = L4_2.PhoneNumberColumn
    L5_2 = " FROM "
    L6_2 = Config
    L6_2 = L6_2.PlayersTable
    L7_2 = " WHERE "
    L8_2 = Config
    L8_2 = L8_2.IdentifierColumn
    L9_2 = " = @identifier"
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    L4_2 = {}
    L4_2["@identifier"] = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    return L2_2
  else
    L2_2 = L1_2.number
    return L2_2
  end
end
getNumberByIdentifier = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchScalar
  L2_2 = "SELECT darkchatuser FROM "
  L3_2 = Config
  L3_2 = L3_2.PlayersTable
  L4_2 = " WHERE "
  L5_2 = Config
  L5_2 = L5_2.IdentifierColumn
  L6_2 = " = @identifier"
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  L3_2 = {}
  L3_2["@identifier"] = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if nil ~= L1_2 then
    L2_2 = json
    L2_2 = L2_2.decode
    L3_2 = L1_2
    return L2_2(L3_2)
  else
    L2_2 = {}
    L3_2 = Config
    L3_2 = L3_2.Languages
    L4_2 = Config
    L4_2 = L4_2.Language
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.unknown
    L2_2.nickname = L3_2
    L2_2.photo = ""
    return L2_2
  end
end
getDarkchatDataByIdentifier = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchScalar
  L2_2 = "SELECT calls FROM "
  L3_2 = Config
  L3_2 = L3_2.PlayersTable
  L4_2 = " WHERE "
  L5_2 = Config
  L5_2 = L5_2.IdentifierColumn
  L6_2 = " = @identifier"
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  L3_2 = {}
  L3_2["@identifier"] = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if nil ~= L1_2 then
    L2_2 = json
    L2_2 = L2_2.decode
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
    L2_2 = table
    L2_2 = L2_2.sort
    L3_2 = L1_2
    function L4_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = A0_3.time
      L3_3 = A1_3.time
      L2_3 = L2_3 > L3_3
      return L2_3
    end
    L2_2(L3_2, L4_2)
    return L1_2
  else
    L2_2 = {}
    return L2_2
  end
end
getPlayerCalls = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchScalar
  L2_2 = "SELECT maildata FROM "
  L3_2 = Config
  L3_2 = L3_2.PlayersTable
  L4_2 = " WHERE "
  L5_2 = Config
  L5_2 = L5_2.IdentifierColumn
  L6_2 = " = @identifier"
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  L3_2 = {}
  L3_2["@identifier"] = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if nil ~= L1_2 then
    L2_2 = json
    L2_2 = L2_2.decode
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
    return L1_2
  else
    L2_2 = {}
    return L2_2
  end
end
getPlayerMailData = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchScalar
  L2_2 = "SELECT notes FROM "
  L3_2 = Config
  L3_2 = L3_2.PlayersTable
  L4_2 = " WHERE "
  L5_2 = Config
  L5_2 = L5_2.IdentifierColumn
  L6_2 = " = @identifier"
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  L3_2 = {}
  L3_2["@identifier"] = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if nil ~= L1_2 then
    L2_2 = json
    L2_2 = L2_2.decode
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
    L2_2 = table
    L2_2 = L2_2.sort
    L3_2 = L1_2
    function L4_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = A0_3.time
      L3_3 = A1_3.time
      L2_3 = L2_3 > L3_3
      return L2_3
    end
    L2_2(L3_2, L4_2)
    return L1_2
  else
    L2_2 = {}
    return L2_2
  end
end
getPlayerNotes = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = type
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if "string" == L3_2 then
      L3_2 = MySQL
      L3_2 = L3_2.Sync
      L3_2 = L3_2.fetchScalar
      L4_2 = "SELECT "
      L5_2 = A1_2
      L6_2 = " FROM "
      L7_2 = Config
      L7_2 = L7_2.PlayersTable
      L8_2 = " WHERE "
      L9_2 = Config
      L9_2 = L9_2.IdentifierColumn
      L10_2 = " = @identifier"
      L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
      L5_2 = {}
      L6_2 = L2_2.identifier
      L5_2["@identifier"] = L6_2
      L3_2 = L3_2(L4_2, L5_2)
      return L3_2
    else
      L3_2 = ""
      L4_2 = #A1_2
      L5_2 = pairs
      L6_2 = A1_2
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        L11_2 = L3_2
        L12_2 = L10_2
        if L9_2 ~= L4_2 then
          L13_2 = ", "
          if L13_2 then
            goto lbl_47
          end
        end
        L13_2 = ""
        ::lbl_47::
        L11_2 = L11_2 .. L12_2 .. L13_2
        L3_2 = L11_2
      end
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.fetchAll
      L6_2 = "SELECT "
      L7_2 = L3_2
      L8_2 = " FROM "
      L9_2 = Config
      L9_2 = L9_2.PlayersTable
      L10_2 = " WHERE "
      L11_2 = Config
      L11_2 = L11_2.IdentifierColumn
      L12_2 = " = @identifier"
      L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
      L7_2 = {}
      L8_2 = L2_2.identifier
      L7_2["@identifier"] = L8_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = L5_2[1]
      if L6_2 then
        L6_2 = {}
        L7_2 = pairs
        L8_2 = A1_2
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
          L13_2 = L5_2[1]
          L13_2 = L13_2[L12_2]
          L6_2[L11_2] = L13_2
        end
        return L6_2
      else
        L6_2 = nil
        return L6_2
      end
    end
  else
    L3_2 = nil
    return L3_2
  end
end
getPlayerData = L0_1
function L0_1(A0_2)
  local L1_2
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = Config
    L0_3 = L0_3.GenerateRandomNumber
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    L1_3 = MySQL
    L1_3 = L1_3.Sync
    L1_3 = L1_3.fetchScalar
    L2_3 = "SELECT "
    L3_3 = Config
    L3_3 = L3_3.PhoneNumberColumn
    L4_3 = " FROM "
    L5_3 = Config
    L5_3 = L5_3.PlayersTable
    L6_3 = " WHERE "
    L7_3 = Config
    L7_3 = L7_3.PhoneNumberColumn
    L8_3 = " = @number"
    L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3
    L3_3 = {}
    L3_3["@number"] = L0_3
    L1_3 = L1_3(L2_3, L3_3)
    if nil ~= L1_3 then
      L2_3 = cb
      return L2_3()
    else
      return L0_3
    end
  end
  cb = L1_2
  L1_2 = cb
  return L1_2()
end
getRandomNumber = L0_1

function L0_1(A0_2)
  local L1_2
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = Config
    L0_3 = L0_3.GenerateRandomIBAN
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    L1_3 = MySQL
    L1_3 = L1_3.Sync
    L1_3 = L1_3.fetchScalar
    L2_3 = "SELECT "
    L3_3 = Config
    L3_3 = L3_3.BankNumberColumn
    L4_3 = " FROM "
    L5_3 = Config
    L5_3 = L5_3.PlayersTable
    L6_3 = " WHERE "
    L7_3 = Config
    L7_3 = L7_3.BankNumberColumn
    L8_3 = " = @iban"
    L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3
    L3_3 = {}
    L3_3["@iban"] = L0_3
    L1_3 = L1_3(L2_3, L3_3)
    if nil ~= L1_3 then
      L2_3 = cb
      return L2_3()
    else
      return L0_3
    end
  end
  cb = L1_2
  L1_2 = cb
  return L1_2()
end
getRandomIBAN = L0_1
