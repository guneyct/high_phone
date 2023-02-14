local L0_1, L1_1, L2_1
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:getMail"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Players
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.mailData
  L4_2 = L3_2.address
  if L4_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Async
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM phone_mail WHERE `owner` = @owner LIMIT "
    L6_2 = Config
    L6_2 = L6_2.MailLimit
    L5_2 = L5_2 .. L6_2
    L6_2 = {}
    L7_2 = L3_2.address
    L6_2["@owner"] = L7_2
    function L7_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = A1_2
      L2_3 = {}
      L2_3.mail = A0_3
      L3_3 = L3_2
      L2_3.mailData = L3_3
      L1_3(L2_3)
    end
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = A1_2
    L5_2 = {}
    L6_2 = {}
    L5_2.mail = L6_2
    L6_2 = {}
    L5_2.mailData = L6_2
    L4_2(L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:mailLogin"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = Config
  L4_2 = L4_2.FrameworkFunctions
  L4_2 = L4_2.getPlayer
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = A2_2
  L6_2 = Config
  L6_2 = L6_2.MailFormat
  L5_2 = L5_2 .. L6_2
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.fetchScalar
  L7_2 = "SELECT password FROM phone_mailaccounts WHERE address = @address"
  L8_2 = {}
  L8_2["@address"] = L5_2
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    if A0_3 then
      L1_3 = Config
      L1_3 = L1_3.HashPasswords
      if L1_3 then
        L1_3 = VerifyPasswordHash
        L2_3 = A3_2
        L3_3 = A0_3
        L1_3 = L1_3(L2_3, L3_3)
        if L1_3 then
          goto lbl_16
        end
      end
      L1_3 = A3_2
      ::lbl_16::
      if A0_3 == L1_3 then
        L1_3 = A1_2
        L2_3 = "SUCCESS"
        L1_3(L2_3)
        L1_3 = MySQL
        L1_3 = L1_3.Sync
        L1_3 = L1_3.execute
        L2_3 = "UPDATE "
        L3_3 = Config
        L3_3 = L3_3.PlayersTable
        L4_3 = " SET mailaccount = @address WHERE "
        L5_3 = Config
        L5_3 = L5_3.IdentifierColumn
        L6_3 = " = @identifier"
        L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3
        L3_3 = {}
        L4_3 = L5_2
        L3_3["@address"] = L4_3
        L4_3 = L4_2.identifier
        L3_3["@identifier"] = L4_3
        L1_3(L2_3, L3_3)
        L1_3 = MySQL
        L1_3 = L1_3.Sync
        L1_3 = L1_3.fetchAll
        L2_3 = "SELECT name, photo FROM phone_mailaccounts WHERE address = @address LIMIT 1"
        L3_3 = {}
        L4_3 = L5_2
        L3_3["@address"] = L4_3
        L1_3 = L1_3(L2_3, L3_3)
        L2_3 = Players
        L3_3 = A0_2
        L2_3 = L2_3[L3_3]
        L3_3 = {}
        L4_3 = L5_2
        L3_3.address = L4_3
        L4_3 = L1_3[1]
        L4_3 = L4_3.name
        L3_3.name = L4_3
        L4_3 = L1_3[1]
        L4_3 = L4_3.photo
        L3_3.photo = L4_3
        L2_3.mailData = L3_3
        L2_3 = TriggerClientEvent
        L3_3 = "high_phone:updateMail"
        L4_3 = A0_2
        L2_3(L3_3, L4_3)
      else
        L1_3 = A1_2
        L2_3 = Config
        L2_3 = L2_3.Languages
        L3_3 = Config
        L3_3 = L3_3.Language
        L2_3 = L2_3[L3_3]
        L2_3 = L2_3.notifications
        L2_3 = L2_3.wrongpassword
        L1_3(L2_3)
      end
    else
      L1_3 = A1_2
      L2_3 = Config
      L2_3 = L2_3.Languages
      L3_3 = Config
      L3_3 = L3_3.Language
      L2_3 = L2_3[L3_3]
      L2_3 = L2_3.notifications
      L2_3 = L2_3.userdoesntexist
      L1_3(L2_3)
    end
  end
  L6_2(L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:mailRegister"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = Config
  L5_2 = L5_2.FrameworkFunctions
  L5_2 = L5_2.getPlayer
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = A3_2
  L7_2 = Config
  L7_2 = L7_2.MailFormat
  L6_2 = L6_2 .. L7_2
  L7_2 = MySQL
  L7_2 = L7_2.Async
  L7_2 = L7_2.fetchScalar
  L8_2 = "SELECT address FROM phone_mailaccounts WHERE address = @address"
  L9_2 = {}
  L9_2["@address"] = L6_2
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if nil == A0_3 then
      L1_3 = MySQL
      L1_3 = L1_3.Async
      L1_3 = L1_3.execute
      L2_3 = "INSERT INTO phone_mailaccounts (`address`, `name`, `password`) VALUES(@address, @name, @pass)"
      L3_3 = {}
      L4_3 = A2_2
      L3_3["@name"] = L4_3
      L4_3 = L6_2
      L3_3["@address"] = L4_3
      L4_3 = Config
      L4_3 = L4_3.HashPasswords
      if L4_3 then
        L4_3 = GetPasswordHash
        L5_3 = A4_2
        L4_3 = L4_3(L5_3)
        if L4_3 then
          goto lbl_23
        end
      end
      L4_3 = A4_2
      ::lbl_23::
      L3_3["@pass"] = L4_3
      function L4_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
        L0_4 = A1_2
        L1_4 = "SUCCESS"
        L0_4(L1_4)
        L0_4 = MySQL
        L0_4 = L0_4.Sync
        L0_4 = L0_4.execute
        L1_4 = "UPDATE "
        L2_4 = Config
        L2_4 = L2_4.PlayersTable
        L3_4 = " SET mailaccount = @address WHERE "
        L4_4 = Config
        L4_4 = L4_4.IdentifierColumn
        L5_4 = " = @identifier"
        L1_4 = L1_4 .. L2_4 .. L3_4 .. L4_4 .. L5_4
        L2_4 = {}
        L3_4 = L6_2
        L2_4["@address"] = L3_4
        L3_4 = L5_2.identifier
        L2_4["@identifier"] = L3_4
        L0_4(L1_4, L2_4)
        L0_4 = Players
        L1_4 = A0_2
        L0_4 = L0_4[L1_4]
        L1_4 = {}
        L2_4 = L6_2
        L1_4.address = L2_4
        L2_4 = A2_2
        L1_4.name = L2_4
        L1_4.photo = ""
        L0_4.mailData = L1_4
        L0_4 = TriggerClientEvent
        L1_4 = "high_phone:updateMail"
        L2_4 = A0_2
        L0_4(L1_4, L2_4)
      end
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = A1_2
      L2_3 = Config
      L2_3 = L2_3.Languages
      L3_3 = Config
      L3_3 = L3_3.Language
      L2_3 = L2_3[L3_3]
      L2_3 = L2_3.notifications
      L2_3 = L2_3.emailtaken
      L1_3(L2_3)
    end
  end
  L7_2(L8_2, L9_2, L10_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:mailLogout"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:mailLogout"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = source
  L1_2 = Config
  L1_2 = L1_2.FrameworkFunctions
  L1_2 = L1_2.getPlayer
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = MySQL
  L2_2 = L2_2.Sync
  L2_2 = L2_2.execute
  L3_2 = "UPDATE "
  L4_2 = Config
  L4_2 = L4_2.PlayersTable
  L5_2 = " SET mailaccount = @address WHERE "
  L6_2 = Config
  L6_2 = L6_2.IdentifierColumn
  L7_2 = " = @identifier"
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
  L4_2 = {}
  L4_2["@address"] = nil
  L5_2 = L1_2.identifier
  L4_2["@identifier"] = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = Players
  L2_2 = L2_2[L0_2]
  L3_2 = {}
  L2_2.mailData = L3_2
  L2_2 = TriggerClientEvent
  L3_2 = "high_phone:updateMail"
  L4_2 = L0_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:executeMailButton"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.FrameworkFunctions
  L4_2 = L4_2.getPlayer
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = Players
  L6_2 = L4_2.source
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.mailData
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.fetchScalar
  L7_2 = "SELECT `mail` FROM phone_mail WHERE `id` = @id AND `owner` = @owner"
  L8_2 = {}
  L8_2["@id"] = A0_2
  L9_2 = L5_2.address
  L8_2["@owner"] = L9_2
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    if A0_3 then
      L1_3 = json
      L1_3 = L1_3.decode
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      L2_3 = pairs
      L3_3 = L1_3
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = L7_3.time
        L9_3 = A1_2
        if L8_3 == L9_3 then
          L8_3 = json
          L8_3 = L8_3.decode
          L9_3 = L7_3.attachments
          L8_3 = L8_3(L9_3)
          L9_3 = pairs
          L10_3 = L8_3
          L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3)
          for L13_3, L14_3 in L9_3, L10_3, L11_3, L12_3 do
            L15_3 = L14_3.button
            if L15_3 then
              L15_3 = L14_3.button
              L15_3 = L15_3.id
              L16_3 = A2_2
              if L15_3 == L16_3 then
                L15_3 = table
                L15_3 = L15_3.remove
                L16_3 = L8_3
                L17_3 = L13_3
                L15_3(L16_3, L17_3)
                break
              end
            end
          end
          L9_3 = L1_3[L6_3]
          L10_3 = json
          L10_3 = L10_3.encode
          L11_3 = L8_3
          L10_3 = L10_3(L11_3)
          L9_3.attachments = L10_3
          break
        end
      end
      L2_3 = MySQL
      L2_3 = L2_3.Async
      L2_3 = L2_3.execute
      L3_3 = "UPDATE phone_mail SET `mail` = @mail WHERE `id` = @id"
      L4_3 = {}
      L5_3 = A0_2
      L4_3["@id"] = L5_3
      L5_3 = json
      L5_3 = L5_3.encode
      L6_3 = L1_3
      L5_3 = L5_3(L6_3)
      L4_3["@mail"] = L5_3
      L2_3(L3_3, L4_3)
    end
  end
  L6_2(L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:sendMailFromServer"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L5_2 = source
  if "" ~= L5_2 then
    L5_2 = source
    if L5_2 then
      goto lbl_8
    end
  end
  L5_2 = A4_2
  ::lbl_8::
  L6_2 = Config
  L6_2 = L6_2.FrameworkFunctions
  L6_2 = L6_2.getPlayer
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = Players
  L8_2 = L6_2.source
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.mailData
  L8_2 = L7_2.address
  if not L8_2 then
    return
  end
  L8_2 = {}
  L9_2 = A0_2.name
  if L9_2 then
    L9_2 = A0_2.name
    if L9_2 then
      goto lbl_30
    end
  end
  L9_2 = ""
  ::lbl_30::
  L8_2.name = L9_2
  L9_2 = A0_2.address
  if L9_2 then
    L9_2 = A0_2.address
    if L9_2 then
      goto lbl_38
    end
  end
  L9_2 = ""
  ::lbl_38::
  L8_2.address = L9_2
  L9_2 = A0_2.photo
  if L9_2 then
    L9_2 = A0_2.photo
    if L9_2 then
      goto lbl_46
    end
  end
  L9_2 = ""
  ::lbl_46::
  L8_2.photo = L9_2
  L9_2 = type
  L10_2 = A3_2
  L9_2 = L9_2(L10_2)
  if "string" == L9_2 then
    L9_2 = json
    L9_2 = L9_2.decode
    L10_2 = A3_2
    L9_2 = L9_2(L10_2)
    A3_2 = L9_2
  end
  L9_2 = pairs
  L10_2 = A3_2
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = L14_2.button
    if L15_2 then
      L15_2 = A3_2[L13_2]
      L15_2 = L15_2.button
      L16_2 = math
      L16_2 = L16_2.random
      L17_2 = 1111
      L18_2 = 9999
      L16_2 = L16_2(L17_2, L18_2)
      L15_2.id = L16_2
    end
  end
  L9_2 = os
  L9_2 = L9_2.time
  L9_2 = L9_2()
  L9_2 = L9_2 * 1000
  L10_2 = {}
  L10_2.server = true
  L10_2.content = A2_2
  L11_2 = {}
  L12_2 = L7_2.address
  L11_2[1] = L12_2
  L10_2.recipients = L11_2
  L10_2.time = L9_2
  L11_2 = {}
  L12_2 = L8_2.address
  L11_2.address = L12_2
  L12_2 = L8_2.name
  L11_2.name = L12_2
  L12_2 = L8_2.photo
  L11_2.photo = L12_2
  L10_2.sender = L11_2
  L11_2 = json
  L11_2 = L11_2.encode
  L12_2 = A3_2
  L11_2 = L11_2(L12_2)
  L10_2.attachments = L11_2
  L11_2 = MySQL
  L11_2 = L11_2.Async
  L11_2 = L11_2.fetchAll
  L12_2 = "SELECT `id`, `mail`, `trash` FROM phone_mail WHERE `subject` = @subject AND `owner` = @owner ORDER BY `id` DESC LIMIT 1"
  L13_2 = {}
  L13_2["@subject"] = A1_2
  L14_2 = L7_2.address
  L13_2["@owner"] = L14_2
  function L14_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = A0_3[1]
    if L1_3 then
      L1_3 = A0_3[1]
      L1_3 = L1_3.trash
      if not L1_3 then
        L1_3 = json
        L1_3 = L1_3.decode
        L2_3 = A0_3[1]
        L2_3 = L2_3.mail
        L1_3 = L1_3(L2_3)
        L2_3 = Config
        L2_3 = L2_3.MailStackingTime
        L2_3 = L2_3 * 60
        L2_3 = L2_3 * 60
        L2_3 = L2_3 * 1000
        L3_3 = false
        L4_3 = pairs
        L5_3 = L1_3
        L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
        for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
          L10_3 = L9_2
          L11_3 = L9_3.time
          L10_3 = L10_3 - L11_3
          if L2_3 > L10_3 then
            L3_3 = true
            break
          end
        end
        if L3_3 then
          L3_3 = false
          L4_3 = pairs
          L5_3 = L1_3
          L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
          for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
            L10_3 = L9_3.sender
            L10_3 = L10_3.address
            L11_3 = L8_2.address
            if L10_3 == L11_3 then
              L3_3 = true
              break
            end
          end
        end
        if L3_3 then
          L4_3 = table
          L4_3 = L4_3.insert
          L5_3 = L1_3
          L6_3 = L10_2
          L4_3(L5_3, L6_3)
          L4_3 = MySQL
          L4_3 = L4_3.Async
          L4_3 = L4_3.execute
          L5_3 = "UPDATE phone_mail SET `mail` = @mail WHERE `id` = @id"
          L6_3 = {}
          L7_3 = A0_3[1]
          L7_3 = L7_3.id
          L6_3["@id"] = L7_3
          L7_3 = json
          L7_3 = L7_3.encode
          L8_3 = L1_3
          L7_3 = L7_3(L8_3)
          L6_3["@mail"] = L7_3
          function L7_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
            L0_4 = TriggerClientEvent
            L1_4 = "high_phone:receivedMail"
            L2_4 = L6_2.source
            L3_4 = {}
            L3_4.server = true
            L4_4 = A0_3
            L4_4 = L4_4[1]
            L4_4 = L4_4.id
            L3_4.id = L4_4
            L4_4 = A1_2
            L3_4.subject = L4_4
            L4_4 = {}
            L5_4 = L7_2.address
            L4_4[1] = L5_4
            L3_4.recipients = L4_4
            L4_4 = {}
            L5_4 = L8_2.address
            L4_4.address = L5_4
            L5_4 = L8_2.name
            L4_4.name = L5_4
            L5_4 = L8_2.photo
            L4_4.photo = L5_4
            L3_4.sender = L4_4
            L4_4 = A2_2
            L3_4.content = L4_4
            L4_4 = L9_2
            L3_4.time = L4_4
            L4_4 = json
            L4_4 = L4_4.encode
            L5_4 = A3_2
            L4_4 = L4_4(L5_4)
            L3_4.attachments = L4_4
            L0_4(L1_4, L2_4, L3_4)
          end
          L4_3(L5_3, L6_3, L7_3)
        else
          L4_3 = MySQL
          L4_3 = L4_3.Async
          L4_3 = L4_3.execute
          L5_3 = "INSERT INTO phone_mail (`owner`, `subject`, `mail`) VALUES (@owner, @subject, @mail)"
          L6_3 = {}
          L7_3 = L7_2.address
          L6_3["@owner"] = L7_3
          L7_3 = A1_2
          L6_3["@subject"] = L7_3
          L7_3 = json
          L7_3 = L7_3.encode
          L8_3 = {}
          L9_3 = L10_2
          L8_3[1] = L9_3
          L7_3 = L7_3(L8_3)
          L6_3["@mail"] = L7_3
          function L7_3()
            local L0_4, L1_4, L2_4, L3_4
            L0_4 = MySQL
            L0_4 = L0_4.Async
            L0_4 = L0_4.fetchScalar
            L1_4 = "SELECT `id` FROM phone_mail WHERE `owner` = @owner AND `subject` = @subject ORDER BY `id` DESC LIMIT 1"
            L2_4 = {}
            L3_4 = L7_2.address
            L2_4["@owner"] = L3_4
            L3_4 = A1_2
            L2_4["@subject"] = L3_4
            function L3_4(A0_5)
              local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5
              L1_5 = TriggerClientEvent
              L2_5 = "high_phone:receivedMail"
              L3_5 = L6_2.source
              L4_5 = {}
              L4_5.server = true
              L4_5.id = A0_5
              L5_5 = A1_2
              L4_5.subject = L5_5
              L5_5 = {}
              L6_5 = L7_2.address
              L5_5[1] = L6_5
              L4_5.recipients = L5_5
              L5_5 = {}
              L6_5 = L8_2.address
              L5_5.address = L6_5
              L6_5 = L8_2.name
              L5_5.name = L6_5
              L6_5 = L8_2.photo
              L5_5.photo = L6_5
              L4_5.sender = L5_5
              L5_5 = A2_2
              L4_5.content = L5_5
              L5_5 = L9_2
              L4_5.time = L5_5
              L5_5 = json
              L5_5 = L5_5.encode
              L6_5 = A3_2
              L5_5 = L5_5(L6_5)
              L4_5.attachments = L5_5
              L1_5(L2_5, L3_5, L4_5)
            end
            L0_4(L1_4, L2_4, L3_4)
          end
          L4_3(L5_3, L6_3, L7_3)
        end
    end
    else
      L1_3 = MySQL
      L1_3 = L1_3.Async
      L1_3 = L1_3.execute
      L2_3 = "INSERT INTO phone_mail (`owner`, `subject`, `mail`) VALUES (@owner, @subject, @mail)"
      L3_3 = {}
      L4_3 = L7_2.address
      L3_3["@owner"] = L4_3
      L4_3 = A1_2
      L3_3["@subject"] = L4_3
      L4_3 = json
      L4_3 = L4_3.encode
      L5_3 = {}
      L6_3 = L10_2
      L5_3[1] = L6_3
      L4_3 = L4_3(L5_3)
      L3_3["@mail"] = L4_3
      function L4_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = MySQL
        L0_4 = L0_4.Async
        L0_4 = L0_4.fetchScalar
        L1_4 = "SELECT `id` FROM phone_mail WHERE `owner` = @owner AND `subject` = @subject ORDER BY `id` DESC LIMIT 1"
        L2_4 = {}
        L3_4 = L7_2.address
        L2_4["@owner"] = L3_4
        L3_4 = A1_2
        L2_4["@subject"] = L3_4
        function L3_4(A0_5)
          local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5
          L1_5 = TriggerClientEvent
          L2_5 = "high_phone:receivedMail"
          L3_5 = L6_2.source
          L4_5 = {}
          L4_5.server = true
          L4_5.id = A0_5
          L5_5 = A1_2
          L4_5.subject = L5_5
          L5_5 = {}
          L6_5 = L7_2.address
          L5_5[1] = L6_5
          L4_5.recipients = L5_5
          L5_5 = {}
          L6_5 = L8_2.address
          L5_5.address = L6_5
          L6_5 = L8_2.name
          L5_5.name = L6_5
          L6_5 = L8_2.photo
          L5_5.photo = L6_5
          L4_5.sender = L5_5
          L5_5 = A2_2
          L4_5.content = L5_5
          L5_5 = L9_2
          L4_5.time = L5_5
          L5_5 = json
          L5_5 = L5_5.encode
          L6_5 = A3_2
          L5_5 = L5_5(L6_5)
          L4_5.attachments = L5_5
          L1_5(L2_5, L3_5, L4_5)
        end
        L0_4(L1_4, L2_4, L3_4)
      end
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  L11_2(L12_2, L13_2, L14_2)
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:sendOfflineMailFromServer"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = Config
  L5_2 = L5_2.FrameworkFunctions
  L5_2 = L5_2.getPlayerByIdentifier
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = getMailAccountByIdentifier
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    return
  end
  L7_2 = {}
  L8_2 = A1_2.name
  if L8_2 then
    L8_2 = A1_2.name
    if L8_2 then
      goto lbl_21
    end
  end
  L8_2 = ""
  ::lbl_21::
  L7_2.name = L8_2
  L8_2 = A1_2.address
  if L8_2 then
    L8_2 = A1_2.address
    if L8_2 then
      goto lbl_29
    end
  end
  L8_2 = ""
  ::lbl_29::
  L7_2.address = L8_2
  L8_2 = A1_2.photo
  if L8_2 then
    L8_2 = A1_2.photo
    if L8_2 then
      goto lbl_37
    end
  end
  L8_2 = ""
  ::lbl_37::
  L7_2.photo = L8_2
  L8_2 = type
  L9_2 = A4_2
  L8_2 = L8_2(L9_2)
  if "string" == L8_2 then
    L8_2 = json
    L8_2 = L8_2.decode
    L9_2 = A4_2
    L8_2 = L8_2(L9_2)
    A4_2 = L8_2
  end
  L8_2 = pairs
  L9_2 = A4_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = L13_2.button
    if L14_2 then
      L14_2 = A4_2[L12_2]
      L14_2 = L14_2.button
      L15_2 = math
      L15_2 = L15_2.random
      L16_2 = 1111
      L17_2 = 9999
      L15_2 = L15_2(L16_2, L17_2)
      L14_2.id = L15_2
    end
  end
  L8_2 = os
  L8_2 = L8_2.time
  L8_2 = L8_2()
  L8_2 = L8_2 * 1000
  L9_2 = {}
  L9_2.server = true
  L9_2.content = A3_2
  L10_2 = {}
  L11_2 = L6_2
  L10_2[1] = L11_2
  L9_2.recipients = L10_2
  L9_2.time = L8_2
  L10_2 = {}
  L11_2 = L7_2.address
  L10_2.address = L11_2
  L11_2 = L7_2.name
  L10_2.name = L11_2
  L11_2 = L7_2.photo
  L10_2.photo = L11_2
  L9_2.sender = L10_2
  L10_2 = json
  L10_2 = L10_2.encode
  L11_2 = A4_2
  L10_2 = L10_2(L11_2)
  L9_2.attachments = L10_2
  L10_2 = MySQL
  L10_2 = L10_2.Async
  L10_2 = L10_2.fetchAll
  L11_2 = "SELECT `id`, `mail`, `trash` FROM phone_mail WHERE `subject` = @subject AND `owner` = @owner ORDER BY `id` DESC LIMIT 1"
  L12_2 = {}
  L12_2["@subject"] = A2_2
  L12_2["@owner"] = L6_2
  function L13_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = A0_3[1]
    if L1_3 then
      L1_3 = A0_3[1]
      L1_3 = L1_3.trash
      if not L1_3 then
        L1_3 = json
        L1_3 = L1_3.decode
        L2_3 = A0_3[1]
        L2_3 = L2_3.mail
        L1_3 = L1_3(L2_3)
        L2_3 = Config
        L2_3 = L2_3.MailStackingTime
        L2_3 = L2_3 * 60
        L2_3 = L2_3 * 60
        L2_3 = L2_3 * 1000
        L3_3 = false
        L4_3 = pairs
        L5_3 = L1_3
        L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
        for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
          L10_3 = L8_2
          L11_3 = L9_3.time
          L10_3 = L10_3 - L11_3
          if L2_3 > L10_3 then
            L3_3 = true
            break
          end
        end
        if L3_3 then
          L3_3 = false
          L4_3 = pairs
          L5_3 = L1_3
          L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
          for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
            L10_3 = L9_3.sender
            L10_3 = L10_3.address
            L11_3 = L7_2.address
            if L10_3 == L11_3 then
              L3_3 = true
              break
            end
          end
        end
        if L3_3 then
          L4_3 = table
          L4_3 = L4_3.insert
          L5_3 = L1_3
          L6_3 = L9_2
          L4_3(L5_3, L6_3)
          L4_3 = MySQL
          L4_3 = L4_3.Async
          L4_3 = L4_3.execute
          L5_3 = "UPDATE phone_mail SET `mail` = @mail WHERE `id` = @id"
          L6_3 = {}
          L7_3 = A0_3[1]
          L7_3 = L7_3.id
          L6_3["@id"] = L7_3
          L7_3 = json
          L7_3 = L7_3.encode
          L8_3 = L1_3
          L7_3 = L7_3(L8_3)
          L6_3["@mail"] = L7_3
          function L7_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
            L0_4 = L5_2
            if L0_4 then
              L0_4 = TriggerClientEvent
              L1_4 = "high_phone:receivedMail"
              L2_4 = L5_2.source
              L3_4 = {}
              L3_4.server = true
              L4_4 = A0_3
              L4_4 = L4_4[1]
              L4_4 = L4_4.id
              L3_4.id = L4_4
              L4_4 = A2_2
              L3_4.subject = L4_4
              L4_4 = {}
              L5_4 = L6_2
              L4_4[1] = L5_4
              L3_4.recipients = L4_4
              L4_4 = {}
              L5_4 = L7_2.address
              L4_4.address = L5_4
              L5_4 = L7_2.name
              L4_4.name = L5_4
              L5_4 = L7_2.photo
              L4_4.photo = L5_4
              L3_4.sender = L4_4
              L4_4 = A3_2
              L3_4.content = L4_4
              L4_4 = L8_2
              L3_4.time = L4_4
              L4_4 = json
              L4_4 = L4_4.encode
              L5_4 = A4_2
              L4_4 = L4_4(L5_4)
              L3_4.attachments = L4_4
              L0_4(L1_4, L2_4, L3_4)
            end
          end
          L4_3(L5_3, L6_3, L7_3)
        else
          L4_3 = MySQL
          L4_3 = L4_3.Async
          L4_3 = L4_3.execute
          L5_3 = "INSERT INTO phone_mail (`owner`, `subject`, `mail`) VALUES (@owner, @subject, @mail)"
          L6_3 = {}
          L7_3 = L6_2
          L6_3["@owner"] = L7_3
          L7_3 = A2_2
          L6_3["@subject"] = L7_3
          L7_3 = json
          L7_3 = L7_3.encode
          L8_3 = {}
          L9_3 = L9_2
          L8_3[1] = L9_3
          L7_3 = L7_3(L8_3)
          L6_3["@mail"] = L7_3
          function L7_3()
            local L0_4, L1_4, L2_4, L3_4
            L0_4 = MySQL
            L0_4 = L0_4.Async
            L0_4 = L0_4.fetchScalar
            L1_4 = "SELECT `id` FROM phone_mail WHERE `owner` = @owner AND `subject` = @subject ORDER BY `id` DESC LIMIT 1"
            L2_4 = {}
            L3_4 = L6_2
            L2_4["@owner"] = L3_4
            L3_4 = A2_2
            L2_4["@subject"] = L3_4
            function L3_4(A0_5)
              local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5
              L1_5 = L5_2
              if L1_5 then
                L1_5 = TriggerClientEvent
                L2_5 = "high_phone:receivedMail"
                L3_5 = L5_2.source
                L4_5 = {}
                L4_5.server = true
                L4_5.id = A0_5
                L5_5 = A2_2
                L4_5.subject = L5_5
                L5_5 = {}
                L6_5 = L6_2
                L5_5[1] = L6_5
                L4_5.recipients = L5_5
                L5_5 = {}
                L6_5 = L7_2.address
                L5_5.address = L6_5
                L6_5 = L7_2.name
                L5_5.name = L6_5
                L6_5 = L7_2.photo
                L5_5.photo = L6_5
                L4_5.sender = L5_5
                L5_5 = A3_2
                L4_5.content = L5_5
                L5_5 = L8_2
                L4_5.time = L5_5
                L5_5 = json
                L5_5 = L5_5.encode
                L6_5 = A4_2
                L5_5 = L5_5(L6_5)
                L4_5.attachments = L5_5
                L1_5(L2_5, L3_5, L4_5)
              end
            end
            L0_4(L1_4, L2_4, L3_4)
          end
          L4_3(L5_3, L6_3, L7_3)
        end
    end
    else
      L1_3 = MySQL
      L1_3 = L1_3.Async
      L1_3 = L1_3.execute
      L2_3 = "INSERT INTO phone_mail (`owner`, `subject`, `mail`) VALUES (@owner, @subject, @mail)"
      L3_3 = {}
      L4_3 = L6_2
      L3_3["@owner"] = L4_3
      L4_3 = A2_2
      L3_3["@subject"] = L4_3
      L4_3 = json
      L4_3 = L4_3.encode
      L5_3 = {}
      L6_3 = L9_2
      L5_3[1] = L6_3
      L4_3 = L4_3(L5_3)
      L3_3["@mail"] = L4_3
      function L4_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = MySQL
        L0_4 = L0_4.Async
        L0_4 = L0_4.fetchScalar
        L1_4 = "SELECT `id` FROM phone_mail WHERE `owner` = @owner AND `subject` = @subject ORDER BY `id` DESC LIMIT 1"
        L2_4 = {}
        L3_4 = L6_2
        L2_4["@owner"] = L3_4
        L3_4 = A2_2
        L2_4["@subject"] = L3_4
        function L3_4(A0_5)
          local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5
          L1_5 = L5_2
          if L1_5 then
            L1_5 = TriggerClientEvent
            L2_5 = "high_phone:receivedMail"
            L3_5 = L5_2.source
            L4_5 = {}
            L4_5.server = true
            L4_5.id = A0_5
            L5_5 = A2_2
            L4_5.subject = L5_5
            L5_5 = {}
            L6_5 = L6_2
            L5_5[1] = L6_5
            L4_5.recipients = L5_5
            L5_5 = {}
            L6_5 = L7_2.address
            L5_5.address = L6_5
            L6_5 = L7_2.name
            L5_5.name = L6_5
            L6_5 = L7_2.photo
            L5_5.photo = L6_5
            L4_5.sender = L5_5
            L5_5 = A3_2
            L4_5.content = L5_5
            L5_5 = L8_2
            L4_5.time = L5_5
            L5_5 = json
            L5_5 = L5_5.encode
            L6_5 = A4_2
            L5_5 = L5_5(L6_5)
            L4_5.attachments = L5_5
            L1_5(L2_5, L3_5, L4_5)
          end
        end
        L0_4(L1_4, L2_4, L3_4)
      end
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  L10_2(L11_2, L12_2, L13_2)
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:sendOfflineMailFromServerToAddress"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = getPlayerByMail
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = {}
  L6_2.address = A0_2
  L7_2 = {}
  L8_2 = A1_2.name
  if L8_2 then
    L8_2 = A1_2.name
    if L8_2 then
      goto lbl_16
    end
  end
  L8_2 = ""
  ::lbl_16::
  L7_2.name = L8_2
  L8_2 = A1_2.address
  if L8_2 then
    L8_2 = A1_2.address
    if L8_2 then
      goto lbl_24
    end
  end
  L8_2 = ""
  ::lbl_24::
  L7_2.address = L8_2
  L8_2 = A1_2.photo
  if L8_2 then
    L8_2 = A1_2.photo
    if L8_2 then
      goto lbl_32
    end
  end
  L8_2 = ""
  ::lbl_32::
  L7_2.photo = L8_2
  L8_2 = type
  L9_2 = A4_2
  L8_2 = L8_2(L9_2)
  if "string" == L8_2 then
    L8_2 = json
    L8_2 = L8_2.decode
    L9_2 = A4_2
    L8_2 = L8_2(L9_2)
    A4_2 = L8_2
  end
  L8_2 = pairs
  L9_2 = A4_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = L13_2.button
    if L14_2 then
      L14_2 = A4_2[L12_2]
      L14_2 = L14_2.button
      L15_2 = math
      L15_2 = L15_2.random
      L16_2 = 1111
      L17_2 = 9999
      L15_2 = L15_2(L16_2, L17_2)
      L14_2.id = L15_2
    end
  end
  L8_2 = os
  L8_2 = L8_2.time
  L8_2 = L8_2()
  L8_2 = L8_2 * 1000
  L9_2 = {}
  L9_2.server = true
  L9_2.content = A3_2
  L10_2 = {}
  L11_2 = L6_2.address
  L10_2[1] = L11_2
  L9_2.recipients = L10_2
  L9_2.time = L8_2
  L10_2 = {}
  L11_2 = L7_2.address
  L10_2.address = L11_2
  L11_2 = L7_2.name
  L10_2.name = L11_2
  L11_2 = L7_2.photo
  L10_2.photo = L11_2
  L9_2.sender = L10_2
  L10_2 = json
  L10_2 = L10_2.encode
  L11_2 = A4_2
  L10_2 = L10_2(L11_2)
  L9_2.attachments = L10_2
  L10_2 = MySQL
  L10_2 = L10_2.Async
  L10_2 = L10_2.fetchAll
  L11_2 = "SELECT `id`, `mail`, `trash` FROM phone_mail WHERE `subject` = @subject AND `owner` = @owner ORDER BY `id` DESC LIMIT 1"
  L12_2 = {}
  L12_2["@subject"] = A2_2
  L13_2 = L6_2.address
  L12_2["@owner"] = L13_2
  function L13_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = A0_3[1]
    if L1_3 then
      L1_3 = A0_3[1]
      L1_3 = L1_3.trash
      if not L1_3 then
        L1_3 = json
        L1_3 = L1_3.decode
        L2_3 = A0_3[1]
        L2_3 = L2_3.mail
        L1_3 = L1_3(L2_3)
        L2_3 = Config
        L2_3 = L2_3.MailStackingTime
        L2_3 = L2_3 * 60
        L2_3 = L2_3 * 60
        L2_3 = L2_3 * 1000
        L3_3 = false
        L4_3 = pairs
        L5_3 = L1_3
        L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
        for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
          L10_3 = L8_2
          L11_3 = L9_3.time
          L10_3 = L10_3 - L11_3
          if L2_3 > L10_3 then
            L3_3 = true
            break
          end
        end
        if L3_3 then
          L3_3 = false
          L4_3 = pairs
          L5_3 = L1_3
          L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
          for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
            L10_3 = L9_3.sender
            L10_3 = L10_3.address
            L11_3 = L7_2.address
            if L10_3 == L11_3 then
              L3_3 = true
              break
            end
          end
        end
        if L3_3 then
          L4_3 = table
          L4_3 = L4_3.insert
          L5_3 = L1_3
          L6_3 = L9_2
          L4_3(L5_3, L6_3)
          L4_3 = MySQL
          L4_3 = L4_3.Async
          L4_3 = L4_3.execute
          L5_3 = "UPDATE phone_mail SET `mail` = @mail WHERE `id` = @id"
          L6_3 = {}
          L7_3 = A0_3[1]
          L7_3 = L7_3.id
          L6_3["@id"] = L7_3
          L7_3 = json
          L7_3 = L7_3.encode
          L8_3 = L1_3
          L7_3 = L7_3(L8_3)
          L6_3["@mail"] = L7_3
          function L7_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
            L0_4 = L5_2
            if L0_4 then
              L0_4 = TriggerClientEvent
              L1_4 = "high_phone:receivedMail"
              L2_4 = L5_2.source
              L3_4 = {}
              L3_4.server = true
              L4_4 = A0_3
              L4_4 = L4_4[1]
              L4_4 = L4_4.id
              L3_4.id = L4_4
              L4_4 = A2_2
              L3_4.subject = L4_4
              L4_4 = {}
              L5_4 = L6_2.address
              L4_4[1] = L5_4
              L3_4.recipients = L4_4
              L4_4 = {}
              L5_4 = L7_2.address
              L4_4.address = L5_4
              L5_4 = L7_2.name
              L4_4.name = L5_4
              L5_4 = L7_2.photo
              L4_4.photo = L5_4
              L3_4.sender = L4_4
              L4_4 = A3_2
              L3_4.content = L4_4
              L4_4 = L8_2
              L3_4.time = L4_4
              L4_4 = json
              L4_4 = L4_4.encode
              L5_4 = A4_2
              L4_4 = L4_4(L5_4)
              L3_4.attachments = L4_4
              L0_4(L1_4, L2_4, L3_4)
            end
          end
          L4_3(L5_3, L6_3, L7_3)
        else
          L4_3 = MySQL
          L4_3 = L4_3.Async
          L4_3 = L4_3.execute
          L5_3 = "INSERT INTO phone_mail (`owner`, `subject`, `mail`) VALUES (@owner, @subject, @mail)"
          L6_3 = {}
          L7_3 = L6_2.address
          L6_3["@owner"] = L7_3
          L7_3 = A2_2
          L6_3["@subject"] = L7_3
          L7_3 = json
          L7_3 = L7_3.encode
          L8_3 = {}
          L9_3 = L9_2
          L8_3[1] = L9_3
          L7_3 = L7_3(L8_3)
          L6_3["@mail"] = L7_3
          function L7_3()
            local L0_4, L1_4, L2_4, L3_4
            L0_4 = MySQL
            L0_4 = L0_4.Async
            L0_4 = L0_4.fetchScalar
            L1_4 = "SELECT `id` FROM phone_mail WHERE `owner` = @owner AND `subject` = @subject ORDER BY `id` DESC LIMIT 1"
            L2_4 = {}
            L3_4 = L6_2.address
            L2_4["@owner"] = L3_4
            L3_4 = A2_2
            L2_4["@subject"] = L3_4
            function L3_4(A0_5)
              local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5
              L1_5 = L5_2
              if L1_5 then
                L1_5 = TriggerClientEvent
                L2_5 = "high_phone:receivedMail"
                L3_5 = L5_2.source
                L4_5 = {}
                L4_5.server = true
                L4_5.id = A0_5
                L5_5 = A2_2
                L4_5.subject = L5_5
                L5_5 = {}
                L6_5 = L6_2.address
                L5_5[1] = L6_5
                L4_5.recipients = L5_5
                L5_5 = {}
                L6_5 = L7_2.address
                L5_5.address = L6_5
                L6_5 = L7_2.name
                L5_5.name = L6_5
                L6_5 = L7_2.photo
                L5_5.photo = L6_5
                L4_5.sender = L5_5
                L5_5 = A3_2
                L4_5.content = L5_5
                L5_5 = L8_2
                L4_5.time = L5_5
                L5_5 = json
                L5_5 = L5_5.encode
                L6_5 = A4_2
                L5_5 = L5_5(L6_5)
                L4_5.attachments = L5_5
                L1_5(L2_5, L3_5, L4_5)
              end
            end
            L0_4(L1_4, L2_4, L3_4)
          end
          L4_3(L5_3, L6_3, L7_3)
        end
    end
    else
      L1_3 = MySQL
      L1_3 = L1_3.Async
      L1_3 = L1_3.execute
      L2_3 = "INSERT INTO phone_mail (`owner`, `subject`, `mail`) VALUES (@owner, @subject, @mail)"
      L3_3 = {}
      L4_3 = L6_2.address
      L3_3["@owner"] = L4_3
      L4_3 = A2_2
      L3_3["@subject"] = L4_3
      L4_3 = json
      L4_3 = L4_3.encode
      L5_3 = {}
      L6_3 = L9_2
      L5_3[1] = L6_3
      L4_3 = L4_3(L5_3)
      L3_3["@mail"] = L4_3
      function L4_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = MySQL
        L0_4 = L0_4.Async
        L0_4 = L0_4.fetchScalar
        L1_4 = "SELECT `id` FROM phone_mail WHERE `owner` = @owner AND `subject` = @subject ORDER BY `id` DESC LIMIT 1"
        L2_4 = {}
        L3_4 = L6_2.address
        L2_4["@owner"] = L3_4
        L3_4 = A2_2
        L2_4["@subject"] = L3_4
        function L3_4(A0_5)
          local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5
          L1_5 = L5_2
          if L1_5 then
            L1_5 = TriggerClientEvent
            L2_5 = "high_phone:receivedMail"
            L3_5 = L5_2.source
            L4_5 = {}
            L4_5.server = true
            L4_5.id = A0_5
            L5_5 = A2_2
            L4_5.subject = L5_5
            L5_5 = {}
            L6_5 = L6_2.address
            L5_5[1] = L6_5
            L4_5.recipients = L5_5
            L5_5 = {}
            L6_5 = L7_2.address
            L5_5.address = L6_5
            L6_5 = L7_2.name
            L5_5.name = L6_5
            L6_5 = L7_2.photo
            L5_5.photo = L6_5
            L4_5.sender = L5_5
            L5_5 = A3_2
            L4_5.content = L5_5
            L5_5 = L8_2
            L4_5.time = L5_5
            L5_5 = json
            L5_5 = L5_5.encode
            L6_5 = A4_2
            L5_5 = L5_5(L6_5)
            L4_5.attachments = L5_5
            L1_5(L2_5, L3_5, L4_5)
          end
        end
        L0_4(L1_4, L2_4, L3_4)
      end
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  L10_2(L11_2, L12_2, L13_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:sendMail"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L4_2 = source
  L5_2 = Config
  L5_2 = L5_2.FrameworkFunctions
  L5_2 = L5_2.getPlayer
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = Players
  L7_2 = L5_2.source
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.mailData
  L7_2 = L6_2.address
  if not L7_2 then
    return
  end
  L7_2 = type
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if "table" == L7_2 then
    L7_2 = #A0_2
    L8_2 = Config
    L8_2 = L8_2.MaxRecipients
    if L7_2 > L8_2 then
      return
    end
  end
  L7_2 = os
  L7_2 = L7_2.time
  L7_2 = L7_2()
  L7_2 = L7_2 * 1000
  L8_2 = {}
  L8_2.content = A2_2
  L9_2 = type
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  L9_2 = A0_2 or L9_2
  if "table" ~= L9_2 or not A0_2 then
    L9_2 = {}
    L10_2 = A0_2
    L9_2[1] = L10_2
  end
  L8_2.recipients = L9_2
  L8_2.time = L7_2
  L9_2 = {}
  L10_2 = L6_2.address
  L9_2.address = L10_2
  L10_2 = L6_2.name
  L9_2.name = L10_2
  L10_2 = L6_2.photo
  L9_2.photo = L10_2
  L8_2.sender = L9_2
  L8_2.attachments = A3_2
  L9_2 = MySQL
  L9_2 = L9_2.Async
  L9_2 = L9_2.execute
  L10_2 = "INSERT INTO phone_mail (`owner`, `subject`, `mail`, `lastOpened`) VALUES (@owner, @subject, @mail, @lastOpened)"
  L11_2 = {}
  L12_2 = L6_2.address
  L11_2["@owner"] = L12_2
  L11_2["@subject"] = A1_2
  L12_2 = json
  L12_2 = L12_2.encode
  L13_2 = {}
  L14_2 = L8_2
  L13_2[1] = L14_2
  L12_2 = L12_2(L13_2)
  L11_2["@mail"] = L12_2
  L11_2["@lastOpened"] = L7_2
  function L12_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerClientEvent
    L1_3 = "high_phone:updateMail"
    L2_3 = L4_2
    L0_3(L1_3, L2_3)
  end
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = json
  L9_2 = L9_2.decode
  L10_2 = A3_2
  L9_2 = L9_2(L10_2)
  L10_2 = Config
  L10_2 = L10_2.MailWebhooks
  if L10_2 then
    L10_2 = Config
    L10_2 = L10_2.SendWebhook
    L11_2 = Config
    L11_2 = L11_2.MailWebhook
    L12_2 = replace_vars
    L13_2 = Config
    L13_2 = L13_2.Languages
    L14_2 = Config
    L14_2 = L14_2.Language
    L13_2 = L13_2[L14_2]
    L13_2 = L13_2.newmailwebhook
    L13_2 = L13_2.title
    L14_2 = {}
    L15_2 = GetPlayerName
    L16_2 = L4_2
    L15_2 = L15_2(L16_2)
    L14_2.senderName = L15_2
    L14_2.senderId = L4_2
    L15_2 = L6_2.address
    L14_2.senderMailAddress = L15_2
    L12_2 = L12_2(L13_2, L14_2)
    L13_2 = replace_vars
    L14_2 = Config
    L14_2 = L14_2.Languages
    L15_2 = Config
    L15_2 = L15_2.Language
    L14_2 = L14_2[L15_2]
    L14_2 = L14_2.newmailwebhook
    L14_2 = L14_2.description
    L15_2 = {}
    L16_2 = type
    L17_2 = A0_2
    L16_2 = L16_2(L17_2)
    if "table" == L16_2 then
      L16_2 = table
      L16_2 = L16_2.concat
      L17_2 = A0_2
      L18_2 = ", "
      L16_2 = L16_2(L17_2, L18_2)
      if L16_2 then
        goto lbl_130
      end
    end
    L16_2 = A0_2
    ::lbl_130::
    L15_2.recipients = L16_2
    L15_2.subject = A1_2
    L15_2.content = A2_2
    L13_2 = L13_2(L14_2, L15_2)
    L14_2 = 15105570
    L15_2 = L9_2[1]
    if L15_2 then
      L15_2 = L9_2[1]
      L15_2 = L15_2.image
      if L15_2 then
        goto lbl_143
      end
    end
    L15_2 = nil
    ::lbl_143::
    L16_2 = Config
    L16_2 = L16_2.Languages
    L17_2 = Config
    L17_2 = L17_2.Language
    L16_2 = L16_2[L17_2]
    L16_2 = L16_2.newmailwebhook
    L16_2 = L16_2.footer
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
  L10_2 = type
  L11_2 = A0_2
  L10_2 = L10_2(L11_2)
  if "table" == L10_2 then
    L10_2 = pairs
    L11_2 = A0_2
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
    for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
      L16_2 = MySQL
      L16_2 = L16_2.Async
      L16_2 = L16_2.fetchAll
      L17_2 = "SELECT `id`, `mail`, `trash` FROM phone_mail WHERE `subject` = @subject AND `owner` = @owner ORDER BY `id` DESC LIMIT 1"
      L18_2 = {}
      L18_2["@subject"] = A1_2
      L18_2["@owner"] = L15_2
      function L19_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
        L1_3 = A0_3[1]
        if L1_3 then
          L1_3 = A0_3[1]
          L1_3 = L1_3.trash
          if not L1_3 then
            L1_3 = json
            L1_3 = L1_3.decode
            L2_3 = A0_3[1]
            L2_3 = L2_3.mail
            L1_3 = L1_3(L2_3)
            L2_3 = Config
            L2_3 = L2_3.MailStackingTime
            L2_3 = L2_3 * 60
            L2_3 = L2_3 * 60
            L2_3 = L2_3 * 1000
            L3_3 = false
            L4_3 = pairs
            L5_3 = L1_3
            L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
            for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
              L10_3 = L7_2
              L11_3 = L9_3.time
              L10_3 = L10_3 - L11_3
              if L2_3 > L10_3 then
                L3_3 = true
                break
              end
            end
            if L3_3 then
              L3_3 = false
              L4_3 = pairs
              L5_3 = L1_3
              L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
              for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
                L10_3 = L9_3.sender
                L10_3 = L10_3.address
                L11_3 = L6_2.address
                if L10_3 == L11_3 then
                  L3_3 = true
                  break
                end
              end
            end
            if L3_3 then
              L4_3 = table
              L4_3 = L4_3.insert
              L5_3 = L1_3
              L6_3 = L8_2
              L4_3(L5_3, L6_3)
              L4_3 = MySQL
              L4_3 = L4_3.Async
              L4_3 = L4_3.execute
              L5_3 = "UPDATE phone_mail SET `mail` = @mail WHERE `id` = @id"
              L6_3 = {}
              L7_3 = A0_3[1]
              L7_3 = L7_3.id
              L6_3["@id"] = L7_3
              L7_3 = json
              L7_3 = L7_3.encode
              L8_3 = L1_3
              L7_3 = L7_3(L8_3)
              L6_3["@mail"] = L7_3
              function L7_3()
                local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
                L0_4 = getPlayerByMail
                L1_4 = L15_2
                L0_4 = L0_4(L1_4)
                if L0_4 then
                  L1_4 = TriggerClientEvent
                  L2_4 = "high_phone:receivedMail"
                  L3_4 = L0_4.source
                  L4_4 = {}
                  L5_4 = A0_3
                  L5_4 = L5_4[1]
                  L5_4 = L5_4.id
                  L4_4.id = L5_4
                  L5_4 = A1_2
                  L4_4.subject = L5_4
                  L5_4 = type
                  L6_4 = A0_2
                  L5_4 = L5_4(L6_4)
                  if "table" == L5_4 then
                    L5_4 = A0_2
                    if L5_4 then
                      goto lbl_29
                    end
                  end
                  L5_4 = {}
                  L6_4 = A0_2
                  L5_4[1] = L6_4
                  ::lbl_29::
                  L4_4.recipients = L5_4
                  L5_4 = {}
                  L6_4 = L6_2.address
                  L5_4.address = L6_4
                  L6_4 = L6_2.name
                  L5_4.name = L6_4
                  L6_4 = L6_2.photo
                  L5_4.photo = L6_4
                  L4_4.sender = L5_4
                  L5_4 = A2_2
                  L4_4.content = L5_4
                  L5_4 = L7_2
                  L4_4.time = L5_4
                  L5_4 = A3_2
                  L4_4.attachments = L5_4
                  L1_4(L2_4, L3_4, L4_4)
                end
              end
              L4_3(L5_3, L6_3, L7_3)
            else
              L4_3 = MySQL
              L4_3 = L4_3.Async
              L4_3 = L4_3.execute
              L5_3 = "INSERT INTO phone_mail (`owner`, `subject`, `mail`) VALUES (@owner, @subject, @mail)"
              L6_3 = {}
              L7_3 = L15_2
              L6_3["@owner"] = L7_3
              L7_3 = A1_2
              L6_3["@subject"] = L7_3
              L7_3 = json
              L7_3 = L7_3.encode
              L8_3 = {}
              L9_3 = L8_2
              L8_3[1] = L9_3
              L7_3 = L7_3(L8_3)
              L6_3["@mail"] = L7_3
              function L7_3()
                local L0_4, L1_4, L2_4, L3_4, L4_4
                L0_4 = getPlayerByMail
                L1_4 = L15_2
                L0_4 = L0_4(L1_4)
                if L0_4 then
                  L1_4 = MySQL
                  L1_4 = L1_4.Async
                  L1_4 = L1_4.fetchScalar
                  L2_4 = "SELECT `id` FROM phone_mail WHERE `owner` = @owner AND `subject` = @subject ORDER BY `id` DESC LIMIT 1"
                  L3_4 = {}
                  L4_4 = L15_2
                  L3_4["@owner"] = L4_4
                  L4_4 = A1_2
                  L3_4["@subject"] = L4_4
                  function L4_4(A0_5)
                    local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5
                    L1_5 = TriggerClientEvent
                    L2_5 = "high_phone:receivedMail"
                    L3_5 = L0_4.source
                    L4_5 = {}
                    L4_5.id = A0_5
                    L5_5 = A1_2
                    L4_5.subject = L5_5
                    L5_5 = type
                    L6_5 = A0_2
                    L5_5 = L5_5(L6_5)
                    if "table" == L5_5 then
                      L5_5 = A0_2
                      if L5_5 then
                        goto lbl_21
                      end
                    end
                    L5_5 = {}
                    L6_5 = A0_2
                    L5_5[1] = L6_5
                    ::lbl_21::
                    L4_5.recipients = L5_5
                    L5_5 = {}
                    L6_5 = L6_2.address
                    L5_5.address = L6_5
                    L6_5 = L6_2.name
                    L5_5.name = L6_5
                    L6_5 = L6_2.photo
                    L5_5.photo = L6_5
                    L4_5.sender = L5_5
                    L5_5 = A2_2
                    L4_5.content = L5_5
                    L5_5 = L7_2
                    L4_5.time = L5_5
                    L5_5 = A3_2
                    L4_5.attachments = L5_5
                    L1_5(L2_5, L3_5, L4_5)
                  end
                  L1_4(L2_4, L3_4, L4_4)
                end
              end
              L4_3(L5_3, L6_3, L7_3)
            end
        end
        else
          L1_3 = MySQL
          L1_3 = L1_3.Async
          L1_3 = L1_3.execute
          L2_3 = "INSERT INTO phone_mail (`owner`, `subject`, `mail`) VALUES (@owner, @subject, @mail)"
          L3_3 = {}
          L4_3 = L15_2
          L3_3["@owner"] = L4_3
          L4_3 = A1_2
          L3_3["@subject"] = L4_3
          L4_3 = json
          L4_3 = L4_3.encode
          L5_3 = {}
          L6_3 = L8_2
          L5_3[1] = L6_3
          L4_3 = L4_3(L5_3)
          L3_3["@mail"] = L4_3
          function L4_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4
            L0_4 = getPlayerByMail
            L1_4 = L15_2
            L0_4 = L0_4(L1_4)
            if L0_4 then
              L1_4 = MySQL
              L1_4 = L1_4.Async
              L1_4 = L1_4.fetchScalar
              L2_4 = "SELECT `id` FROM phone_mail WHERE `owner` = @owner AND `subject` = @subject ORDER BY `id` DESC LIMIT 1"
              L3_4 = {}
              L4_4 = L15_2
              L3_4["@owner"] = L4_4
              L4_4 = A1_2
              L3_4["@subject"] = L4_4
              function L4_4(A0_5)
                local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5
                L1_5 = TriggerClientEvent
                L2_5 = "high_phone:receivedMail"
                L3_5 = L0_4.source
                L4_5 = {}
                L4_5.id = A0_5
                L5_5 = A1_2
                L4_5.subject = L5_5
                L5_5 = type
                L6_5 = A0_2
                L5_5 = L5_5(L6_5)
                if "table" == L5_5 then
                  L5_5 = A0_2
                  if L5_5 then
                    goto lbl_21
                  end
                end
                L5_5 = {}
                L6_5 = A0_2
                L5_5[1] = L6_5
                ::lbl_21::
                L4_5.recipients = L5_5
                L5_5 = {}
                L6_5 = L6_2.address
                L5_5.address = L6_5
                L6_5 = L6_2.name
                L5_5.name = L6_5
                L6_5 = L6_2.photo
                L5_5.photo = L6_5
                L4_5.sender = L5_5
                L5_5 = A2_2
                L4_5.content = L5_5
                L5_5 = L7_2
                L4_5.time = L5_5
                L5_5 = A3_2
                L4_5.attachments = L5_5
                L1_5(L2_5, L3_5, L4_5)
              end
              L1_4(L2_4, L3_4, L4_4)
            end
          end
          L1_3(L2_3, L3_3, L4_3)
        end
      end
      L16_2(L17_2, L18_2, L19_2)
    end
  else
    L10_2 = MySQL
    L10_2 = L10_2.Async
    L10_2 = L10_2.fetchAll
    L11_2 = "SELECT `id`, `mail`, `trash` FROM phone_mail WHERE `subject` = @subject AND `owner` = @owner ORDER BY `id` DESC LIMIT 1"
    L12_2 = {}
    L12_2["@subject"] = A1_2
    L12_2["@owner"] = A0_2
    function L13_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
      L1_3 = A0_3[1]
      if L1_3 then
        L1_3 = A0_3[1]
        L1_3 = L1_3.trash
        if not L1_3 then
          L1_3 = json
          L1_3 = L1_3.decode
          L2_3 = A0_3[1]
          L2_3 = L2_3.mail
          L1_3 = L1_3(L2_3)
          L2_3 = Config
          L2_3 = L2_3.MailStackingTime
          L2_3 = L2_3 * 60
          L2_3 = L2_3 * 60
          L2_3 = L2_3 * 1000
          L3_3 = false
          L4_3 = pairs
          L5_3 = L1_3
          L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
          for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
            L10_3 = L7_2
            L11_3 = L9_3.time
            L10_3 = L10_3 - L11_3
            if L2_3 > L10_3 then
              L3_3 = true
              break
            end
          end
          if L3_3 then
            L3_3 = false
            L4_3 = pairs
            L5_3 = L1_3
            L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
            for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
              L10_3 = L9_3.sender
              L10_3 = L10_3.address
              L11_3 = L6_2.address
              if L10_3 == L11_3 then
                L3_3 = true
                break
              end
            end
          end
          if L3_3 then
            L4_3 = table
            L4_3 = L4_3.insert
            L5_3 = L1_3
            L6_3 = L8_2
            L4_3(L5_3, L6_3)
            L4_3 = MySQL
            L4_3 = L4_3.Async
            L4_3 = L4_3.execute
            L5_3 = "UPDATE phone_mail SET `mail` = @mail WHERE `id` = @id"
            L6_3 = {}
            L7_3 = A0_3[1]
            L7_3 = L7_3.id
            L6_3["@id"] = L7_3
            L7_3 = json
            L7_3 = L7_3.encode
            L8_3 = L1_3
            L7_3 = L7_3(L8_3)
            L6_3["@mail"] = L7_3
            function L7_3()
              local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
              L0_4 = getPlayerByMail
              L1_4 = A0_2
              L0_4 = L0_4(L1_4)
              if L0_4 then
                L1_4 = TriggerClientEvent
                L2_4 = "high_phone:receivedMail"
                L3_4 = L0_4.source
                L4_4 = {}
                L5_4 = A0_3
                L5_4 = L5_4[1]
                L5_4 = L5_4.id
                L4_4.id = L5_4
                L5_4 = A1_2
                L4_4.subject = L5_4
                L5_4 = type
                L6_4 = A0_2
                L5_4 = L5_4(L6_4)
                if "table" == L5_4 then
                  L5_4 = A0_2
                  if L5_4 then
                    goto lbl_29
                  end
                end
                L5_4 = {}
                L6_4 = A0_2
                L5_4[1] = L6_4
                ::lbl_29::
                L4_4.recipients = L5_4
                L5_4 = {}
                L6_4 = L6_2.address
                L5_4.address = L6_4
                L6_4 = L6_2.name
                L5_4.name = L6_4
                L6_4 = L6_2.photo
                L5_4.photo = L6_4
                L4_4.sender = L5_4
                L5_4 = A2_2
                L4_4.content = L5_4
                L5_4 = L7_2
                L4_4.time = L5_4
                L5_4 = A3_2
                L4_4.attachments = L5_4
                L1_4(L2_4, L3_4, L4_4)
              end
            end
            L4_3(L5_3, L6_3, L7_3)
          else
            L4_3 = MySQL
            L4_3 = L4_3.Async
            L4_3 = L4_3.execute
            L5_3 = "INSERT INTO phone_mail (`owner`, `subject`, `mail`) VALUES (@owner, @subject, @mail)"
            L6_3 = {}
            L7_3 = A0_2
            L6_3["@owner"] = L7_3
            L7_3 = A1_2
            L6_3["@subject"] = L7_3
            L7_3 = json
            L7_3 = L7_3.encode
            L8_3 = {}
            L9_3 = L8_2
            L8_3[1] = L9_3
            L7_3 = L7_3(L8_3)
            L6_3["@mail"] = L7_3
            function L7_3()
              local L0_4, L1_4, L2_4, L3_4, L4_4
              L0_4 = getPlayerByMail
              L1_4 = A0_2
              L0_4 = L0_4(L1_4)
              if L0_4 then
                L1_4 = MySQL
                L1_4 = L1_4.Async
                L1_4 = L1_4.fetchScalar
                L2_4 = "SELECT `id` FROM phone_mail WHERE `owner` = @owner AND `subject` = @subject ORDER BY `id` DESC LIMIT 1"
                L3_4 = {}
                L4_4 = A0_2
                L3_4["@owner"] = L4_4
                L4_4 = A1_2
                L3_4["@subject"] = L4_4
                function L4_4(A0_5)
                  local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5
                  L1_5 = TriggerClientEvent
                  L2_5 = "high_phone:receivedMail"
                  L3_5 = L0_4.source
                  L4_5 = {}
                  L4_5.id = A0_5
                  L5_5 = A1_2
                  L4_5.subject = L5_5
                  L5_5 = type
                  L6_5 = A0_2
                  L5_5 = L5_5(L6_5)
                  if "table" == L5_5 then
                    L5_5 = A0_2
                    if L5_5 then
                      goto lbl_21
                    end
                  end
                  L5_5 = {}
                  L6_5 = A0_2
                  L5_5[1] = L6_5
                  ::lbl_21::
                  L4_5.recipients = L5_5
                  L5_5 = {}
                  L6_5 = L6_2.address
                  L5_5.address = L6_5
                  L6_5 = L6_2.name
                  L5_5.name = L6_5
                  L6_5 = L6_2.photo
                  L5_5.photo = L6_5
                  L4_5.sender = L5_5
                  L5_5 = A2_2
                  L4_5.content = L5_5
                  L5_5 = L7_2
                  L4_5.time = L5_5
                  L5_5 = A3_2
                  L4_5.attachments = L5_5
                  L1_5(L2_5, L3_5, L4_5)
                end
                L1_4(L2_4, L3_4, L4_4)
              end
            end
            L4_3(L5_3, L6_3, L7_3)
          end
      end
      else
        L1_3 = MySQL
        L1_3 = L1_3.Async
        L1_3 = L1_3.execute
        L2_3 = "INSERT INTO phone_mail (`owner`, `subject`, `mail`) VALUES (@owner, @subject, @mail)"
        L3_3 = {}
        L4_3 = A0_2
        L3_3["@owner"] = L4_3
        L4_3 = A1_2
        L3_3["@subject"] = L4_3
        L4_3 = json
        L4_3 = L4_3.encode
        L5_3 = {}
        L6_3 = L8_2
        L5_3[1] = L6_3
        L4_3 = L4_3(L5_3)
        L3_3["@mail"] = L4_3
        function L4_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4
          L0_4 = getPlayerByMail
          L1_4 = A0_2
          L0_4 = L0_4(L1_4)
          if L0_4 then
            L1_4 = MySQL
            L1_4 = L1_4.Async
            L1_4 = L1_4.fetchScalar
            L2_4 = "SELECT `id` FROM phone_mail WHERE `owner` = @owner AND `subject` = @subject ORDER BY `id` DESC LIMIT 1"
            L3_4 = {}
            L4_4 = A0_2
            L3_4["@owner"] = L4_4
            L4_4 = A1_2
            L3_4["@subject"] = L4_4
            function L4_4(A0_5)
              local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5
              L1_5 = TriggerClientEvent
              L2_5 = "high_phone:receivedMail"
              L3_5 = L0_4.source
              L4_5 = {}
              L4_5.id = A0_5
              L5_5 = A1_2
              L4_5.subject = L5_5
              L5_5 = type
              L6_5 = A0_2
              L5_5 = L5_5(L6_5)
              if "table" == L5_5 then
                L5_5 = A0_2
                if L5_5 then
                  goto lbl_21
                end
              end
              L5_5 = {}
              L6_5 = A0_2
              L5_5[1] = L6_5
              ::lbl_21::
              L4_5.recipients = L5_5
              L5_5 = {}
              L6_5 = L6_2.address
              L5_5.address = L6_5
              L6_5 = L6_2.name
              L5_5.name = L6_5
              L6_5 = L6_2.photo
              L5_5.photo = L6_5
              L4_5.sender = L5_5
              L5_5 = A2_2
              L4_5.content = L5_5
              L5_5 = L7_2
              L4_5.time = L5_5
              L5_5 = A3_2
              L4_5.attachments = L5_5
              L1_5(L2_5, L3_5, L4_5)
            end
            L1_4(L2_4, L3_4, L4_4)
          end
        end
        L1_3(L2_3, L3_3, L4_3)
      end
    end
    L10_2(L11_2, L12_2, L13_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:sendMailReply"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = source
  L6_2 = Config
  L6_2 = L6_2.FrameworkFunctions
  L6_2 = L6_2.getPlayer
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = Players
  L8_2 = L6_2.source
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.mailData
  L8_2 = L7_2.address
  if not L8_2 then
    return
  end
  L8_2 = type
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  if "table" == L8_2 then
    L8_2 = #A1_2
    L9_2 = Config
    L9_2 = L9_2.MaxRecipients
    if L8_2 > L9_2 then
      return
    end
  end
  L8_2 = MySQL
  L8_2 = L8_2.Async
  L8_2 = L8_2.fetchAll
  L9_2 = "SELECT `id`, `mail`, `subject`, `trash` FROM phone_mail WHERE `id` = @id AND `owner` = @owner"
  L10_2 = {}
  L10_2["@id"] = A0_2
  L11_2 = L7_2.address
  L10_2["@owner"] = L11_2
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L1_3 = os
    L1_3 = L1_3.time
    L1_3 = L1_3()
    L1_3 = L1_3 * 1000
    L2_3 = {}
    L3_3 = A3_2
    L2_3.content = L3_3
    L3_3 = type
    L4_3 = A1_2
    L3_3 = L3_3(L4_3)
    if "table" == L3_3 then
      L3_3 = A1_2
      if L3_3 then
        goto lbl_22
      end
    end
    L3_3 = {}
    L4_3 = A1_2
    L3_3[1] = L4_3
    ::lbl_22::
    L2_3.recipients = L3_3
    L2_3.time = L1_3
    L3_3 = {}
    L4_3 = L7_2.address
    L3_3.address = L4_3
    L4_3 = L7_2.name
    L3_3.name = L4_3
    L4_3 = L7_2.photo
    L3_3.photo = L4_3
    L2_3.sender = L3_3
    L3_3 = A4_2
    L2_3.attachments = L3_3
    L3_3 = A0_3[1]
    if L3_3 then
      L3_3 = A0_3[1]
      L3_3 = L3_3.trash
      if not L3_3 then
        L3_3 = json
        L3_3 = L3_3.decode
        L4_3 = A0_3[1]
        L4_3 = L4_3.mail
        L3_3 = L3_3(L4_3)
        L4_3 = table
        L4_3 = L4_3.insert
        L5_3 = L3_3
        L6_3 = L2_3
        L4_3(L5_3, L6_3)
        L4_3 = MySQL
        L4_3 = L4_3.Async
        L4_3 = L4_3.execute
        L5_3 = "UPDATE phone_mail SET `mail` = @mail WHERE `id` = @id"
        L6_3 = {}
        L7_3 = A0_3[1]
        L7_3 = L7_3.id
        L6_3["@id"] = L7_3
        L7_3 = json
        L7_3 = L7_3.encode
        L8_3 = L3_3
        L7_3 = L7_3(L8_3)
        L6_3["@mail"] = L7_3
        function L7_3()
          local L0_4, L1_4, L2_4
          L0_4 = TriggerClientEvent
          L1_4 = "high_phone:updateMail"
          L2_4 = L5_2
          L0_4(L1_4, L2_4)
        end
        L4_3(L5_3, L6_3, L7_3)
        L4_3 = type
        L5_3 = A1_2
        L4_3 = L4_3(L5_3)
        if "table" == L4_3 then
          L4_3 = pairs
          L5_3 = A1_2
          L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
          for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
            L10_3 = MySQL
            L10_3 = L10_3.Async
            L10_3 = L10_3.fetchAll
            L11_3 = "SELECT `id`, `mail` FROM phone_mail WHERE `subject` = @subject AND `owner` = @owner ORDER BY `id` DESC LIMIT 1"
            L12_3 = {}
            L13_3 = A0_3[1]
            L13_3 = L13_3.subject
            L12_3["@subject"] = L13_3
            L12_3["@owner"] = L9_3
            function L13_3(A0_4)
              local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
              L1_4 = A0_4[1]
              if L1_4 then
                L1_4 = json
                L1_4 = L1_4.decode
                L2_4 = A0_4[1]
                L2_4 = L2_4.mail
                L1_4 = L1_4(L2_4)
                L2_4 = table
                L2_4 = L2_4.insert
                L3_4 = L1_4
                L4_4 = L2_3
                L2_4(L3_4, L4_4)
                L2_4 = MySQL
                L2_4 = L2_4.Async
                L2_4 = L2_4.execute
                L3_4 = "UPDATE phone_mail SET `mail` = @mail WHERE `id` = @id"
                L4_4 = {}
                L5_4 = A0_4[1]
                L5_4 = L5_4.id
                L4_4["@id"] = L5_4
                L5_4 = json
                L5_4 = L5_4.encode
                L6_4 = L1_4
                L5_4 = L5_4(L6_4)
                L4_4["@mail"] = L5_4
                function L5_4()
                  local L0_5, L1_5, L2_5, L3_5, L4_5, L5_5, L6_5
                  L0_5 = getPlayerByMail
                  L1_5 = L9_3
                  L0_5 = L0_5(L1_5)
                  if L0_5 then
                    L1_5 = TriggerClientEvent
                    L2_5 = "high_phone:receivedMail"
                    L3_5 = L0_5.source
                    L4_5 = {}
                    L5_5 = A0_4
                    L5_5 = L5_5[1]
                    L5_5 = L5_5.id
                    L4_5.id = L5_5
                    L5_5 = A0_4
                    L5_5 = L5_5[1]
                    L5_5 = L5_5.id
                    L4_5.reply = L5_5
                    L5_5 = A2_2
                    L4_5.subject = L5_5
                    L5_5 = type
                    L6_5 = A1_2
                    L5_5 = L5_5(L6_5)
                    if "table" == L5_5 then
                      L5_5 = A1_2
                      if L5_5 then
                        goto lbl_33
                      end
                    end
                    L5_5 = {}
                    L6_5 = A1_2
                    L5_5[1] = L6_5
                    ::lbl_33::
                    L4_5.recipients = L5_5
                    L5_5 = A2_2
                    L4_5.subject = L5_5
                    L5_5 = {}
                    L6_5 = L7_2.address
                    L5_5.address = L6_5
                    L6_5 = L7_2.name
                    L5_5.name = L6_5
                    L6_5 = L7_2.photo
                    L5_5.photo = L6_5
                    L4_5.sender = L5_5
                    L5_5 = A3_2
                    L4_5.content = L5_5
                    L5_5 = L1_3
                    L4_5.time = L5_5
                    L5_5 = A4_2
                    L4_5.attachments = L5_5
                    L1_5(L2_5, L3_5, L4_5)
                  end
                end
                L2_4(L3_4, L4_4, L5_4)
              else
                L1_4 = MySQL
                L1_4 = L1_4.Async
                L1_4 = L1_4.execute
                L2_4 = "INSERT INTO phone_mail (`owner`, `subject`, `mail`, `lastOpened`) VALUES (@owner, @subject, @mail, @lastOpened)"
                L3_4 = {}
                L4_4 = L9_3
                L3_4["@owner"] = L4_4
                L4_4 = A0_3
                L4_4 = L4_4[1]
                L4_4 = L4_4.subject
                L3_4["@subject"] = L4_4
                L4_4 = json
                L4_4 = L4_4.encode
                L5_4 = {}
                L6_4 = L2_3
                L5_4[1] = L6_4
                L4_4 = L4_4(L5_4)
                L3_4["@mail"] = L4_4
                L4_4 = L1_3
                L3_4["@lastOpened"] = L4_4
                function L4_4()
                  local L0_5, L1_5, L2_5, L3_5, L4_5
                  L0_5 = getPlayerByMail
                  L1_5 = L9_3
                  L0_5 = L0_5(L1_5)
                  if L0_5 then
                    L1_5 = MySQL
                    L1_5 = L1_5.Async
                    L1_5 = L1_5.fetchScalar
                    L2_5 = "SELECT `id` FROM phone_mail WHERE `owner` = @owner AND `subject` = @subject ORDER BY `id` DESC LIMIT 1"
                    L3_5 = {}
                    L4_5 = L9_3
                    L3_5["@owner"] = L4_5
                    L4_5 = A2_2
                    L3_5["@subject"] = L4_5
                    function L4_5(A0_6)
                      local L1_6, L2_6, L3_6, L4_6, L5_6, L6_6
                      L1_6 = TriggerClientEvent
                      L2_6 = "high_phone:receivedMail"
                      L3_6 = L0_5.source
                      L4_6 = {}
                      L4_6.id = A0_6
                      L5_6 = A2_2
                      L4_6.subject = L5_6
                      L5_6 = type
                      L6_6 = A1_2
                      L5_6 = L5_6(L6_6)
                      if "table" == L5_6 then
                        L5_6 = A1_2
                        if L5_6 then
                          goto lbl_21
                        end
                      end
                      L5_6 = {}
                      L6_6 = A1_2
                      L5_6[1] = L6_6
                      ::lbl_21::
                      L4_6.recipients = L5_6
                      L5_6 = {}
                      L6_6 = L7_2.address
                      L5_6.address = L6_6
                      L6_6 = L7_2.name
                      L5_6.name = L6_6
                      L6_6 = L7_2.photo
                      L5_6.photo = L6_6
                      L4_6.sender = L5_6
                      L5_6 = A3_2
                      L4_6.content = L5_6
                      L5_6 = L1_3
                      L4_6.time = L5_6
                      L5_6 = A4_2
                      L4_6.attachments = L5_6
                      L1_6(L2_6, L3_6, L4_6)
                    end
                    L1_5(L2_5, L3_5, L4_5)
                  end
                end
                L1_4(L2_4, L3_4, L4_4)
              end
            end
            L10_3(L11_3, L12_3, L13_3)
          end
        else
          L4_3 = MySQL
          L4_3 = L4_3.Async
          L4_3 = L4_3.fetchAll
          L5_3 = "SELECT `id`, `mail` FROM phone_mail WHERE `subject` = @subject AND `owner` = @owner ORDER BY `id` DESC LIMIT 1"
          L6_3 = {}
          L7_3 = A0_3[1]
          L7_3 = L7_3.subject
          L6_3["@subject"] = L7_3
          L7_3 = A1_2
          L6_3["@owner"] = L7_3
          function L7_3(A0_4)
            local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
            L1_4 = A0_4[1]
            if L1_4 then
              L1_4 = json
              L1_4 = L1_4.decode
              L2_4 = A0_4[1]
              L2_4 = L2_4.mail
              L1_4 = L1_4(L2_4)
              L2_4 = table
              L2_4 = L2_4.insert
              L3_4 = L1_4
              L4_4 = L2_3
              L2_4(L3_4, L4_4)
              L2_4 = MySQL
              L2_4 = L2_4.Async
              L2_4 = L2_4.execute
              L3_4 = "UPDATE phone_mail SET `mail` = @mail WHERE `id` = @id"
              L4_4 = {}
              L5_4 = A0_4[1]
              L5_4 = L5_4.id
              L4_4["@id"] = L5_4
              L5_4 = json
              L5_4 = L5_4.encode
              L6_4 = L1_4
              L5_4 = L5_4(L6_4)
              L4_4["@mail"] = L5_4
              function L5_4()
                local L0_5, L1_5, L2_5, L3_5, L4_5, L5_5, L6_5
                L0_5 = getPlayerByMail
                L1_5 = A1_2
                L0_5 = L0_5(L1_5)
                if L0_5 then
                  L1_5 = TriggerClientEvent
                  L2_5 = "high_phone:receivedMail"
                  L3_5 = L0_5.source
                  L4_5 = {}
                  L5_5 = A0_4
                  L5_5 = L5_5[1]
                  L5_5 = L5_5.id
                  L4_5.id = L5_5
                  L5_5 = A0_4
                  L5_5 = L5_5[1]
                  L5_5 = L5_5.id
                  L4_5.reply = L5_5
                  L5_5 = A2_2
                  L4_5.subject = L5_5
                  L5_5 = type
                  L6_5 = A1_2
                  L5_5 = L5_5(L6_5)
                  if "table" == L5_5 then
                    L5_5 = A1_2
                    if L5_5 then
                      goto lbl_33
                    end
                  end
                  L5_5 = {}
                  L6_5 = A1_2
                  L5_5[1] = L6_5
                  ::lbl_33::
                  L4_5.recipients = L5_5
                  L5_5 = A2_2
                  L4_5.subject = L5_5
                  L5_5 = {}
                  L6_5 = L7_2.address
                  L5_5.address = L6_5
                  L6_5 = L7_2.name
                  L5_5.name = L6_5
                  L6_5 = L7_2.photo
                  L5_5.photo = L6_5
                  L4_5.sender = L5_5
                  L5_5 = A3_2
                  L4_5.content = L5_5
                  L5_5 = L1_3
                  L4_5.time = L5_5
                  L5_5 = A4_2
                  L4_5.attachments = L5_5
                  L1_5(L2_5, L3_5, L4_5)
                end
              end
              L2_4(L3_4, L4_4, L5_4)
            else
              L1_4 = MySQL
              L1_4 = L1_4.Async
              L1_4 = L1_4.execute
              L2_4 = "INSERT INTO phone_mail (`owner`, `subject`, `mail`, `lastOpened`) VALUES (@owner, @subject, @mail, @lastOpened)"
              L3_4 = {}
              L4_4 = A1_2
              L3_4["@owner"] = L4_4
              L4_4 = A2_2
              L3_4["@subject"] = L4_4
              L4_4 = json
              L4_4 = L4_4.encode
              L5_4 = {}
              L6_4 = L2_3
              L5_4[1] = L6_4
              L4_4 = L4_4(L5_4)
              L3_4["@mail"] = L4_4
              L4_4 = L1_3
              L3_4["@lastOpened"] = L4_4
              function L4_4()
                local L0_5, L1_5, L2_5, L3_5, L4_5
                L0_5 = getPlayerByMail
                L1_5 = A1_2
                L0_5 = L0_5(L1_5)
                if L0_5 then
                  L1_5 = MySQL
                  L1_5 = L1_5.Async
                  L1_5 = L1_5.fetchScalar
                  L2_5 = "SELECT `id` FROM phone_mail WHERE `owner` = @owner AND `subject` = @subject ORDER BY `id` DESC LIMIT 1"
                  L3_5 = {}
                  L4_5 = A1_2
                  L3_5["@owner"] = L4_5
                  L4_5 = A2_2
                  L3_5["@subject"] = L4_5
                  function L4_5(A0_6)
                    local L1_6, L2_6, L3_6, L4_6, L5_6, L6_6
                    L1_6 = TriggerClientEvent
                    L2_6 = "high_phone:receivedMail"
                    L3_6 = L0_5.source
                    L4_6 = {}
                    L4_6.id = A0_6
                    L5_6 = A2_2
                    L4_6.subject = L5_6
                    L5_6 = type
                    L6_6 = A1_2
                    L5_6 = L5_6(L6_6)
                    if "table" == L5_6 then
                      L5_6 = A1_2
                      if L5_6 then
                        goto lbl_21
                      end
                    end
                    L5_6 = {}
                    L6_6 = A1_2
                    L5_6[1] = L6_6
                    ::lbl_21::
                    L4_6.recipients = L5_6
                    L5_6 = {}
                    L6_6 = L7_2.address
                    L5_6.address = L6_6
                    L6_6 = L7_2.name
                    L5_6.name = L6_6
                    L6_6 = L7_2.photo
                    L5_6.photo = L6_6
                    L4_6.sender = L5_6
                    L5_6 = A3_2
                    L4_6.content = L5_6
                    L5_6 = L1_3
                    L4_6.time = L5_6
                    L5_6 = A4_2
                    L4_6.attachments = L5_6
                    L1_6(L2_6, L3_6, L4_6)
                  end
                  L1_5(L2_5, L3_5, L4_5)
                end
              end
              L1_4(L2_4, L3_4, L4_4)
            end
          end
          L4_3(L5_3, L6_3, L7_3)
        end
      end
    end
  end
  L8_2(L9_2, L10_2, L11_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:saveMailData"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:saveMailData"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.FrameworkFunctions
  L4_2 = L4_2.getPlayer
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = Players
  L6_2 = L4_2.source
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.mailData
  L6_2 = "name = @name, photo = @photo"
  if "" ~= A2_2 then
    L7_2 = L6_2
    L8_2 = ", password = @password"
    L7_2 = L7_2 .. L8_2
    L6_2 = L7_2
  end
  L7_2 = Players
  L8_2 = L4_2.source
  L7_2 = L7_2[L8_2]
  L8_2 = {}
  L8_2.name = A0_2
  L8_2.photo = A1_2
  L9_2 = L5_2.address
  L8_2.address = L9_2
  L7_2.mailData = L8_2
  L7_2 = MySQL
  L7_2 = L7_2.Sync
  L7_2 = L7_2.execute
  L8_2 = "UPDATE phone_mailaccounts SET name = @name, photo = @photo WHERE address = @address"
  L9_2 = {}
  L9_2["@name"] = A0_2
  L9_2["@photo"] = A1_2
  L10_2 = L5_2.address
  L9_2["@address"] = L10_2
  L10_2 = Config
  L10_2 = L10_2.HashPasswords
  if L10_2 then
    L10_2 = GetPasswordHash
    L11_2 = A2_2
    L10_2 = L10_2(L11_2)
  end
  L10_2 = "" ~= A2_2 and (L10_2 or L10_2)
  L9_2["@password"] = L10_2
  L7_2(L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:deleteMail"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:deleteMail"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = Config
  L3_2 = L3_2.FrameworkFunctions
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = Players
  L5_2 = L3_2.source
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.mailData
  if not A1_2 then
    L5_2 = MySQL
    L5_2 = L5_2.Async
    L5_2 = L5_2.execute
    L6_2 = "UPDATE phone_mail SET `trash` = 1 WHERE `owner` = @owner AND `id` = @id"
    L7_2 = {}
    L8_2 = L4_2.address
    L7_2["@owner"] = L8_2
    L7_2["@id"] = A0_2
    L5_2(L6_2, L7_2)
  else
    L5_2 = MySQL
    L5_2 = L5_2.Async
    L5_2 = L5_2.execute
    L6_2 = "DELETE FROM phone_mail WHERE `owner` = @owner AND `id` = @id"
    L7_2 = {}
    L8_2 = L4_2.address
    L7_2["@owner"] = L8_2
    L7_2["@id"] = A0_2
    L5_2(L6_2, L7_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:readMail"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:readMail"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = Players
  L4_2 = L2_2.source
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.mailData
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "UPDATE phone_mail SET `lastOpened` = @time WHERE `owner` = @owner AND `id` = @id"
  L6_2 = {}
  L7_2 = os
  L7_2 = L7_2.time
  L7_2 = L7_2()
  L7_2 = L7_2 * 1000
  L6_2["@time"] = L7_2
  L7_2 = L3_2.address
  L6_2["@owner"] = L7_2
  L6_2["@id"] = A0_2
  L4_2(L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:starMail"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:starMail"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = Config
  L3_2 = L3_2.FrameworkFunctions
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = Players
  L5_2 = L3_2.source
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.mailData
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.execute
  L6_2 = "UPDATE phone_mail SET `starred` = @starred WHERE `owner` = @owner AND `id` = @id"
  L7_2 = {}
  if A1_2 then
    L8_2 = 1
    if L8_2 then
      goto lbl_23
    end
  end
  L8_2 = 0
  ::lbl_23::
  L7_2["@starred"] = L8_2
  L8_2 = L4_2.address
  L7_2["@owner"] = L8_2
  L7_2["@id"] = A0_2
  L5_2(L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:muteMail"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:muteMail"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = Config
  L3_2 = L3_2.FrameworkFunctions
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = Players
  L5_2 = L3_2.source
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.mailData
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.execute
  L6_2 = "UPDATE phone_mail SET `muted` = @muted WHERE `owner` = @owner AND `id` = @id"
  L7_2 = {}
  if A1_2 then
    L8_2 = 1
    if L8_2 then
      goto lbl_23
    end
  end
  L8_2 = 0
  ::lbl_23::
  L7_2["@muted"] = L8_2
  L8_2 = L4_2.address
  L7_2["@owner"] = L8_2
  L7_2["@id"] = A0_2
  L5_2(L6_2, L7_2)
end
L0_1(L1_1, L2_1)
