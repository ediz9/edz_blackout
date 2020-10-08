# edz_blackout
blackout script for fivem

requires: esx , mythic_progbar & notify and vSync

add item for your databse: alienware
add vSync/vs_server.lua:

RegisterServerEvent('vSync:elektrik')<br>
AddEventHandler('vSync:elektrik', function()<br>
    blackout = not blackout<br>
    TriggerEvent('vSync:requestSync')<br>
end)

