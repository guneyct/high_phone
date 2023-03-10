## guneyct edited high_phone

* https://discord.gg/guneyct

## PHONE COLUMN FIX
- Be sure to run all SQL files in the folder.
- Check your qb-core/server/players.lua for this code. If you can't find it then you need to add it after line 86.
```lua
PlayerData.charinfo.phone = PlayerData.charinfo.phone or QBCore.Functions.CreatePhoneNumber()
```

## DEPENDENCIES

* [qb-core](https://github.com/qbcore-framework/qb-core)
* [qb-crypto](https://github.com/qbcore-framework/qb-crypto)

## Preview

[Video](https://www.youtube.com/watch?v=pj2W6tHzzMU)

## IMPORTANT

- Don't forget to run the sql files!
- I don't provide any support for this phone!
