--[[
    pedFrequency and trafficFrequency can varry between 0.0 - 1.0
    1.0 is the Max
    0.0 = no traffic and no peds
    You can change them individually if you like incase you want to have only one of them enabled or disabled
 ]]
local config = {
    pedFrequency = 0.0,
    trafficFrequency = 0.0
    -- Has to be float value
    -- If you don't know what a float value is, it means that it has to be a decimal format.
    -- So 1.0 works but 1 does not!
}

--[[ No more touching code after this line unless you know what you are doing ]]

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) -- Prevent Crash

        --[[ Ped Density ]]
        SetPedDensityMultiplierThisFrame(config.pedFrequency)
        SetScenarioPedDensityMultiplierThisFrame(config.pedFrequency, config.pedFrequency)

        --[[ Traffic Density Vehicles ]]
        SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrequency)
        SetParkedVehicleDensityMultiplierThisFrame(config.trafficFrequency)
        SetVehicleDensityMultiplierThisFrame(config.trafficFrequency)
    end
end)