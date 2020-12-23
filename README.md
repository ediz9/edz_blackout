# edz_blackout
blackout script for fivem
showcase: https://streamable.com/o1a4y3
requires: esx , mythic_progbar & notify and vSync

add item for your database: alienware<br>
add vSync/vs_server.lua:

RegisterServerEvent('vSync:elektrik')<br>
AddEventHandler('vSync:elektrik', function()<br>
    blackout = not blackout<br>
    TriggerEvent('vSync:requestSync')<br>
end)

