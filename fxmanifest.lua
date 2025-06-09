fx_version 'cerulean'
game 'gta5'

author 'DarryDerr'
description 'Simple Slaughter Job for QBCore'
version "1.5"

shared_scripts {
  'config.lua',
}

client_scripts {
  'client/framework_cl.lua',
  'client/chicken_c.lua',
}

server_scripts {
  'server/framework_sv.lua',
  'server/chicken_s.lua',
  'server/versioncheck.lua',
}