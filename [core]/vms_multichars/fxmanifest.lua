fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'vames™️#1400'
description 'vms_multichars'
version '1.1.7'

shared_scripts {
    '@es_extended/imports.lua', 
    'config/config.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua', 
    'config/config_server.lua',
    'config/config_commands.lua',
    'html/scripts.js',
    'server/*.lua',
}

client_scripts {
    'config/config_client.lua',
    'client/*.lua',
}

ui_page {'html/ui.html'}

files {
    'html/ui.html', 
    'html/css/main.css', 
    'html/app.js', 
	'config/translation.js'
}

escrow_ignore {
    'config/*.lua',
    'server/*.lua',
    'client/*.lua',
}
dependency '/assetpacks'