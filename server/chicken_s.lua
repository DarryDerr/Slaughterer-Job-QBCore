local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('ult:server:putchicken')
AddEventHandler('ult:server:putchicken', function()
	local _source = source
	local Player = QBCore.Functions.GetPlayer(_source)
	local amountGetIt = math.random(2, 5)

	Player.Functions.AddItem('alivechicken', amountGetIt)
	TriggerClientEvent('inventory:client:ItemBox', _source, QBCore.Shared.Items["alivechicken"], 'add', amountGetIt)
end)

RegisterNetEvent('ult:server:canProcessChicken', function(type)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if type == "portion" then
        local itemChckn = Player.Functions.GetItemByName('alivechicken')
        if itemChckn and itemChckn.amount > 0 then
            TriggerClientEvent('ult:client:checkKnifeAndProcess', src, "portion")
        else
            TriggerClientEvent(NotifyTrigger, src, "You don't have Alive Chickens!", "error")
        end

    elseif type == "pack" then
        local itemSlghtr = Player.Functions.GetItemByName('slaughteredchicken')
        if itemSlghtr and itemSlghtr.amount > 0 then
            TriggerClientEvent('ult:client:beginChickenProcess', src, "pack")
        else
            TriggerClientEvent(NotifyTrigger, src, "You don't have Slaughtered Chickens!", "error")
        end
    end
end)

RegisterNetEvent('ult:server:giveChickenResult', function(type)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if type == "portion" then
        Player.Functions.RemoveItem('alivechicken', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["alivechicken"], 'remove')

        SetTimeout(1000, function()
            Player.Functions.AddItem('slaughteredchicken', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["slaughteredchicken"], 'add')
        end)

    elseif type == "pack" then
        Player.Functions.RemoveItem('slaughteredchicken', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["slaughteredchicken"], 'remove')

        SetTimeout(1000, function()
            Player.Functions.AddItem('packagedchicken', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["packagedchicken"], 'add')
        end)
    end
end)