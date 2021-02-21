data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

---------------- gold nugget panning result
RegisterServerEvent("scrp_goldprospecting:prospect_result")
AddEventHandler("scrp_goldprospecting:prospect_result", function()
    TriggerEvent('redemrp:getPlayerFromId', source, function(user)
            
	local _randomGold = math.random(1,100)
	
-- low yeld : 50/50 change of a nugget
	if _randomGold >= 1 and _randomGold <= 49 then
	local _subRan = math.random(1,2)
		if _subRan == 1 then
			gold = 1
		else
			gold = 0
		end
	
-- medium yeld : 1 in 3 change of 2 nuggets
	elseif _randomGold >= 50 and _randomGold <= 74 then
	local _subRan = math.random(1,3)
		if _subRan == 1 then
			gold = 2
		else
			gold = 0
		end
				
-- high yeld 1 in 5 chance of 3 nuggets
	elseif _randomGold >= 57 and _randomGold <= 100 then
	local _subRan = math.random(1,5)
		if _subRan == 1 then
			gold = 3
		else
			gold = 0
		end
				
		end	
			
    end)
	
    TriggerClientEvent("scrp_goldprospecting:give_reward",source, gold)

end)

---------------- reward : add gold nugget to inventory
RegisterServerEvent('scrp_goldprospecting:reward')
AddEventHandler('scrp_goldprospecting:reward', function(amount)
    local _source = source
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
        local ItemData = data.getItem(_source, 'golden_nugget')
		print(ItemData.ItemAmount)
		ItemData.AddItem(amount)
    end)
end)

---------------- check gold nuggets for smelting
RegisterServerEvent('scrp_goldprospecting:check_nuggets')
AddEventHandler("scrp_goldprospecting:check_nuggets", function()
    local _source = source
	TriggerEvent("redemrp:getPlayerFromId", _source, function(user)
		local ItemData = data.getItem(_source, 'golden_nugget')
			print(ItemData.ItemAmount)
			total_nuggets = (ItemData.ItemAmount)
            if total_nuggets >= 25 then
			ItemData.RemoveItem(25)
			local goldbars = data.getItem(_source, 'goldbar')
			print(goldbars.ItemAmount)
			goldbars.AddItem(1)
			TriggerEvent('scrp_goldprospecting:give_gold')	
			TriggerClientEvent('scrp_goldprospecting:finished_smelt', _source)
            else 
            TriggerClientEvent('scrp_goldprospecting:nil_gold', _source)
		end
	end)
end)

---------------- sell gold bars
RegisterServerEvent('scrp_goldprospecting:sell_goldbars')
AddEventHandler("scrp_goldprospecting:sell_goldbars", function()
    local _source = source
	TriggerEvent("redemrp:getPlayerFromId", _source, function(user)
		local ItemData = data.getItem(_source, 'goldbar')
		print(ItemData.ItemAmount)
		local total_goldbars = (ItemData.ItemAmount)
		if total_goldbars >= 1 then
			local gold_value = (total_goldbars * 400)
			local totalxp = (total_goldbars * 50)
			user.addMoney(gold_value)
			user.addXP(totalxp)
            ItemData.RemoveItem(total_goldbars)
			TriggerClientEvent('scrp_goldprospecting:sold_goldbar', _source, total_goldbars, gold_value)
            else 
				TriggerClientEvent('scrp_goldprospecting:nil_goldbar', _source)
			end
	end)
end)

---------------- register gold nuggets to be used
RegisterServerEvent("RegisterUsableItem:golden_nugget")
AddEventHandler("RegisterUsableItem:golden_nugget", function(source)
	local ItemData = data.getItem(source, 'golden_nugget')
	ItemData.RemoveItem(1)
end)

---------------- register nuggets to be used
RegisterServerEvent("RegisterUsableItem:goldbar")
AddEventHandler("RegisterUsableItem:goldbar", function(source)
	local ItemData = data.getItem(source, 'goldbar')
	ItemData.RemoveItem(1)
end)