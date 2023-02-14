local L0_1, L1_1, L2_1
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:getAds"
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
  L4_2 = "SELECT * FROM phone_ads ORDER BY time DESC LIMIT "
  L5_2 = Config
  L5_2 = L5_2.AdsLimit
  L4_2 = L4_2 .. L5_2
  L5_2 = {}
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:postAd"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:postAd"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L4_2 = source
  L5_2 = Config
  L5_2 = L5_2.FrameworkFunctions
  L5_2 = L5_2.getPlayer
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = os
  L6_2 = L6_2.time
  L6_2 = L6_2()
  L6_2 = L6_2 * 1000
  L7_2 = "default"
  L8_2 = pairs
  L9_2 = Config
  L9_2 = L9_2.AdsCategories
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = type
    L15_2 = L13_2.job
    L14_2 = L14_2(L15_2)
    if "table" == L14_2 then
      L14_2 = pairs
      L15_2 = L13_2.job
      L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
      for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
        L20_2 = L5_2.jobName
        if L20_2 == L19_2 then
          L20_2 = L5_2.jobGrade
          L21_2 = L13_2.jobGrade
          if L20_2 >= L21_2 then
            L7_2 = L13_2.job
            break
          end
        end
      end
    else
      L14_2 = L5_2.jobName
      L15_2 = L13_2.job
      if L14_2 == L15_2 then
        L14_2 = L5_2.jobGrade
        L15_2 = L13_2.jobGrade
        if L14_2 >= L15_2 then
          L7_2 = L13_2.job
          break
        end
      end
    end
  end
  L8_2 = MySQL
  L8_2 = L8_2.Async
  L8_2 = L8_2.execute
  L9_2 = "INSERT INTO phone_ads (`owner`, `job`, `author`, `title`, `content`, `image`, `data`, `time`) VALUES(@identifier, @job, @author, @title, @content, @image, @data, @time)"
  L10_2 = {}
  L11_2 = L5_2.identifier
  L10_2["@identifier"] = L11_2
  L11_2 = type
  L12_2 = L7_2
  L11_2 = L11_2(L12_2)
  if "table" == L11_2 then
    L11_2 = L7_2[1]
    if L11_2 then
      goto lbl_70
    end
  end
  L11_2 = L7_2
  ::lbl_70::
  L10_2["@job"] = L11_2
  L11_2 = L5_2.getIdentity
  L11_2 = L11_2()
  L11_2 = L11_2.firstname
  L12_2 = " "
  L13_2 = L5_2.getIdentity
  L13_2 = L13_2()
  L13_2 = L13_2.lastname
  L11_2 = L11_2 .. L12_2 .. L13_2
  L10_2["@author"] = L11_2
  L10_2["@title"] = A0_2
  L10_2["@content"] = A1_2
  L10_2["@image"] = A2_2
  L10_2["@data"] = A3_2
  L10_2["@time"] = L6_2
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = Config
    L0_3 = L0_3.AdWebhooks
    if L0_3 then
      L0_3 = Config
      L0_3 = L0_3.SendWebhook
      L1_3 = Config
      L1_3 = L1_3.AdWebhook
      L2_3 = replace_vars
      L3_3 = Config
      L3_3 = L3_3.Languages
      L4_3 = Config
      L4_3 = L4_3.Language
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.newadwebhook
      L3_3 = L3_3.title
      L4_3 = {}
      L5_3 = GetPlayerName
      L6_3 = L4_2
      L5_3 = L5_3(L6_3)
      L4_3.senderName = L5_3
      L5_3 = L4_2
      L4_3.senderId = L5_3
      L5_3 = L5_2.getIdentity
      L5_3 = L5_3()
      L5_3 = L5_3.firstname
      L6_3 = " "
      L7_3 = L5_2.getIdentity
      L7_3 = L7_3()
      L7_3 = L7_3.lastname
      L5_3 = L5_3 .. L6_3 .. L7_3
      L4_3.senderFullname = L5_3
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = "**"
      L4_3 = A0_2
      L5_3 = "**\n"
      L6_3 = A1_2
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3
      L4_3 = 15105570
      L5_3 = A2_2
      L6_3 = Config
      L6_3 = L6_3.Languages
      L7_3 = Config
      L7_3 = L7_3.Language
      L6_3 = L6_3[L7_3]
      L6_3 = L6_3.newadwebhook
      L6_3 = L6_3.footer
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    end
    L0_3 = MySQL
    L0_3 = L0_3.Async
    L0_3 = L0_3.fetchAll
    L1_3 = "SELECT * FROM phone_ads WHERE time = @time"
    L2_3 = {}
    L3_3 = L6_2
    L2_3["@time"] = L3_3
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
      L1_4 = TriggerClientEvent
      L2_4 = "high_phone:addAdvertisment"
      L3_4 = -1
      L4_4 = json
      L4_4 = L4_4.encode
      L5_4 = {}
      L6_4 = A0_4[1]
      L6_4 = L6_4.id
      L5_4.id = L6_4
      L6_4 = L5_2.identifier
      L5_4.owner = L6_4
      L6_4 = type
      L7_4 = L7_2
      L6_4 = L6_4(L7_4)
      if "table" == L6_4 then
        L6_4 = L7_2
        L6_4 = L6_4[1]
        if L6_4 then
          goto lbl_23
        end
      end
      L6_4 = L7_2
      ::lbl_23::
      L5_4.job = L6_4
      L6_4 = L5_2.getIdentity
      L6_4 = L6_4()
      L6_4 = L6_4.firstname
      L7_4 = " "
      L8_4 = L5_2.getIdentity
      L8_4 = L8_4()
      L8_4 = L8_4.lastname
      L6_4 = L6_4 .. L7_4 .. L8_4
      L5_4.author = L6_4
      L6_4 = A0_2
      L5_4.title = L6_4
      L6_4 = A1_2
      L5_4.content = L6_4
      L6_4 = A2_2
      L5_4.image = L6_4
      L6_4 = A3_2
      L5_4.data = L6_4
      L6_4 = L6_2
      L5_4.time = L6_4
      L4_4, L5_4, L6_4, L7_4, L8_4 = L4_4(L5_4)
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
    end
    L0_3(L1_3, L2_3, L3_3)
  end
  L8_2(L9_2, L10_2, L11_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:editAd"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:editAd"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.FrameworkFunctions
  L4_2 = L4_2.getPlayer
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.execute
  L6_2 = "UPDATE phone_ads SET `title` = @title, `content` = @content WHERE id = @id AND owner = @owner"
  L7_2 = {}
  L8_2 = L4_2.identifier
  L7_2["@owner"] = L8_2
  L7_2["@title"] = A1_2
  L7_2["@content"] = A2_2
  L7_2["@id"] = A0_2
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerClientEvent
    L1_3 = "high_phone:updateAds"
    L2_3 = -1
    L0_3(L1_3, L2_3)
  end
  L5_2(L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:deleteAd"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:deleteAd"
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
  L4_2 = "DELETE FROM phone_ads WHERE id = @id AND owner = @owner"
  L5_2 = {}
  L6_2 = L2_2.identifier
  L5_2["@owner"] = L6_2
  L5_2["@id"] = A0_2
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = TriggerClientEvent
    L1_3 = "high_phone:deleteAd"
    L2_3 = -1
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
