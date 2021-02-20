--
--______     _ _                        _  ______ _ _ 
--|  _  \   | | |                      | | | ___ (_) |
--| | | |___| | | ___    __ _ _ __   __| | | |_/ /_| |
--| | | / _ \ | |/ _ \  / _` | '_ \ / _` | |  __/| | |
--| |/ /  __/ | |  __/ | (_| | | | | (_| | | |   | | |
--|___/ \___|_|_|\___|  \__,_|_| |_|\__,_| \_|   |_|_|
--       

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPclient = Tunnel.getInterface("vRP", "dp_customize") 
vRP = Proxy.getInterface("vRP")

RegisterServerEvent('dp_customize:group')
AddEventHandler('dp_customize:group', function()
    local source = source
    local user_id = vRP.getUserId({source})
    if vRP.hasPermission({user_id,Config.Permission}) then
        TriggerClientEvent('dp_customize:menuopen', source)
    end
end)


