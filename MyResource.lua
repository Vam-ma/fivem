
function text(content, x, y, r, g, b)
    SetTextFont(7);
    SetTextProportional(0)
    SetTextScale(0.7f, 0.7f);
    SetTextColour(r, g, b, 255);
    SetTextEntry("STRING");
    SetTextDropshadow(0, 0, 0, 0, 255);
    SetTextDropShadow();
    SetTextOutline();
    AddTextComponentString(content);
    DrawText(x, y);
end

Citizen.CreateThread(function()

    while true do
        Citizen.Wait(2)
        local player = GetPlayerPed(-1)
        if (IsPedInAnyVehicle(player,false)) then
            local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1),false)
            local speed = GetEntitySpeed(vehicle)
            local position = {x=0.9,y=0.95}
            local color = {r=200,g=200,b=200}
            text(math.floor(speed) + "KM/H",position.x,position.y,color.r,color.g,color.b)
        end
    end)