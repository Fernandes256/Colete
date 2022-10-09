--------------------- ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('bulletproof', function (source)  --- Item que vao usar

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('bulletproof', 1) --- Item que vao usar

    TriggerClientEvent('cosasvariadas:bulletproof', source) --- Item que vao usar

end)
