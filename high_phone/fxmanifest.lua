fx_version 'adamant'
game 'gta5'

author 'highrider#2873'
description 'High-Phone'
version '1.6.25'
lua54 'yes'

ui_page 'html/index.html'

shared_scripts {
    'config.lua',
    --'sh_config.lua', -- IF YOU RUN QBCORE REMOVE THIS LINE & FOLLOW STEP BELOW
    'sh_config_QB.lua', -- REMOVE THE -- IN FRONT OF 'sh_config_QB.lua' THIS IF YOU RUN QBCORE
    'utils/shared.lua'
}

client_scripts {
    'locales/*.lua',
    'client/*.lua',
    -- https://github.com/Xogy/xsound
    'client/xsound/*.lua',
    'client/xsound/**/*.lua'
}

server_scripts {
    --'@mysql-async/lib/MySQL.lua', -- IF YOU RUN OXMYSQL REMOVE THIS LINE & FOLLOW STEP BELOW
    '@oxmysql/lib/MySQL.lua', -- REMOVE THE -- IN FRONT OF '@oxmysql/lib/MySQL.lua' THIS IF YOU RUN OXMYSQL
    'sv_config.lua',
    'utils/server.lua',
    'locales/*.lua',
    'server/*.lua'
}

files {
    'html/*.*',
    'html/css/*.css',
    'html/js/*.js',
    'html/js/locales/*.js',
    'html/js/modules/*.js',
    'html/js/modules/**/*.js',
    'html/js/modules/**/**/*.js',
    'html/js/modules/**/**/**/*.js',
    'html/js/xsound/*.js',
    'html/fonts/*.ttf',
    'html/fonts/*.otf',
    'html/media/*.*',
    'html/media/**/*.*'
}

escrow_ignore {
    'config.lua',
    'sv_config.lua',
    'sh_config.lua',
    'sh_config_QB.lua',
    'locales/*.lua',
    -- https://github.com/Xogy/xsound
    'client/xsound/*.lua',
    'client/xsound/**/*.lua'
}
dependency '/assetpacks'