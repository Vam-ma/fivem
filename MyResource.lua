local lastHealt
local effectBaseTime = 1000
local damageMulti

function text(content, position, color)
    SetTextFont(7);
    SetTextScale(0.7f, 0.7f);
    SetTextColour(color[0], color[1], color[2], 255);
    SetTextEntry("STRING");
    SetTextDropshadow(0, 0, 0, 0, 255);
    SetTextDropShadow();
    SetTextOutline();
    AddTextComponentString(content);
    DrawText(position.X, position.Y);
end

CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        if player.IsPedInVehicle then
            local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1),false)
            local speed = GetEntitySpeed(vehicle)
            local position = (0.9,0.95)
            local color = (200,200,200)
            text(math.floor(speed) + "KM/H",position,color)
        end
    end)