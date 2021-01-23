local starter = false
local veh

RegisterNetEvent("turnOnCollision")
AddEventHandler("turnOnCollision", function(currentVehicle)

    veh = currentVehicle
    starter = true
    toggleCollision(true, veh)

end)

RegisterNetEvent("turnOffCollision")
AddEventHandler("turnOffCollision", function(currentVehicle)

    veh = currentVehicle
    starter = false
    toggleCollision(false, veh)

end)

function toggleCollision(starter, veh)
    Citizen.CreateThread(function()
        while starter do
            Citizen.Wait(0)
            local veh = GetVehiclePedIsIn(PlayerPedId())
            local vehList = GetGamePool('CVehicle')
    
            for k,v in pairs(vehList) do
                local distance = GetDistanceBetweenCoords(GetEntityCoords(veh), GetEntityCoords(v), false) 
                if distance < 10 and veh ~= v then
                    SetEntityNoCollisionEntity(v, veh, true)
                end
            end
        end
    end)
end
