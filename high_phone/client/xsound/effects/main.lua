function fadeIn(name, time, volume_)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:fadeIn(name, time, volume_)
    end

    if soundExists(name) then
        volumeType(name, 0)

        local addVolume = (volume_ / time) * 100
        local called = 0
        local volume = volume_

        while true do
            volume = volume - addVolume
            if volume < 0 then volume = 0 end
            if volume == 0 then break end
            called = called + 1
        end

        volume = getVolume(name)
        while true do
            Wait(time / called)
            volume = volume + addVolume
            if volume > volume_ then
                volume = volume_
                volumeType(name, volume)
                break
            end
            volumeType(name, volume)
        end
    end
end

function fadeOut(name, time)
    if(Config.UseExternalxSound) then
        return exports[Config.xSoundName]:fadeOut(name, time)
    end

    if soundExists(name) then
        local volume = getVolume(name)

        local addVolume = (volume / time) * 100
        local called = 0

        while true do
            volume = volume - addVolume
            if volume < 0 then volume = 0 end
            if volume == 0 then break end
            called = called + 1
        end

        volume = getVolume(name)
        while true do
            Wait(time / called)
            volume = volume - addVolume
            if volume < 0 then
                volume = 0
                volumeType(name, volume)
                break
            end
            volumeType(name, volume)
        end
    end
end

function volumeType(name, volume)
    if isDynamic(name) then
        setVolumeMax(name,volume)
        setVolume(name,volume)
    else
        setVolume(name,volume)
    end
end