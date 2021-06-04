ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand('cantakullan', function(source)
    local player = ESX.GetPlayerFromId(source)    
	TriggerClientEvent("zero:bag", source)	
	
end)
RegisterCommand('cantacıkart', function(source)
    local player = ESX.GetPlayerFromId(source)    
    TriggerClientEvent("zero:bagcikart", source)
	
end)

RegisterCommand('cantaac', function(source)
    local player = ESX.GetPlayerFromId(source)    
    TriggerClientEvent("zero:canta:cantakullan", source)
	
end)
