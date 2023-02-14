local data = {}

function has_value(_ARG_0_, _ARG_1_)
  if _ARG_0_ == nil then return false end
  for _FORV_12_, _FORV_13_ in ipairs(_ARG_0_) do
    if _FORV_13_ == _ARG_1_ then
      return true
    end
  end
  return false
end
function replace_vars(_ARG_0_, _ARG_1_)
  if not _ARG_1_ then
    _ARG_1_ = _ARG_0_
    _ARG_0_ = _ARG_1_[1]
  end
  return (string.gsub(_ARG_0_, "({([^}]+)})", function(_ARG_0_, _ARG_1_)
    return data[_ARG_1_] or _ARG_0_
  end))
end
function table_clone(_ARG_0_)
  for _FORV_12_, _FORV_13_ in pairs(_ARG_0_) do
    data[_FORV_12_] = _FORV_13_
  end
  return {}
end

for _FORV_19_ = 48, 57 do
  table.insert(data, string.char(_FORV_19_))
end

for _FORV_19_ = 65, 90 do
  table.insert(data, string.char(_FORV_19_))
end

for _FORV_19_ = 97, 122 do
  table.insert(data, string.char(_FORV_19_))
end

function string.random(_ARG_0_)
  math.randomseed(os.time())
  
  if _ARG_0_ > 0 then
    return string.random(_ARG_0_ - 1) .. data[math.random(1, #data)]
  else
    return ""
  end
end

local voiceReource = {}
voiceReource[4], voiceReource[3], voiceReource[2], voiceReource[1] = "tokovoip_script", "saltychat", "pma-voice", "mumble-voip"
for _FORV_19_ = 0, GetNumResources() do
  for _FORV_23_, _FORV_24_ in pairs(voiceReource) do
    if _FORV_24_ == GetResourceByFindIndex(_FORV_19_) then
      if "started" == GetResourceState((GetResourceByFindIndex(_FORV_19_))) or "starting" ~= GetResourceState((GetResourceByFindIndex(_FORV_19_))) then
      end

      Config.Voice = _FORV_24_
      break
    end
  end
end