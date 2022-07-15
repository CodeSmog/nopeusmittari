function DrawTextOnScreen(text)
    SetTextProportional(0)
    SetTextFont(1)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(0.85, 0.85)
end

Citizen.CreateThread(function()
    while true do
        local Speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false)) * 3.6

         if IsPedInAnyVehicle(GetPlayerPed(-1)) ~= 0 then
            DrawTextOnScreen(tostring(math.floor(Speed + 0.5)) .. " KM/H")
         end
         Citizen.Wait(0)
    end
end)
