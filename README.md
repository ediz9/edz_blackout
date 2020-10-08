# edz_blackout
blackout script for fivem

requires: esx , mythic_progbar & notify and vSync

add vSync/vs_server.lua:

RegisterServerEvent('vSync:elektrik')
AddEventHandler('vSync:elektrik', function()
    blackout = not blackout
    TriggerEvent('vSync:requestSync')
end)

