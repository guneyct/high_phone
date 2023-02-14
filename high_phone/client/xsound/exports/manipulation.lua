function Distance(name_, distance_)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:Distance(name_, distance_)
    end

    SendNUIMessage({
        status = "distance",
        name = name_,
        distance = distance_,
    })
    soundInfo[name_].distance = distance_
end

function Position(name_, pos)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:Position(name_, pos)
    end

    SendNUIMessage({
        status = "soundPosition",
        name = name_,
        x = pos.x,
        y = pos.y,
        z = pos.z,
    })
    soundInfo[name_].position = pos
    soundInfo[name_].id = name_
end

function Destroy(name_)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:Destroy(name_)
    end

    SendNUIMessage({
        status = "delete",
        name = name_
    })
    soundInfo[name_] = nil

    if globalOptionsCache[name_] ~= nil and globalOptionsCache[name_].onPlayEnd ~= nil then
        globalOptionsCache[name_].onPlayEnd(getInfo(name_))
    end

    globalOptionsCache[name_] = nil
end

function Resume(name_)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:Resume(name_)
    end

    SendNUIMessage({
        status = "resume",
        name = name_
    })
    soundInfo[name_].playing = true
    soundInfo[name_].paused = false

    if globalOptionsCache[name_] ~= nil and globalOptionsCache[name_].onPlayResume ~= nil then
        globalOptionsCache[name_].onPlayResume(getInfo(name_))
    end
end

function Pause(name_)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:Pause(name_)
    end

    SendNUIMessage({
        status = "pause",
        name = name_
    })
    soundInfo[name_].playing = false
    soundInfo[name_].paused = true

    if globalOptionsCache[name_] ~= nil and globalOptionsCache[name_].onPlayPause ~= nil then
        globalOptionsCache[name_].onPlayPause(getInfo(name_))
    end
end

function setVolume(name_, vol)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:setVolume(name_, vol)
    end

    SendNUIMessage({
        status = "volume",
        volume = vol,
        name = name_,
    })
    soundInfo[name_].volume = vol
end

function setVolumeMax(name_, vol)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:setVolumeMax(name_, vol)
    end

    SendNUIMessage({
        status = "max_volume",
        volume = vol,
        name = name_,
    })
    soundInfo[name_].volume = vol
end

function setTimeStamp(name_, timestamp)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:setTimeStamp(name_, timestamp)
    end

    getInfo(name_).timeStamp = timestamp
    SendNUIMessage({
        name = name_,
        status = "timestamp",
        timestamp = timestamp,
    })
end

function destroyOnFinish(id, bool)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:destroyOnFinish(id, bool)
    end

    soundInfo[id].destroyOnFinish = bool
end

function setSoundLoop(name, value)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:setSoundLoop(name, value)
    end

    SendNUIMessage({
        status = "loop",
        name = name,
        loop = value,
    })
    soundInfo[name].loop = value
end

function repeatSound(name)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:repeatSound(name)
    end

    if soundExists(name) then
        SendNUIMessage({
            status = "repeat",
            name = name,
        })
    end
end

function setSoundDynamic(name, bool)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:setSoundDynamic(name, bool)
    end

    if soundExists(name) then
        soundInfo[name].isDynamic = bool
        SendNUIMessage({
            status = "changedynamic",
            name = name,
            bool = bool,
        })
    end
end

function setSoundURL(name, url)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:setSoundURL(name, url)
    end

    if soundExists(name) then
        soundInfo[name].url = url
        SendNUIMessage({
            status = "changeurl",
            name = name,
            url = url,
        })
    end
end