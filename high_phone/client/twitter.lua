local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = RegisterNUICallback
L1_1 = "twitterLogin"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.triggerCallback
  L3_2 = "high_phone:twitterLogin"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.email
  L6_2 = A0_2.password
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "twitterRegister"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.triggerCallback
  L3_2 = "high_phone:twitterRegister"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.nickname
  L6_2 = A0_2.email
  L7_2 = A0_2.password
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "sendResetCode"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "high_phone:sendResetCode"
  L4_2 = A0_2.email
  L2_2(L3_2, L4_2)
  A1_2("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "resetTwitterAccount"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.triggerCallback
  L3_2 = "high_phone:resetTwitterAccount"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.email
  L6_2 = A0_2.code
  L7_2 = A0_2.password
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "twitterLogout"
function L2_1(A0_2, A1_2)
  local L1_2, L2_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:twitterLogout"
  L1_2(L2_2)
  A1_2("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "likeTweet"
function L2_1(A0_2, A1_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:likeTweet"
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
  A1_2("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "viewTweets"
function L2_1(A0_2, A1_2)
  local L1_2, L2_2
  L1_2 = TriggerServerEvent
  L2_2 = "high_phone:viewTweets"
  L1_2(L2_2)
  A1_2("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "updateTweets"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = TriggerEvent
  L3_2 = "high_phone:updateTweets"
  L2_2(L3_2)
  A1_2("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "updateTwitterUserData"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = TriggerEvent
  L3_2 = "high_phone:updateTwitterUserData"
  L2_2(L3_2)
  A1_2("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "postTweet"
L2_1 = Config
L2_1 = L2_1.CustomCallbacks
L2_1 = L2_1.postTweet
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "postReply"
L2_1 = Config
L2_1 = L2_1.CustomCallbacks
L2_1 = L2_1.postReply
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "deleteTweet"
L2_1 = Config
L2_1 = L2_1.CustomCallbacks
L2_1 = L2_1.deleteTweet
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "reportTweet"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "high_phone:reportTweet"
  L4_2 = A0_2.id
  L2_2(L3_2, L4_2)
  A1_2("ok")
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "twittersaveSettings"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.triggerCallback
  L3_2 = "high_phone:twittersaveSettings"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.nickname
  L6_2 = A0_2.password
  L7_2 = A0_2.image
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:addTweet"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:addTweet"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "newTweet"
  L2_2.tweet = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:deleteTweet"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:deleteTweet"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "deleteTweet"
  L2_2.tweetId = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:addReply"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:addReply"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "newReply"
  L3_2.tweetId = A0_2
  L3_2.reply = A1_2
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateTwitterUserData"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:updateTwitterUserData"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.FrameworkFunctions
  L0_2 = L0_2.triggerCallback
  L1_2 = "high_phone:getTwitterUserData"
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "updateTwitterUserData"
    L2_3.player = A0_3
    L1_3(L2_3)
  end
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)

RegisterNetEvent("high_phone:updateTweets")
AddEventHandler("high_phone:updateTweets", function()
  Config.FrameworkFunctions.triggerCallback("high_phone:getTweets", function(_ARG_0_)
    for _FORV_19_, _FORV_20_ in ipairs(_ARG_0_.tweets) do
      if nil == _FORV_20_.authorrank or Config.TwitterRanks[_FORV_20_.authorrank] then
      end
      _FORV_20_.authorrank = Config.TwitterRanks.default
      if nil ~= _ARG_0_.userData then
        _FORV_20_.liked = has_value(json.decode(_FORV_20_.likers), _ARG_0_.userData.email)
      end
      _FORV_20_.replies = {}
      for _FORV_24_, _FORV_25_ in ipairs(_ARG_0_.tweets) do
        if _FORV_25_.reply and _FORV_25_.reply == _FORV_20_.id then
          if nil == _FORV_25_.authorrank or Config.TwitterRanks[_FORV_25_.authorrank] then
          end
          _FORV_25_.authorrank = Config.TwitterRanks.default
          if nil ~= _ARG_0_.userData then
            _FORV_25_.liked = has_value(json.decode(_FORV_25_.likers), _ARG_0_.userData.email)
          end
          table.insert(_FORV_20_.replies, _FORV_25_)
        end
      end
      table.sort(_FORV_20_.replies, function(_ARG_0_, _ARG_1_)
        return _ARG_0_.time < _ARG_1_.time
      end)
    end
    table.sort(_ARG_0_.tweets, function(_ARG_0_, _ARG_1_)
      return _ARG_0_.time > _ARG_1_.time
    end)
    local data = {}
    data.action = "updateTweets"
    data.tweets = _ARG_0_.tweets
    SendNUIMessage(data)
  end)
end)

L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateTwitter"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "high_phone:updateTwitter"
function L2_1()
  local L0_2, L1_2
  L0_2 = TriggerEvent
  L1_2 = "high_phone:updateTwitterUserData"
  L0_2(L1_2)
  L0_2 = TriggerEvent
  L1_2 = "high_phone:updateTweets"
  L0_2(L1_2)
end
L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.Commands
L0_1 = L0_1.twitter_rank
L0_1 = L0_1.enabled
if L0_1 then
  L0_1 = TriggerEvent
  L1_1 = "chat:addSuggestion"
  L2_1 = "/"
  L3_1 = Config
  L3_1 = L3_1.Commands
  L3_1 = L3_1.twitter_rank
  L3_1 = L3_1.name
  L2_1 = L2_1 .. L3_1
  L3_1 = Config
  L3_1 = L3_1.Commands
  L3_1 = L3_1.twitter_rank
  L3_1 = L3_1.suggestion_label
  L4_1 = Config
  L4_1 = L4_1.Commands
  L4_1 = L4_1.twitter_rank
  L4_1 = L4_1.args
  L0_1(L1_1, L2_1, L3_1, L4_1)
end
