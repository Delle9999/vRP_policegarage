--
--______     _ _                        _  ______ _ _ 
--|  _  \   | | |                      | | | ___ (_) |
--| | | |___| | | ___    __ _ _ __   __| | | |_/ /_| |
--| | | / _ \ | |/ _ \  / _` | '_ \ / _` | |  __/| | |
--| |/ /  __/ | |  __/ | (_| | | | | (_| | | |   | | |
--|___/ \___|_|_|\___|  \__,_|_| |_|\__,_| \_|   |_|_|
--       

local delay = 200
local spawncar = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(delay)
        if spawncar == false then
            for k,v in pairs(Config.Coords) do
                while GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.x, v.y, v.z, true) <= 2 do
                    delay = 1
                    Citizen.Wait(delay)
                    DrawMarker(36, v.x, v.y, v.z, 0,0,0,0,0,0,1.0001,1.0001,1.0001, 55, 134, 203, 180,0,0,0,10)
                    DrawText3Ds(v.x, v.y, v.z, "Tryk [~b~E~w~] for at åbne politigarage")
                    if IsControlJustReleased(0, 38) then 
                        TriggerServerEvent("dp_customize:group")
                    end
                end
            end
            delay = 200
        end
    end
end)

RegisterNetEvent("dp_customize:menuopen")
AddEventHandler("dp_customize:menuopen", function()
    SetNuiFocus(true, true)
    Citizen.Wait(100)
    SendNUIMessage({status = true,})
end)

RegisterNUICallback("farve1", function (data, callback)
    spawncar = true
    local vehiclehash = GetHashKey(Config.Choice1Car)
    RequestModel(vehiclehash)
    while not HasModelLoaded(vehiclehash) do
        RequestModel(vehiclehash)
        Citizen.Wait(1)
    end
    exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Klargøre " ..Config.Choice1Car, useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 15.0, 0)
    Citizen.Wait(5000)
    local spawned_car = CreateVehicle(vehiclehash,Config.SpawnpointCar1.x, Config.SpawnpointCar1.y, Config.SpawnpointCar1.z, true, false)
    SetEntityAsMissionEntity(spawned_car, true, true)
    exports['mythic_notify']:SendAlert('inform', 'Du har nu klargjort en ' ..Config.Choice1Car)
    spawncar = false
end)

RegisterNUICallback("farve2", function (data, callback)
    spawncar = true
    local vehiclehash = GetHashKey(Config.Choice2Car)
    RequestModel(vehiclehash)
    while not HasModelLoaded(vehiclehash) do
        RequestModel(vehiclehash)
        Citizen.Wait(1)
    end
    exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Klargøre " ..Config.Choice2Car, useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 15.0, 0)
    Citizen.Wait(5000)
	local spawned_car = CreateVehicle(vehiclehash,Config.SpawnpointCar2.x, Config.SpawnpointCar2.y, Config.SpawnpointCar2.z,true,false)
    SetEntityAsMissionEntity(spawned_car, true, true)
    exports['mythic_notify']:SendAlert('inform', 'Du har nu klargjort en ' ..Config.Choice2Car)
    spawncar = false
end)

RegisterNUICallback("farve3", function (data, callback)
    spawncar = true
    local vehiclehash = GetHashKey(Config.Choice3Car)
    RequestModel(vehiclehash)
    while not HasModelLoaded(vehiclehash) do
        RequestModel(vehiclehash)
        Citizen.Wait(1)
    end
    print("LOL")
    exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Klargøre " ..Config.Choice3Car, useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 15.0, 0)
    Citizen.Wait(5000)
	local spawned_car = CreateVehicle(vehiclehash,Config.SpawnpointCar3.x, Config.SpawnpointCar3.y, Config.SpawnpointCar3.z,true,false)
    SetEntityAsMissionEntity(spawned_car, true, true)
    exports['mythic_notify']:SendAlert('inform', 'Du har nu klargjort en ' ..Config.Choice3Car)
    spawncar = false
end)

RegisterNUICallback("farve4", function (data, callback)
    spawncar = true
    local vehiclehash = GetHashKey(Config.Choice4Car)
    RequestModel(vehiclehash)
    while not HasModelLoaded(vehiclehash) do
        RequestModel(vehiclehash)
        Citizen.Wait(1)
    end
    exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Klargøre " ..Config.Choice4Car, useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
    Citizen.Wait(5000)
	local spawned_car = CreateVehicle(vehiclehash,Config.SpawnpointCar4.x, Config.SpawnpointCar4.y, Config.SpawnpointCar4.z,true,false)
    SetEntityAsMissionEntity(spawned_car, true, true)
    exports['mythic_notify']:SendAlert('inform', 'Du har nu klargjort en ' ..Config.Choice4Car)
    spawncar = false
end)

RegisterNUICallback("farve5", function (data, callback)
    spawncar = true
    local vehiclehash = GetHashKey(Config.Choice5Car)
    RequestModel(vehiclehash)
    while not HasModelLoaded(vehiclehash) do
        RequestModel(vehiclehash)
        Citizen.Wait(1)
    end
    exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Klargøre " ..Config.Choice5Car, useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 15.0, 0)
    Citizen.Wait(5000)
	local spawned_car = CreateVehicle(vehiclehash,Config.SpawnpointCar5.x, Config.SpawnpointCar5.y, Config.SpawnpointCar5.z,true,false)
    SetEntityAsMissionEntity(spawned_car, true, true)
    exports['mythic_notify']:SendAlert('inform', 'Du har nu klargjort en ' ..Config.Choice5Car)
    spawncar = false
end)

RegisterNUICallback("farve6", function (data, callback)
    spawncar = true
    local vehiclehash = GetHashKey(Config.Choice6Car)
    RequestModel(vehiclehash)
    while not HasModelLoaded(vehiclehash) do
        RequestModel(vehiclehash)
        Citizen.Wait(1)
    end
    exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Klargøre " ..Config.Choice6Car, useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 15.0, 0)
    Citizen.Wait(5000)
	local spawned_car = CreateVehicle(vehiclehash,Config.SpawnpointCar6.x, Config.SpawnpointCar6.y, Config.SpawnpointCar6.z,true,false)
    SetEntityAsMissionEntity(spawned_car, true, true)
    exports['mythic_notify']:SendAlert('inform', 'Du har nu klargjort en ' ..Config.Choice6Car)
    spawncar = false
end)

RegisterNUICallback("farve7", function (data, callback)
    spawncar = true
    local vehiclehash = GetHashKey(Config.Choice7Car)
    RequestModel(vehiclehash)
    while not HasModelLoaded(vehiclehash) do
        RequestModel(vehiclehash)
        Citizen.Wait(1)
    end
    exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Klargøre " ..Config.Choice7Car, useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 15.0, 0)
    Citizen.Wait(5000)
	local spawned_car = CreateVehicle(vehiclehash,Config.SpawnpointCar7.x, Config.SpawnpointCar7.y, Config.SpawnpointCar7.z,true,false)
    SetEntityAsMissionEntity(spawned_car, true, true)
    exports['mythic_notify']:SendAlert('inform', 'Du har nu klargjort en ' ..Config.Choice7Car)
    spawncar = false
end)

RegisterNUICallback("farve8", function (data, callback)
    spawncar = true
    local vehiclehash = GetHashKey(Config.Choice8Car)
    RequestModel(vehiclehash)
    while not HasModelLoaded(vehiclehash) do
        RequestModel(vehiclehash)
        Citizen.Wait(1)
    end
    exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Klargøre " ..Config.Choice8Car, useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 15.0, 0)
    Citizen.Wait(5000)
	local spawned_car = CreateVehicle(vehiclehash,Config.SpawnpointCar8.x, Config.SpawnpointCar8.y, Config.SpawnpointCar8.z,true,false)
    SetEntityAsMissionEntity(spawned_car, true, true)
    exports['mythic_notify']:SendAlert('inform', 'Du har nu klargjort en ' ..Config.Choice8Car)
    spawncar = false
end)

RegisterNUICallback("farve9", function (data, callback)
    spawncar = true
    local vehiclehash = GetHashKey(Config.Choice9Car)
    RequestModel(vehiclehash)
    while not HasModelLoaded(vehiclehash) do
        RequestModel(vehiclehash)
        Citizen.Wait(1)
    end
    exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Klargøre " ..Config.Choice9Car, useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 15.0, 0)
    Citizen.Wait(5000)
	local spawned_car = CreateVehicle(vehiclehash,Config.SpawnpointCar9.x, Config.SpawnpointCar9.y, Config.SpawnpointCar9.z,true,false)
    SetEntityAsMissionEntity(spawned_car, true, true)
    exports['mythic_notify']:SendAlert('inform', 'Du har nu klargjort en ' ..Config.Choice9Car)
    spawncar = false
end)    

RegisterNUICallback("farve10", function (data, callback)
    spawncar = true
    local vehiclehash = GetHashKey(Config.Choice10Car)
    RequestModel(vehiclehash)
    while not HasModelLoaded(vehiclehash) do
        RequestModel(vehiclehash)
        Citizen.Wait(1)
    end
    exports['mythic_progbar']:Progress({name = "firstaid_action", duration = 5000, label = "Klargøre " ..Config.Choice10Car, useWhileDead = false, canCancel = true, controlDisables = {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}})
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 15.0, 0)
    Citizen.Wait(5000)
	local spawned_car = CreateVehicle(vehiclehash,Config.SpawnpointCar10.x, Config.SpawnpointCar10.y, Config.SpawnpointCar10.z,true,false)
    SetEntityAsMissionEntity(spawned_car, true, true)
    exports['mythic_notify']:SendAlert('inform', 'Du har nu klargjort en ' ..Config.Choice10Car)
    spawncar = false
end)  

RegisterNUICallback("Luk", function (data, callback)
    SetNuiFocus(false, false)
end)

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 80)
end

AddEventHandler("onResourceStop",function(a)if a==GetCurrentResourceName()then SetNuiFocus(false,false) end end)
                
                                                    
