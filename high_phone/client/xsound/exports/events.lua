function onPlayStart(name, delegate)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:onPlayStart(name, delegate)
    end

    globalOptionsCache[name].onPlayStart = delegate
end

function onPlayEnd(name, delegate)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:onPlayEnd(name, delegate)
    end

    globalOptionsCache[name].onPlayEnd = delegate
end

function onLoading(name, delegate)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:onLoading(name, delegate)
    end

    globalOptionsCache[name].onLoading = delegate
end

function onPlayPause(name, delegate)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:onPlayPause(name, delegate)
    end

    globalOptionsCache[name].onPlayPause = delegate
end

function onPlayResume(name, delegate)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:onPlayResume(name, delegate)
    end

    globalOptionsCache[name].onPlayResume = delegate
end