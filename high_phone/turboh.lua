local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}
L1_1 = MySQL
L1_1 = L1_1.ready
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = MySQL
  L0_2 = L0_2.Async
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT * FROM phone_tweets WHERE `reply` IS NULL ORDER BY `time` DESC LIMIT "
  L2_2 = Config
  L2_2 = L2_2.TweetLimit
  L1_2 = L1_2 .. L2_2
  L2_2 = {}
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = MySQL
    L1_3 = L1_3.Async
    L1_3 = L1_3.fetchAll
    L2_3 = "SELECT * FROM phone_tweets WHERE `reply` IS NOT NULL ORDER BY `time` DESC LIMIT "
    L3_3 = Config
    L3_3 = L3_3.TweetLimit
    L2_3 = L2_3 .. L3_3
    L3_3 = {}
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
      L1_4 = A0_3
      L1_4 = #L1_4
      L2_4 = pairs
      L3_4 = A0_4
      L2_4, L3_4, L4_4, L5_4 = L2_4(L3_4)
      for L6_4, L7_4 in L2_4, L3_4, L4_4, L5_4 do
        L9_4 = L1_4 + L6_4
        L8_4 = A0_3
        L8_4[L9_4] = L7_4
      end
      L2_4 = A0_3
      L0_1 = L2_4
    end
    L1_3(L2_3, L3_3, L4_3)
  end
  L0_2(L1_2, L2_2, L3_2)
end
L1_1(L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Config
  L1_2 = L1_2.FrameworkFunctions
  L1_2 = L1_2.getPlayerByIdentifier
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Players
  if L1_2 then
    L3_2 = L1_2.source
    L3_2 = L2_2[L3_2]
    if L3_2 then
      L3_2 = L1_2.source
      L3_2 = L2_2[L3_2]
      L3_2 = L3_2.twitterAccount
      if L3_2 then
        L3_2 = L1_2.source
        L3_2 = L2_2[L3_2]
        L3_2 = L3_2.twitterAccount
        return L3_2
    end
  end
  else
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.fetchScalar
    L4_2 = "SELECT twitteraccount FROM "
    L5_2 = Config
    L5_2 = L5_2.PlayersTable
    L6_2 = " WHERE "
    L7_2 = Config
    L7_2 = L7_2.IdentifierColumn
    L8_2 = " = @identifier"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
    L5_2 = {}
    L5_2["@identifier"] = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    if nil ~= L3_2 then
      L4_2 = MySQL
      L4_2 = L4_2.Sync
      L4_2 = L4_2.fetchAll
      L5_2 = "SELECT * FROM phone_twitteraccounts WHERE email = @email LIMIT 1"
      L6_2 = {}
      L6_2["@email"] = L3_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = L4_2[1]
      if L5_2 then
        L5_2 = {}
        L6_2 = L4_2[1]
        L6_2 = L6_2.email
        if L6_2 then
          L6_2 = L4_2[1]
          L6_2 = L6_2.email
          if L6_2 then
            goto lbl_62
          end
        end
        L6_2 = ""
        ::lbl_62::
        L5_2.email = L6_2
        L6_2 = L4_2[1]
        L6_2 = L6_2.nickname
        L5_2.nickname = L6_2
        L6_2 = L4_2[1]
        L6_2 = L6_2.picture
        L5_2.image = L6_2
        L6_2 = L4_2[1]
        L6_2 = L6_2.rank
        L5_2.rank = L6_2
        return L5_2
      else
        L5_2 = nil
        return L5_2
      end
    else
      L4_2 = nil
      return L4_2
    end
  end
end
getTwitterUser = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = nil
  L2_2 = Players
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.twitterAccount
    L9_2 = L9_2.email
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
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchAll
  L2_2 = "SELECT likes, views FROM phone_tweets WHERE email = @email"
  L3_2 = {}
  L3_2["@email"] = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L2_2.likes = 0
  L2_2.views = 0
  L2_2.posts = 0
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L2_2.likes
    L10_2 = L8_2.likes
    L9_2 = L9_2 + L10_2
    L2_2.likes = L9_2
    L9_2 = L2_2.views
    L10_2 = L8_2.views
    L9_2 = L9_2 + L10_2
    L2_2.views = L9_2
    L9_2 = L2_2.posts
    L9_2 = L9_2 + 1
    L2_2.posts = L9_2
  end
  return L2_2
end
L3_1 = Config
L3_1 = L3_1.FrameworkFunctions
L3_1 = L3_1.registerCallback
L4_1 = "high_phone:twitterLogin"
function L5_1(A0_2, A1_2, A2_2, A3_2)
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
  L7_2 = "SELECT password FROM phone_twitteraccounts WHERE email = @email"
  L8_2 = {}
  L8_2["@email"] = L5_2
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
        L4_3 = " SET twitteraccount = @email WHERE "
        L5_3 = Config
        L5_3 = L5_3.IdentifierColumn
        L6_3 = " = @identifier"
        L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3
        L3_3 = {}
        L4_3 = L5_2
        L3_3["@email"] = L4_3
        L4_3 = L4_2.identifier
        L3_3["@identifier"] = L4_3
        L1_3(L2_3, L3_3)
        L1_3 = MySQL
        L1_3 = L1_3.Sync
        L1_3 = L1_3.fetchAll
        L2_3 = "SELECT nickname, picture, rank FROM phone_twitteraccounts WHERE email = @email LIMIT 1"
        L3_3 = {}
        L4_3 = L5_2
        L3_3["@email"] = L4_3
        L1_3 = L1_3(L2_3, L3_3)
        L2_3 = Players
        L3_3 = A0_2
        L2_3 = L2_3[L3_3]
        L3_3 = {}
        L4_3 = L5_2
        L3_3.email = L4_3
        L4_3 = L1_3[1]
        L4_3 = L4_3.nickname
        L3_3.nickname = L4_3
        L4_3 = L1_3[1]
        L4_3 = L4_3.picture
        L3_3.image = L4_3
        L4_3 = L1_3[1]
        L4_3 = L4_3.rank
        L3_3.rank = L4_3
        L2_3.twitterAccount = L3_3
        L2_3 = TriggerClientEvent
        L3_3 = "high_phone:updateTwitter"
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
L3_1(L4_1, L5_1)
L3_1 = Config
L3_1 = L3_1.FrameworkFunctions
L3_1 = L3_1.registerCallback
L4_1 = "high_phone:twitterRegister"
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
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
  L7_2 = L7_2.fetchAll
  L8_2 = "SELECT email, nickname FROM phone_twitteraccounts WHERE email = @email OR nickname = @nickname"
  L9_2 = {}
  L9_2["@email"] = L6_2
  L9_2["@nickname"] = A2_2
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = A0_3[1]
    if nil == L1_3 then
      L1_3 = string
      L1_3 = L1_3.len
      L2_3 = L6_2
      L1_3 = L1_3(L2_3)
      L2_3 = MySQL
      L2_3 = L2_3.Async
      L2_3 = L2_3.execute
      L3_3 = "INSERT INTO phone_twitteraccounts (`nickname`, `email`, `password`) VALUES(@nickname, @email, @pass)"
      L4_3 = {}
      L5_3 = A2_2
      L4_3["@nickname"] = L5_3
      L5_3 = L6_2
      L4_3["@email"] = L5_3
      L5_3 = Config
      L5_3 = L5_3.HashPasswords
      if L5_3 then
        L5_3 = GetPasswordHash
        L6_3 = A4_2
        L5_3 = L5_3(L6_3)
        if L5_3 then
          goto lbl_28
        end
      end
      L5_3 = A4_2
      ::lbl_28::
      L4_3["@pass"] = L5_3
      function L5_3()
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
        L3_4 = " SET twitteraccount = @email WHERE "
        L4_4 = Config
        L4_4 = L4_4.IdentifierColumn
        L5_4 = " = @identifier"
        L1_4 = L1_4 .. L2_4 .. L3_4 .. L4_4 .. L5_4
        L2_4 = {}
        L3_4 = L6_2
        L2_4["@email"] = L3_4
        L3_4 = L5_2.identifier
        L2_4["@identifier"] = L3_4
        L0_4(L1_4, L2_4)
        L0_4 = Players
        L1_4 = A0_2
        L0_4 = L0_4[L1_4]
        L1_4 = {}
        L2_4 = L6_2
        L1_4.email = L2_4
        L2_4 = A2_2
        L1_4.nickname = L2_4
        L1_4.image = ""
        L1_4.rank = "default"
        L0_4.twitterAccount = L1_4
        L0_4 = TriggerClientEvent
        L1_4 = "high_phone:updateTwitter"
        L2_4 = A0_2
        L0_4(L1_4, L2_4)
      end
      L2_3(L3_3, L4_3, L5_3)
    else
      L1_3 = A0_3[1]
      L1_3 = L1_3.email
      L2_3 = L6_2
      if L1_3 == L2_3 then
        L1_3 = A1_2
        L2_3 = Config
        L2_3 = L2_3.Languages
        L3_3 = Config
        L3_3 = L3_3.Language
        L2_3 = L2_3[L3_3]
        L2_3 = L2_3.notifications
        L2_3 = L2_3.emailtaken
        L1_3(L2_3)
      else
        L1_3 = A0_3[1]
        L1_3 = L1_3.nickname
        L2_3 = A2_2
        if L1_3 == L2_3 then
          L1_3 = A1_2
          L2_3 = Config
          L2_3 = L2_3.Languages
          L3_3 = Config
          L3_3 = L3_3.Language
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3.notifications
          L2_3 = L2_3.usernametaken
          L1_3(L2_3)
        end
      end
    end
  end
  L7_2(L8_2, L9_2, L10_2)
end
L3_1(L4_1, L5_1)
L3_1 = {}
L4_1 = {}
L5_1 = RegisterNetEvent
L6_1 = "high_phone:sendResetCode"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "high_phone:sendResetCode"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2
  L4_2 = Config
  L4_2 = L4_2.MailFormat
  L3_2 = L3_2 .. L4_2
  L4_2 = L3_1
  L4_2 = L4_2[L3_2]
  if L4_2 then
    return
  end
  L4_2 = math
  L4_2 = L4_2.randomseed
  L5_2 = os
  L5_2 = L5_2.time
  L5_2 = L5_2()
  L5_2 = L5_2 + L1_2
  L4_2(L5_2)
  L4_2 = L4_1
  L5_2 = math
  L5_2 = L5_2.random
  L6_2 = 111
  L7_2 = 999
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = math
  L6_2 = L6_2.random
  L7_2 = 111
  L8_2 = 999
  L6_2 = L6_2(L7_2, L8_2)
  L5_2 = L5_2 .. L6_2
  L4_2[L3_2] = L5_2
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.fetchScalar
  L5_2 = "SELECT email FROM phone_twitteraccounts WHERE email = @email"
  L6_2 = {}
  L6_2["@email"] = L3_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    if nil ~= A0_3 then
      L1_3 = TriggerEvent
      L2_3 = "high_phone:sendOfflineMailFromServerToAddress"
      L3_3 = L3_2
      L4_3 = {}
      L5_3 = Config
      L5_3 = L5_3.Languages
      L6_3 = Config
      L6_3 = L6_3.Language
      L5_3 = L5_3[L6_3]
      L5_3 = L5_3.twitterresetmail
      L5_3 = L5_3.senderPhoto
      L4_3.photo = L5_3
      L5_3 = Config
      L5_3 = L5_3.Languages
      L6_3 = Config
      L6_3 = L6_3.Language
      L5_3 = L5_3[L6_3]
      L5_3 = L5_3.twitterresetmail
      L5_3 = L5_3.senderName
      L4_3.name = L5_3
      L5_3 = Config
      L5_3 = L5_3.Languages
      L6_3 = Config
      L6_3 = L6_3.Language
      L5_3 = L5_3[L6_3]
      L5_3 = L5_3.twitterresetmail
      L5_3 = L5_3.senderAddress
      L4_3.address = L5_3
      L5_3 = Config
      L5_3 = L5_3.Languages
      L6_3 = Config
      L6_3 = L6_3.Language
      L5_3 = L5_3[L6_3]
      L5_3 = L5_3.twitterresetmail
      L5_3 = L5_3.subject
      L6_3 = replace_vars
      L7_3 = Config
      L7_3 = L7_3.Languages
      L8_3 = Config
      L8_3 = L8_3.Language
      L7_3 = L7_3[L8_3]
      L7_3 = L7_3.twitterresetmail
      L7_3 = L7_3.content
      L8_3 = {}
      L10_3 = L3_2
      L9_3 = L4_1
      L9_3 = L9_3[L10_3]
      L8_3.resetCode = L9_3
      L6_3 = L6_3(L7_3, L8_3)
      L7_3 = {}
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    end
  end
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Citizen
  L4_2 = L4_2.SetTimeout
  L5_2 = Config
  L5_2 = L5_2.TwitterResetTimer
  L5_2 = L5_2 * 1000
  function L6_2()
    local L0_3, L1_3
    L1_3 = L3_2
    L0_3 = L3_1
    L0_3[L1_3] = nil
  end
  L4_2(L5_2, L6_2)
end
L5_1(L6_1, L7_1)
L5_1 = Config
L5_1 = L5_1.FrameworkFunctions
L5_1 = L5_1.registerCallback
L6_1 = "high_phone:resetTwitterAccount"
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = Config
  L5_2 = L5_2.FrameworkFunctions
  L5_2 = L5_2.getPlayer
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = A2_2
  L7_2 = Config
  L7_2 = L7_2.MailFormat
  L6_2 = L6_2 .. L7_2
  L7_2 = L4_1
  L7_2 = L7_2[L6_2]
  if L7_2 == A3_2 then
    L7_2 = MySQL
    L7_2 = L7_2.Async
    L7_2 = L7_2.execute
    L8_2 = "UPDATE phone_twitteraccounts SET `password` = @pass WHERE email = @email"
    L9_2 = {}
    L9_2["@email"] = L6_2
    L10_2 = Config
    L10_2 = L10_2.HashPasswords
    if L10_2 then
      L10_2 = GetPasswordHash
      L11_2 = A4_2
      L10_2 = L10_2(L11_2)
      if L10_2 then
        goto lbl_31
      end
    end
    L10_2 = A4_2
    ::lbl_31::
    L9_2["@pass"] = L10_2
    function L10_2(A0_3)
      local L1_3, L2_3, L3_3
      if A0_3 > 0 then
        L1_3 = A1_2
        L2_3 = "SUCCESS"
        L1_3(L2_3)
      else
        L1_3 = A1_2
        L2_3 = Config
        L2_3 = L2_3.Languages
        L3_3 = Config
        L3_3 = L3_3.Language
        L2_3 = L2_3[L3_3]
        L2_3 = L2_3.notifications
        L2_3 = L2_3.accountdoesntexist
        L1_3(L2_3)
      end
    end
    L7_2(L8_2, L9_2, L10_2)
  else
    L7_2 = A1_2
    L8_2 = Config
    L8_2 = L8_2.Languages
    L9_2 = Config
    L9_2 = L9_2.Language
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.notifications
    L8_2 = L8_2.wrongresetcode
    L7_2(L8_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "high_phone:twitterLogout"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "high_phone:twitterLogout"
function L7_1()
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
  L5_2 = " SET twitteraccount = @email WHERE "
  L6_2 = Config
  L6_2 = L6_2.IdentifierColumn
  L7_2 = " = @identifier"
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
  L4_2 = {}
  L4_2["@email"] = nil
  L5_2 = L1_2.identifier
  L4_2["@identifier"] = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = Players
  L2_2 = L2_2[L0_2]
  L2_2.twitterAccount = nil
  L2_2 = TriggerClientEvent
  L3_2 = "high_phone:updateTwitterUserData"
  L4_2 = L0_2
  L2_2(L3_2, L4_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "high_phone:likeTweet"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "high_phone:likeTweet"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = getTwitterUser
  L4_2 = L2_2.identifier
  L3_2 = L3_2(L4_2)
  L4_2 = tonumber
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L3_2 then
    L5_2 = MySQL
    L5_2 = L5_2.Async
    L5_2 = L5_2.fetchScalar
    L6_2 = "SELECT likers FROM phone_tweets WHERE id = @id"
    L7_2 = {}
    L7_2["@id"] = L4_2
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
      if A0_3 then
        L1_3 = false
        L2_3 = json
        L2_3 = L2_3.decode
        L3_3 = A0_3
        L2_3 = L2_3(L3_3)
        L3_3 = pairs
        L4_3 = L2_3
        L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
        for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
          L9_3 = L3_2.email
          if L8_3 == L9_3 then
            L1_3 = true
            L9_3 = table
            L9_3 = L9_3.remove
            L10_3 = L2_3
            L11_3 = L7_3
            L9_3(L10_3, L11_3)
          end
        end
        if false == L1_3 then
          L3_3 = table
          L3_3 = L3_3.insert
          L4_3 = L2_3
          L5_3 = L3_2.email
          L3_3(L4_3, L5_3)
        end
        L3_3 = MySQL
        L3_3 = L3_3.Async
        L3_3 = L3_3.execute
        L4_3 = "UPDATE phone_tweets SET likers = @likers, likes = @likes WHERE id = @id"
        L5_3 = {}
        L6_3 = L4_2
        L5_3["@id"] = L6_3
        L6_3 = json
        L6_3 = L6_3.encode
        L7_3 = L2_3
        L6_3 = L6_3(L7_3)
        L5_3["@likers"] = L6_3
        L6_3 = #L2_3
        L5_3["@likes"] = L6_3
        L3_3(L4_3, L5_3)
        L3_3 = pairs
        L4_3 = L0_1
        L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
        for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
          L9_3 = L8_3.id
          L10_3 = L4_2
          if L9_3 == L10_3 then
            L9_3 = L0_1
            L9_3 = L9_3[L7_3]
            L10_3 = json
            L10_3 = L10_3.encode
            L11_3 = L2_3
            L10_3 = L10_3(L11_3)
            L9_3.likers = L10_3
            L9_3 = L0_1
            L9_3 = L9_3[L7_3]
            L10_3 = #L2_3
            L9_3.likes = L10_3
            break
          end
        end
      end
    end
    L5_2(L6_2, L7_2, L8_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = Config
L5_1 = L5_1.FrameworkFunctions
L5_1 = L5_1.registerCallback
L6_1 = "high_phone:getTweets"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = getTwitterUser
  L4_2 = L2_2.identifier
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = {}
  L5_2.userData = L3_2
  L6_2 = L0_1
  L5_2.tweets = L6_2
  L4_2(L5_2)
end
L5_1(L6_1, L7_1)

L5_1 = RegisterNetEvent
L6_1 = "high_phone:reportTweet"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "high_phone:reportTweet"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = getTwitterUser
  L4_2 = L2_2.identifier
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.fetchAll
  L5_2 = "SELECT author, title, content FROM phone_tweets WHERE id = @id"
  L6_2 = {}
  L6_2["@id"] = A0_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = A0_3[1]
    if L1_3 then
      L1_3 = Config
      L1_3 = L1_3.SendWebhook
      L2_3 = Config
      L2_3 = L2_3.TweetReportWebhook
      L3_3 = replace_vars
      L4_3 = Config
      L4_3 = L4_3.Languages
      L5_3 = Config
      L5_3 = L5_3.Language
      L4_3 = L4_3[L5_3]
      L4_3 = L4_3.tweetreportwebhook
      L4_3 = L4_3.title
      L5_3 = {}
      L6_3 = A0_2
      L5_3.tweetId = L6_3
      L6_3 = A0_3[1]
      L6_3 = L6_3.author
      L5_3.tweeterName = L6_3
      L6_3 = GetPlayerName
      L7_3 = L1_2
      L6_3 = L6_3(L7_3)
      L5_3.reporterName = L6_3
      L6_3 = L1_2
      L5_3.reporterId = L6_3
      L6_3 = L3_2
      if L6_3 then
        L6_3 = L3_2.nickname
        if L6_3 then
          goto lbl_41
        end
      end
      L6_3 = Config
      L6_3 = L6_3.Languages
      L7_3 = Config
      L7_3 = L7_3.Language
      L6_3 = L6_3[L7_3]
      L6_3 = L6_3.unknown
      ::lbl_41::
      L5_3.reporterTwitterName = L6_3
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = "**"
      L5_3 = A0_3[1]
      L5_3 = L5_3.title
      L6_3 = "**\n"
      L7_3 = A0_3[1]
      L7_3 = L7_3.content
      L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3
      L5_3 = 3447003
      L6_3 = image
      L7_3 = Config
      L7_3 = L7_3.Languages
      L8_3 = Config
      L8_3 = L8_3.Language
      L7_3 = L7_3[L8_3]
      L7_3 = L7_3.tweetreportwebhook
      L7_3 = L7_3.footer
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    end
  end
  L4_2(L5_2, L6_2, L7_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "high_phone:postTweet"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "high_phone:postTweet"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.FrameworkFunctions
  L4_2 = L4_2.getPlayer
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = getTwitterUser
  L6_2 = L4_2.identifier
  L5_2 = L5_2(L6_2)
  L6_2 = os
  L6_2 = L6_2.time
  L6_2 = L6_2()
  L6_2 = L6_2 * 1000
  L7_2 = MySQL
  L7_2 = L7_2.Async
  L7_2 = L7_2.execute
  L8_2 = "INSERT INTO phone_tweets (`email`, `author`, `authorimg`, `authorrank`, `title`, `content`, `image`, `views`, `likes`, `time`) VALUES(@email, @author, @authorimg, @authorrank, @title, @content, @image, 0, 0, @time)"
  L9_2 = {}
  L10_2 = L5_2.email
  L9_2["@email"] = L10_2
  if L5_2 then
    L10_2 = L5_2.nickname
    if L10_2 then
      goto lbl_34
    end
  end
  L10_2 = Config
  L10_2 = L10_2.Languages
  L11_2 = Config
  L11_2 = L11_2.Language
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.unknown
  ::lbl_34::
  L9_2["@author"] = L10_2
  if L5_2 then
    L10_2 = L5_2.image
    if L10_2 then
      goto lbl_41
    end
  end
  L10_2 = nil
  ::lbl_41::
  L9_2["@authorimg"] = L10_2
  if L5_2 then
    L10_2 = L5_2.rank
    if L10_2 then
      goto lbl_48
    end
  end
  L10_2 = "default"
  ::lbl_48::
  L9_2["@authorrank"] = L10_2
  L9_2["@title"] = A0_2
  L9_2["@content"] = A1_2
  L9_2["@image"] = A2_2
  L9_2["@time"] = L6_2
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = Config
    L0_3 = L0_3.TwitterWebhooks
    if L0_3 then
      L0_3 = Config
      L0_3 = L0_3.SendWebhook
      L1_3 = Config
      L1_3 = L1_3.TweetWebhook
      L2_3 = replace_vars
      L3_3 = Config
      L3_3 = L3_3.Languages
      L4_3 = Config
      L4_3 = L4_3.Language
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.newtweetwebhook
      L3_3 = L3_3.title
      L4_3 = {}
      L5_3 = GetPlayerName
      L6_3 = L3_2
      L5_3 = L5_3(L6_3)
      L4_3.senderName = L5_3
      L5_3 = L3_2
      L4_3.senderId = L5_3
      L5_3 = L5_2
      if L5_3 then
        L5_3 = L5_2.nickname
        if L5_3 then
          goto lbl_37
        end
      end
      L5_3 = Config
      L5_3 = L5_3.Languages
      L6_3 = Config
      L6_3 = L6_3.Language
      L5_3 = L5_3[L6_3]
      L5_3 = L5_3.unknown
      ::lbl_37::
      L4_3.senderTwitterName = L5_3
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = "**"
      L4_3 = A0_2
      L5_3 = "**\n"
      L6_3 = A1_2
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3
      L4_3 = 3447003
      L5_3 = A2_2
      L6_3 = Config
      L6_3 = L6_3.Languages
      L7_3 = Config
      L7_3 = L7_3.Language
      L6_3 = L6_3[L7_3]
      L6_3 = L6_3.newtweetwebhook
      L6_3 = L6_3.footer
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    end
    L0_3 = MySQL
    L0_3 = L0_3.Async
    L0_3 = L0_3.fetchScalar
    L1_3 = "SELECT id FROM phone_tweets WHERE time = @time"
    L2_3 = {}
    L3_3 = L6_2
    L2_3["@time"] = L3_3
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L1_4 = table
      L1_4 = L1_4.insert
      L2_4 = L0_1
      L3_4 = {}
      L3_4.id = A0_4
      L3_4.reply = nil
      L4_4 = L5_2.email
      L3_4.email = L4_4
      L4_4 = L5_2
      if L4_4 then
        L4_4 = L5_2.nickname
        if L4_4 then
          goto lbl_22
        end
      end
      L4_4 = Config
      L4_4 = L4_4.Languages
      L5_4 = Config
      L5_4 = L5_4.Language
      L4_4 = L4_4[L5_4]
      L4_4 = L4_4.unknown
      ::lbl_22::
      L3_4.author = L4_4
      L4_4 = L5_2
      if L4_4 then
        L4_4 = L5_2.image
        if L4_4 then
          goto lbl_30
        end
      end
      L4_4 = nil
      ::lbl_30::
      L3_4.authorimg = L4_4
      L4_4 = L5_2
      if L4_4 then
        L4_4 = L5_2.rank
        if L4_4 then
          goto lbl_38
        end
      end
      L4_4 = "default"
      ::lbl_38::
      L3_4.authorrank = L4_4
      L4_4 = A0_2
      L3_4.title = L4_4
      L4_4 = A1_2
      L3_4.content = L4_4
      L4_4 = A2_2
      L3_4.image = L4_4
      L3_4.views = 0
      L3_4.likes = 0
      L4_4 = L6_2
      L3_4.time = L4_4
      L3_4.likers = "[]"
      L1_4(L2_4, L3_4)
      L1_4 = TriggerClientEvent
      L2_4 = "high_phone:addTweet"
      L3_4 = -1
      L4_4 = {}
      L4_4.id = A0_4
      L5_4 = L5_2
      if L5_4 then
        L5_4 = L5_2.email
        if L5_4 then
          goto lbl_64
        end
      end
      L5_4 = ""
      ::lbl_64::
      L4_4.email = L5_4
      L5_4 = L5_2
      if L5_4 then
        L5_4 = L5_2.nickname
        if L5_4 then
          goto lbl_77
        end
      end
      L5_4 = Config
      L5_4 = L5_4.Languages
      L6_4 = Config
      L6_4 = L6_4.Language
      L5_4 = L5_4[L6_4]
      L5_4 = L5_4.unknown
      ::lbl_77::
      L4_4.author = L5_4
      L5_4 = L5_2
      if L5_4 then
        L5_4 = L5_2.image
        if L5_4 then
          goto lbl_85
        end
      end
      L5_4 = nil
      ::lbl_85::
      L4_4.authorimg = L5_4
      L5_4 = L5_2
      if L5_4 then
        L5_4 = Config
        L5_4 = L5_4.TwitterRanks
        L6_4 = L5_2.rank
        L5_4 = L5_4[L6_4]
        if L5_4 then
          goto lbl_98
        end
      end
      L5_4 = Config
      L5_4 = L5_4.TwitterRanks
      L5_4 = L5_4.default
      ::lbl_98::
      L4_4.authorrank = L5_4
      L5_4 = A0_2
      L4_4.title = L5_4
      L5_4 = A1_2
      L4_4.content = L5_4
      L5_4 = A2_2
      L4_4.image = L5_4
      L5_4 = L6_2
      L4_4.time = L5_4
      L1_4(L2_4, L3_4, L4_4)
    end
    L0_3(L1_3, L2_3, L3_3)
  end
  L7_2(L8_2, L9_2, L10_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "high_phone:postReply"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "high_phone:postReply"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = Config
  L3_2 = L3_2.FrameworkFunctions
  L3_2 = L3_2.getPlayer
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = getTwitterUser
  L5_2 = L3_2.identifier
  L4_2 = L4_2(L5_2)
  L5_2 = os
  L5_2 = L5_2.time
  L5_2 = L5_2()
  L5_2 = L5_2 * 1000
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.fetchScalar
  L7_2 = "SELECT author FROM phone_tweets WHERE id = @id"
  L8_2 = {}
  L8_2["@id"] = A0_2
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = MySQL
    L1_3 = L1_3.Async
    L1_3 = L1_3.execute
    L2_3 = "INSERT INTO phone_tweets (`reply`, `email`, `author`, `authorimg`, `authorrank`, `content`, `views`, `likes`, `time`) VALUES(@reply, @email, @author, @authorimg, @authorrank, @content, 0, 0, @time)"
    L3_3 = {}
    L4_3 = A0_2
    L3_3["@reply"] = L4_3
    L4_3 = L4_2
    if L4_3 then
      L4_3 = L4_2.email
      if L4_3 then
        goto lbl_16
      end
    end
    L4_3 = nil
    ::lbl_16::
    L3_3["@email"] = L4_3
    L4_3 = L4_2
    if L4_3 then
      L4_3 = L4_2.nickname
      if L4_3 then
        goto lbl_29
      end
    end
    L4_3 = Config
    L4_3 = L4_3.Languages
    L5_3 = Config
    L5_3 = L5_3.Language
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.unknown
    ::lbl_29::
    L3_3["@author"] = L4_3
    L4_3 = L4_2
    if L4_3 then
      L4_3 = L4_2.image
      if L4_3 then
        goto lbl_37
      end
    end
    L4_3 = nil
    ::lbl_37::
    L3_3["@authorimg"] = L4_3
    L4_3 = L4_2
    if L4_3 then
      L4_3 = L4_2.rank
      if L4_3 then
        goto lbl_45
      end
    end
    L4_3 = "default"
    ::lbl_45::
    L3_3["@authorrank"] = L4_3
    L4_3 = A1_2
    L3_3["@content"] = L4_3
    L4_3 = L5_2
    L3_3["@time"] = L4_3
    function L4_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
      L0_4 = Config
      L0_4 = L0_4.TwitterWebhooks
      if L0_4 then
        L0_4 = Config
        L0_4 = L0_4.SendWebhook
        L1_4 = Config
        L1_4 = L1_4.TweetWebhook
        L2_4 = replace_vars
        L3_4 = Config
        L3_4 = L3_4.Languages
        L4_4 = Config
        L4_4 = L4_4.Language
        L3_4 = L3_4[L4_4]
        L3_4 = L3_4.newtweetwebhook
        L3_4 = L3_4.title
        L4_4 = {}
        L5_4 = GetPlayerName
        L6_4 = L2_2
        L5_4 = L5_4(L6_4)
        L4_4.senderName = L5_4
        L5_4 = L2_2
        L4_4.senderId = L5_4
        L5_4 = L4_2
        if L5_4 then
          L5_4 = L4_2.nickname
          if L5_4 then
            goto lbl_37
          end
        end
        L5_4 = Config
        L5_4 = L5_4.Languages
        L6_4 = Config
        L6_4 = L6_4.Language
        L5_4 = L5_4[L6_4]
        L5_4 = L5_4.unknown
        ::lbl_37::
        L4_4.senderTwitterName = L5_4
        L2_4 = L2_4(L3_4, L4_4)
        L3_4 = "**"
        L4_4 = replace_vars
        L5_4 = Config
        L5_4 = L5_4.Languages
        L6_4 = Config
        L6_4 = L6_4.Language
        L5_4 = L5_4[L6_4]
        L5_4 = L5_4.newtweetwebhook
        L5_4 = L5_4.replying
        L6_4 = {}
        L7_4 = A0_3
        L6_4.tweeterName = L7_4
        L4_4 = L4_4(L5_4, L6_4)
        L5_4 = "**\n"
        L6_4 = A1_2
        L3_4 = L3_4 .. L4_4 .. L5_4 .. L6_4
        L4_4 = 3447003
        L5_4 = image
        L6_4 = Config
        L6_4 = L6_4.Languages
        L7_4 = Config
        L7_4 = L7_4.Language
        L6_4 = L6_4[L7_4]
        L6_4 = L6_4.newtweetwebhook
        L6_4 = L6_4.footer
        L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4)
      end
      L0_4 = MySQL
      L0_4 = L0_4.Async
      L0_4 = L0_4.fetchScalar
      L1_4 = "SELECT id FROM phone_tweets WHERE time = @time"
      L2_4 = {}
      L3_4 = L5_2
      L2_4["@time"] = L3_4
      function L3_4(A0_5)
        local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5
        L1_5 = table
        L1_5 = L1_5.insert
        L2_5 = L0_1
        L3_5 = {}
        L3_5.id = A0_5
        L4_5 = A0_2
        L3_5.reply = L4_5
        L4_5 = L4_2
        if L4_5 then
          L4_5 = L4_2.email
          if L4_5 then
            goto lbl_16
          end
        end
        L4_5 = nil
        ::lbl_16::
        L3_5.email = L4_5
        L4_5 = L4_2
        if L4_5 then
          L4_5 = L4_2.nickname
          if L4_5 then
            goto lbl_29
          end
        end
        L4_5 = Config
        L4_5 = L4_5.Languages
        L5_5 = Config
        L5_5 = L5_5.Language
        L4_5 = L4_5[L5_5]
        L4_5 = L4_5.unknown
        ::lbl_29::
        L3_5.author = L4_5
        L4_5 = L4_2
        if L4_5 then
          L4_5 = L4_2.image
          if L4_5 then
            goto lbl_37
          end
        end
        L4_5 = nil
        ::lbl_37::
        L3_5.authorimg = L4_5
        L4_5 = L4_2
        if L4_5 then
          L4_5 = L4_2.rank
          if L4_5 then
            goto lbl_45
          end
        end
        L4_5 = "default"
        ::lbl_45::
        L3_5.authorrank = L4_5
        L4_5 = A1_2
        L3_5.content = L4_5
        L3_5.image = ""
        L3_5.views = 0
        L3_5.likes = 0
        L4_5 = L5_2
        L3_5.time = L4_5
        L3_5.likers = "[]"
        L1_5(L2_5, L3_5)
        L1_5 = TriggerClientEvent
        L2_5 = "high_phone:addReply"
        L3_5 = -1
        L4_5 = A0_2
        L5_5 = {}
        L5_5.id = A0_5
        L6_5 = L4_2
        if L6_5 then
          L6_5 = L4_2.email
          if L6_5 then
            goto lbl_69
          end
        end
        L6_5 = ""
        ::lbl_69::
        L5_5.email = L6_5
        L6_5 = L4_2
        if L6_5 then
          L6_5 = L4_2.nickname
          if L6_5 then
            goto lbl_82
          end
        end
        L6_5 = Config
        L6_5 = L6_5.Languages
        L7_5 = Config
        L7_5 = L7_5.Language
        L6_5 = L6_5[L7_5]
        L6_5 = L6_5.unknown
        ::lbl_82::
        L5_5.author = L6_5
        L6_5 = L4_2
        if L6_5 then
          L6_5 = L4_2.image
          if L6_5 then
            goto lbl_90
          end
        end
        L6_5 = nil
        ::lbl_90::
        L5_5.authorimg = L6_5
        L6_5 = L4_2
        if L6_5 then
          L6_5 = Config
          L6_5 = L6_5.TwitterRanks
          L7_5 = L4_2.rank
          L6_5 = L6_5[L7_5]
          if L6_5 then
            goto lbl_103
          end
        end
        L6_5 = Config
        L6_5 = L6_5.TwitterRanks
        L6_5 = L6_5.default
        ::lbl_103::
        L5_5.authorrank = L6_5
        L6_5 = A1_2
        L5_5.content = L6_5
        L6_5 = L5_2
        L5_5.time = L6_5
        L1_5(L2_5, L3_5, L4_5, L5_5)
      end
      L0_4(L1_4, L2_4, L3_4)
    end
    L1_3(L2_3, L3_3, L4_3)
  end
  L6_2(L7_2, L8_2, L9_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "high_phone:viewTweets"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "high_phone:viewTweets"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Config
  L0_2 = L0_2.FrameworkFunctions
  L0_2 = L0_2.getPlayer
  L1_2 = source
  L0_2 = L0_2(L1_2)
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = L0_1
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.time
    L3_3 = A1_3.time
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = 0
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L1_2 >= 4 then
      return
    end
    L8_2 = L7_2.reply
    if not L8_2 then
      L8_2 = L0_1
      L8_2 = L8_2[L6_2]
      L9_2 = L0_1
      L9_2 = L9_2[L6_2]
      L9_2 = L9_2.views
      L9_2 = L9_2 + 1
      L8_2.views = L9_2
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.execute
  L3_2 = "UPDATE phone_tweets SET views = views + 1 WHERE `reply` IS NULL AND id IN (SELECT id FROM ( SELECT id FROM phone_tweets ORDER BY time DESC LIMIT 4 ) tmp )"
  L4_2 = {}
  L2_2(L3_2, L4_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "high_phone:deleteTweet"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "high_phone:deleteTweet"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = getTwitterUser
  L4_2 = L2_2.identifier
  L3_2 = L3_2(L4_2)
  L4_2 = "DELETE FROM phone_tweets WHERE (id = @id OR reply = @id) AND email = @email"
  if L3_2 then
    L5_2 = Config
    L5_2 = L5_2.TwitterRanks
    L6_2 = L3_2.rank
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.admin
    if L5_2 then
      L4_2 = "DELETE FROM phone_tweets WHERE id = @id OR reply = @id"
    end
  end
  L5_2 = pairs
  L6_2 = L0_1
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.id
    if L11_2 == A0_2 then
      L11_2 = L0_1
      L11_2[L9_2] = nil
      break
    end
  end
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.execute
  L6_2 = L4_2
  L7_2 = {}
  if L3_2 then
    L8_2 = L3_2.email
    if L8_2 then
      goto lbl_46
    end
  end
  L8_2 = ""
  ::lbl_46::
  L7_2["@email"] = L8_2
  L7_2["@id"] = A0_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = TriggerClientEvent
    L1_3 = "high_phone:deleteTweet"
    L2_3 = -1
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L5_2(L6_2, L7_2, L8_2)
end
L5_1(L6_1, L7_1)
L5_1 = Config
L5_1 = L5_1.FrameworkFunctions
L5_1 = L5_1.registerCallback
L6_1 = "high_phone:twittersaveSettings"
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = Config
  L5_2 = L5_2.FrameworkFunctions
  L5_2 = L5_2.getPlayer
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = getTwitterUser
  L7_2 = L5_2.identifier
  L6_2 = L6_2(L7_2)
  if "" ~= A2_2 then
    L7_2 = MySQL
    L7_2 = L7_2.Async
    L7_2 = L7_2.fetchScalar
    L8_2 = "SELECT email FROM phone_twitteraccounts WHERE nickname = @nickname"
    L9_2 = {}
    L9_2["@nickname"] = A2_2
    function L10_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      if nil == A0_3 then
        L1_3 = MySQL
        L1_3 = L1_3.Sync
        L1_3 = L1_3.execute
        L2_3 = "UPDATE phone_twitteraccounts SET nickname = @nickname WHERE email = @email"
        L3_3 = {}
        L4_3 = A2_2
        L3_3["@nickname"] = L4_3
        L4_3 = L6_2.email
        L3_3["@email"] = L4_3
        L1_3(L2_3, L3_3)
        L1_3 = Players
        L2_3 = A0_2
        L1_3 = L1_3[L2_3]
        L1_3 = L1_3.twitterAccount
        L2_3 = A2_2
        L1_3.nickname = L2_3
        L1_3 = A1_2
        L2_3 = "SUCCESS"
        L1_3(L2_3)
        L1_3 = TriggerClientEvent
        L2_3 = "high_phone:updateTwitterUserData"
        L3_3 = A0_2
        L1_3(L2_3, L3_3)
      else
        L1_3 = A1_2
        L2_3 = Config
        L2_3 = L2_3.Languages
        L3_3 = Config
        L3_3 = L3_3.Language
        L2_3 = L2_3[L3_3]
        L2_3 = L2_3.notifications
        L2_3 = L2_3.usernametaken
        L1_3(L2_3)
      end
    end
    L7_2(L8_2, L9_2, L10_2)
  end
  if "" ~= A3_2 then
    L7_2 = Config
    L7_2 = L7_2.HashPasswords
    if L7_2 then
      L7_2 = GetPasswordHash
      L8_2 = A3_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        goto lbl_32
      end
    end
    L7_2 = A3_2
    ::lbl_32::
    L8_2 = MySQL
    L8_2 = L8_2.Sync
    L8_2 = L8_2.execute
    L9_2 = "UPDATE phone_twitteraccounts SET password = @password WHERE email = @email"
    L10_2 = {}
    L10_2["@password"] = L7_2
    L11_2 = L6_2.email
    L10_2["@email"] = L11_2
    L8_2(L9_2, L10_2)
    L8_2 = A1_2
    L9_2 = "SUCCESS"
    L8_2(L9_2)
    L8_2 = TriggerClientEvent
    L9_2 = "high_phone:updateTwitterUserData"
    L10_2 = A0_2
    L8_2(L9_2, L10_2)
  end
  if "" ~= A4_2 then
    L7_2 = MySQL
    L7_2 = L7_2.Sync
    L7_2 = L7_2.execute
    L8_2 = "UPDATE phone_twitteraccounts SET picture = @picture WHERE email = @email"
    L9_2 = {}
    L9_2["@picture"] = A4_2
    L10_2 = L6_2.email
    L9_2["@email"] = L10_2
    L7_2(L8_2, L9_2)
    L7_2 = Players
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2.twitterAccount
    L7_2.image = A4_2
    L7_2 = A1_2
    L8_2 = "SUCCESS"
    L7_2(L8_2)
    L7_2 = TriggerClientEvent
    L8_2 = "high_phone:updateTwitterUserData"
    L9_2 = A0_2
    L7_2(L8_2, L9_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = Config
L5_1 = L5_1.FrameworkFunctions
L5_1 = L5_1.registerCallback
L6_1 = "high_phone:getTwitterUserData"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = getTwitterUser
  L4_2 = L2_2.identifier
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = L2_1
    L5_2 = L3_2.email
    L4_2 = L4_2(L5_2)
    L5_2 = A1_2
    L6_2 = json
    L6_2 = L6_2.encode
    L7_2 = {}
    L8_2 = L4_2.posts
    L7_2.posts = L8_2
    L8_2 = L4_2.likes
    L7_2.likes = L8_2
    L8_2 = L4_2.views
    L7_2.views = L8_2
    L8_2 = L3_2.nickname
    L7_2.name = L8_2
    L8_2 = L3_2.email
    L7_2.email = L8_2
    L8_2 = L3_2.image
    L7_2.image = L8_2
    L8_2 = Config
    L8_2 = L8_2.TwitterRanks
    L9_2 = L3_2.rank
    L8_2 = L8_2[L9_2]
    L7_2.rank = L8_2
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    L5_2(L6_2, L7_2, L8_2, L9_2)
  else
    L4_2 = A1_2
    L5_2 = json
    L5_2 = L5_2.encode
    L6_2 = {}
    L6_2.posts = 0
    L6_2.likes = 0
    L6_2.views = 0
    L6_2.name = ""
    L6_2.email = ""
    L6_2.image = ""
    L7_2 = Config
    L7_2 = L7_2.TwitterRanks
    L7_2 = L7_2.default
    L6_2.rank = L7_2
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = Config
L5_1 = L5_1.Commands
L5_1 = L5_1.twitter_rank
L5_1 = L5_1.enabled
if L5_1 then
  L5_1 = RegisterCommand
  L6_1 = Config
  L6_1 = L6_1.Commands
  L6_1 = L6_1.twitter_rank
  L6_1 = L6_1.name
  function L7_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
    L2_2 = Config
    L2_2 = L2_2.FrameworkFunctions
    L2_2 = L2_2.getPlayer
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = A1_2[1]
    L4_2 = A1_2[2]
    if nil == L3_2 then
      L5_2 = TriggerClientEvent
      L6_2 = "chat:addMessage"
      L7_2 = A0_2
      L8_2 = {}
      L9_2 = {}
      L10_2 = Config
      L10_2 = L10_2.Commands
      L10_2 = L10_2.twitter_rank
      L10_2 = L10_2.notifications
      L10_2 = L10_2.error_prefix
      L11_2 = Config
      L11_2 = L11_2.Commands
      L11_2 = L11_2.twitter_rank
      L11_2 = L11_2.notifications
      L11_2 = L11_2.email_not_specified
      L9_2[1] = L10_2
      L9_2[2] = L11_2
      L8_2.args = L9_2
      return L5_2(L6_2, L7_2, L8_2)
    end
    if nil == L4_2 then
      L5_2 = TriggerClientEvent
      L6_2 = "chat:addMessage"
      L7_2 = A0_2
      L8_2 = {}
      L9_2 = {}
      L10_2 = Config
      L10_2 = L10_2.Commands
      L10_2 = L10_2.twitter_rank
      L10_2 = L10_2.notifications
      L10_2 = L10_2.error_prefix
      L11_2 = Config
      L11_2 = L11_2.Commands
      L11_2 = L11_2.twitter_rank
      L11_2 = L11_2.notifications
      L11_2 = L11_2.group_not_specified
      L9_2[1] = L10_2
      L9_2[2] = L11_2
      L8_2.args = L9_2
      return L5_2(L6_2, L7_2, L8_2)
    end
    L5_2 = false
    L6_2 = pairs
    L7_2 = Config
    L7_2 = L7_2.AdminAces
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = IsPlayerAceAllowed
      L13_2 = A0_2
      L14_2 = L11_2
      L12_2 = L12_2(L13_2, L14_2)
      if L12_2 then
        L5_2 = true
        break
      end
    end
    L6_2 = pairs
    L7_2 = Config
    L7_2 = L7_2.AdminGroups
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = L2_2.group
      if L12_2 == L11_2 then
        L5_2 = true
        break
      end
    end
    if L5_2 then
      L6_2 = Config
      L6_2 = L6_2.TwitterRanks
      L6_2 = L6_2[L4_2]
      if not L6_2 then
        L6_2 = TriggerClientEvent
        L7_2 = "chat:addMessage"
        L8_2 = A0_2
        L9_2 = {}
        L10_2 = {}
        L11_2 = Config
        L11_2 = L11_2.Commands
        L11_2 = L11_2.twitter_rank
        L11_2 = L11_2.notifications
        L11_2 = L11_2.error_prefix
        L12_2 = replace_vars
        L13_2 = Config
        L13_2 = L13_2.Commands
        L13_2 = L13_2.twitter_rank
        L13_2 = L13_2.notifications
        L13_2 = L13_2.rank_non_existant
        L14_2 = {}
        L14_2.rank = L4_2
        L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
        L10_2[1] = L11_2
        L10_2[2] = L12_2
        L10_2[3] = L13_2
        L10_2[4] = L14_2
        L9_2.args = L10_2
        return L6_2(L7_2, L8_2, L9_2)
      end
      L6_2 = MySQL
      L6_2 = L6_2.Async
      L6_2 = L6_2.fetchScalar
      L7_2 = "SELECT email FROM phone_twitteraccounts WHERE email = @email"
      L8_2 = {}
      L8_2["@email"] = L3_2
      function L9_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
        if A0_3 then
          L1_3 = L1_1
          L2_3 = L3_2
          L1_3 = L1_3(L2_3)
          if L1_3 then
            L2_3 = Players
            L3_3 = L1_3.source
            L2_3 = L2_3[L3_3]
            L2_3 = L2_3.twitterAccount
            L3_3 = L4_2
            L2_3.rank = L3_3
          end
          L2_3 = MySQL
          L2_3 = L2_3.Async
          L2_3 = L2_3.execute
          L3_3 = "UPDATE phone_twitteraccounts SET `rank` = @rank WHERE email = @email"
          L4_3 = {}
          L5_3 = L3_2
          L4_3["@email"] = L5_3
          L5_3 = L4_2
          L4_3["@rank"] = L5_3
          function L5_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
            L0_4 = TriggerClientEvent
            L1_4 = "chat:addMessage"
            L2_4 = A0_2
            L3_4 = {}
            L4_4 = {}
            L5_4 = Config
            L5_4 = L5_4.Commands
            L5_4 = L5_4.twitter_rank
            L5_4 = L5_4.notifications
            L5_4 = L5_4.success_prefix
            L6_4 = replace_vars
            L7_4 = Config
            L7_4 = L7_4.Commands
            L7_4 = L7_4.twitter_rank
            L7_4 = L7_4.notifications
            L7_4 = L7_4.group_successfully_set
            L8_4 = {}
            L9_4 = L3_2
            L8_4.email = L9_4
            L9_4 = L4_2
            L8_4.rank = L9_4
            L6_4, L7_4, L8_4, L9_4 = L6_4(L7_4, L8_4)
            L4_4[1] = L5_4
            L4_4[2] = L6_4
            L4_4[3] = L7_4
            L4_4[4] = L8_4
            L4_4[5] = L9_4
            L3_4.args = L4_4
            L0_4(L1_4, L2_4, L3_4)
          end
          L2_3(L3_3, L4_3, L5_3)
        else
          L1_3 = TriggerClientEvent
          L2_3 = "chat:addMessage"
          L3_3 = A0_2
          L4_3 = {}
          L5_3 = {}
          L6_3 = Config
          L6_3 = L6_3.Commands
          L6_3 = L6_3.twitter_rank
          L6_3 = L6_3.notifications
          L6_3 = L6_3.error_prefix
          L7_3 = Config
          L7_3 = L7_3.Commands
          L7_3 = L7_3.twitter_rank
          L7_3 = L7_3.notifications
          L7_3 = L7_3.account_doesnt_exist
          L5_3[1] = L6_3
          L5_3[2] = L7_3
          L4_3.args = L5_3
          L1_3(L2_3, L3_3, L4_3)
        end
      end
      L6_2(L7_2, L8_2, L9_2)
    else
      L6_2 = TriggerClientEvent
      L7_2 = "chat:addMessage"
      L8_2 = A0_2
      L9_2 = {}
      L10_2 = {}
      L11_2 = Config
      L11_2 = L11_2.Commands
      L11_2 = L11_2.twitter_rank
      L11_2 = L11_2.notifications
      L11_2 = L11_2.error_prefix
      L12_2 = Config
      L12_2 = L12_2.Commands
      L12_2 = L12_2.twitter_rank
      L12_2 = L12_2.notifications
      L12_2 = L12_2.no_permission
      L10_2[1] = L11_2
      L10_2[2] = L12_2
      L9_2.args = L10_2
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L5_1(L6_1, L7_1)
end
