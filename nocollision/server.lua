RegisterNetEvent("baseevents:enteredVehicle")
AddEventHandler("baseevents:enteredVehicle", function(currentVehicle)

    local src = source
    veh = currentVehicle
    TriggerClientEvent("turnOnCollision", source)

end)

RegisterNetEvent("baseevents:leftVehicle")
AddEventHandler("baseevents:leftVehicle", function(currentVehicle)

    local src = source
    veh = currentVehicle
    TriggerClientEvent("turnOffCollision", source)

end)