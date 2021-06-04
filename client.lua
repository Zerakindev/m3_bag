ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local canta = nil

Citizen.CreateThread(function()
	while true do
	  Citizen.Wait(1000)
	  TriggerEvent('skinchanger:getSkin', function(skin)
		canta = skin['bags_1']
	  end)
	  Citizen.Wait(1000)
	end
end)

RegisterNetEvent('zero:bag')
AddEventHandler('zero:bag', function()
    TriggerEvent('skinchanger:change', "bags_1", 45)
    TriggerEvent('skinchanger:change', "bags_2", 0)
    TriggerEvent('skinchanger:getSkin', function(skin)
    TriggerServerEvent('esx_skin:save', skin)
 end)
end)
RegisterNetEvent('zero:bagcikart')
AddEventHandler('zero:bagcikart', function()
    TriggerEvent('skinchanger:change', "bags_1", 0)
    TriggerEvent('skinchanger:change', "bags_2", 0)
    TriggerEvent('skinchanger:getSkin', function(skin)
    TriggerServerEvent('esx_skin:save', skin)
 end)
end)
RegisterNetEvent("zero:canta:cantakullan")
AddEventHandler("zero:canta:cantakullan", function()
  TriggerServerEvent("InteractSound_SV:PlayOnSource", "stashopen", 0.5)
  TriggerEvent("mythic_progbar:client:progress", {
    name = "bankas2",
    duration = 1400,
    label = "Çantanı Açıyorsun",
    useWhileDead = false,
    canCancel = false,
    controlDisables = {
      disableMovement = true,
      disableCarMovement = true,
      disableMouse = false,
      disableCombat = true,
    },
    animation = {
      animDict = "anim@heists@ornate_bank@grab_cash",
      anim = "intro",
    },
  }, function(status)
    if not status then
      ClearPedTasks(PlayerPedId())
    end
  end)
  if true then
    if canta == 40 or canta == 41 or canta == 44 or canta == 45 then
	Citizen.Wait(1400)
	      TriggerEvent('m3:inventoryhud:client:openStash', 'Oyuncu Çantası', 'all')
		  ClearPedTasks(PlayerPedId())

        end
    end
end)
