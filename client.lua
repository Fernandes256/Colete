RegisterNetEvent('cosasvariadas:bulletproof')  --- Item que vao usar
AddEventHandler('cosasvariadas:bulletproof', function()  --- Item que vao usar
	
	if coletecooldown == false then
		coletecooldown = true
		
		exports['progressBars']:startUI(6000, 'EQUIPANDO O COLETE')
		local playerPed = PlayerPedId()
		
		RequestAnimDict('clothingtie')	
		while not HasAnimDictLoaded('clothingtie') do
			Citizen.Wait(10)
		end
		TaskPlayAnim(playerPed, 'clothingtie', "try_tie_neutral_c", 8.0, 1.0, 6000, 48, 8, 0, 0, 0 )	
		local cc_ativo = true
		
		Citizen.CreateThread(function()
			while cc_ativo do
				Citizen.Wait(5)
				SetPedMoveRateOverride(PlayerPedId(), 0.8)
			end	
		end)
	
		Citizen.Wait(6000)
		cc_ativo = false
		SetPedArmour(playerPed, 45)
		Citizen.Wait(20 * 1000)
		coletecooldown = false
	else
		ESX.ShowNotification('~r~Só podes equipar um colete a cada 20 segundos')
	end

end)