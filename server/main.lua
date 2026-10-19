-- Server-side script for the sleep emote resource

local QBCore = exports['qb-core']:GetCoreObject()

-- Event to start the sleep emote
RegisterNetEvent('sleep:server:startSleepEmote')
AddEventHandler('sleep:server:startSleepEmote', function()
    local src = source
    TriggerClientEvent('sleep:client:startSleepEmote', src)
end)

-- Event to stop the sleep emote
RegisterNetEvent('sleep:server:stopSleepEmote')
AddEventHandler('sleep:server:stopSleepEmote', function()
    local src = source
    TriggerClientEvent('sleep:client:stopSleepEmote', src)
end)