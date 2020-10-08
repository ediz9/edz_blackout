--[[
███████╗ ██████╗  ██╗ ███████╗ ██╗ ██╗  ██╗██████╗ ██████╗ ███████╗
██╔════╝ ██╔══██╗ ██║ ╚══███╔╝████████╗███║╚════██╗╚════██╗╚════██║
█████╗   ██║  ██║ ██║   ███╔╝ ╚██╔═██╔╝╚██║ █████╔╝ █████╔╝    ██╔╝
██╔══╝   ██║  ██║ ██║  ███╔╝  ████████╗ ██║ ╚═══██╗ ╚═══██╗   ██╔╝ 
███████╗ ██████╔╝ ██║ ███████╗╚██╔═██╔╝ ██║██████╔╝██████╔╝   ██║  
╚══════╝ ╚═════╝  ╚═╝ ╚══════╝ ╚═╝ ╚═╝  ╚═╝╚═════╝ ╚═════╝    ╚═╝                                                                                      
--]]
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('alienware', function(source)
	local _source = source
  TriggerClientEvent("edz-blackout:baslat", _source)
end)

RegisterServerEvent('edz-blackout:check')
AddEventHandler('edz-blackout:check', function(status)
  local xPlayers = ESX.GetPlayers()

  for i = 1, #xPlayers, 1 do
      TriggerClientEvent("edz-blackout:status", xPlayers[i], status)
  end
end)