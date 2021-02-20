--
--______     _ _                        _  ______ _ _ 
--|  _  \   | | |                      | | | ___ (_) |
--| | | |___| | | ___    __ _ _ __   __| | | |_/ /_| |
--| | | / _ \ | |/ _ \  / _` | '_ \ / _` | |  __/| | |
--| |/ /  __/ | |  __/ | (_| | | | | (_| | | |   | | |
--|___/ \___|_|_|\___|  \__,_|_| |_|\__,_| \_|   |_|_|
--    

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

server_script {
	'@vrp/lib/utils.lua',
	'lib/Proxy.lua',
    'server.lua',
    'config.lua'
}

client_script {
	'lib/Tunnel.lua',
	'lib/Proxy.lua',
    'client.lua',
    'config.lua'
}

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/script.js',
    'ui/css/style.css',
}