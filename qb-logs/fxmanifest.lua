fx_version 'cerulean'
game 'gta5'

description 'qb-synce'
version '1.0.0'


shared_scripts {
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    '@ox_lib/init.lua',
    'config.lua',
}

client_scripts {
	'client/main.lua',
}

server_scripts {
	'server/main.lua',
}

lua54 'yes'server_scripts { '@mysql-async/lib/MySQL.lua' }