-- created by RexshackGaming : Discord : https://discord.gg/8gNCwDpQPb
-- youtube channel : https://www.youtube.com/channel/UCikEgGfXO-HCPxV5rYHEVbA

fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

server_scripts {
	'config.lua',
	'server/server.lua'
}

client_scripts {
	'config.lua',
	'client/client.lua',
	'client/blips.lua'
}

dependency 'redem_roleplay'
dependency 'redemrp_notification'