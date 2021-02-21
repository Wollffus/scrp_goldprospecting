-- created by RexshackGaming : Discord : https://discord.gg/8gNCwDpQPb
-- youtube channel : https://www.youtube.com/channel/UCikEgGfXO-HCPxV5rYHEVbA

start_smelting = {}
start_selling = {}
start_prospect = {}
local smelting = false
local selling = false
local prospect = false
local result = 0

data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

---------------- start animation and sound functions
function playAnim(dict,name)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(0)
    end
    TaskPlayAnim(PlayerPedId(), dict, name, 8.0, -8.0, 7500, 0, 0, true, 0, false, 0, false)  
end

function play_sound_frontend(audioName, audioRef,b1,p2,b3,p4)
    PlaySound(audioName, audioRef, true,0,true,0)
end

function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str)
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
	SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
	Citizen.InvokeNative(0xADA9255D, 1);
    DisplayText(str, x, y)
end

---------------- gold panning 1 location
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords, -470.84, 1013.52, 87.88, true)
			if prospect == false then
				if betweencoords < 2.0 then
					DrawTxt(Config.gold1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, 0xC7B5340A) then
					TriggerEvent('scrp_goldprospecting:start_panning')
				end
			end
		end
	end
end)

---------------- gold panning 2 location
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords, -1638.22, -1081.3, 66.1, true)
			if prospect == false then
				if betweencoords < 1.0 then
					DrawTxt(Config.gold1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, 0xC7B5340A) then
					TriggerEvent('scrp_goldprospecting:start_panning')
				end
			end
		end
	end
end)

---------------- gold panning 3 location
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords, -2573.9, 923.53, 165.98, true)
			if prospect == false then
				if betweencoords < 1.0 then
					DrawTxt(Config.gold1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, 0xC7B5340A) then
					TriggerEvent('scrp_goldprospecting:start_panning')
				end
			end
		end
	end
end)

---------------- gold panning 4 location
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords, -1623.29, -2832.33, -11.9, true)
			if prospect == false then
				if betweencoords < 1.0 then
					DrawTxt(Config.gold1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, 0xC7B5340A) then
					TriggerEvent('scrp_goldprospecting:start_panning')
				end
			end
		end
	end
end)

---------------- start panning for gold
RegisterNetEvent('scrp_goldprospecting:start_panning')
AddEventHandler('scrp_goldprospecting:start_panning', function()	
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
		if prospect == false then
			
			TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), -1, true, false, false, false)
			prospect = true
			TriggerEvent("redemrp_notification:start", "panning for gold!", 18, "success")
			Citizen.Wait(30000)
			ClearPedTasksImmediately(PlayerPedId())
			ClearPedSecondaryTask(PlayerPedId())
			TriggerServerEvent('scrp_goldprospecting:prospect_result')

		end
end)

---------------- gold mine 1 location
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords, 2723.8, 1391.34, 68.77, true)
			if prospect == false then
				if betweencoords < 1.0 then
					DrawTxt(Config.mine1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, 0xC7B5340A) then
					TriggerEvent('scrp_goldprospecting:start_mining')
				end
			end
		end
	end
end)

---------------- gold mine 2 location
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords, -2350.74, 112.61, 217.73, true)
			if prospect == false then
				if betweencoords < 1.0 then
					DrawTxt(Config.mine1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, 0xC7B5340A) then
					TriggerEvent('scrp_goldprospecting:start_mining')
				end
			end
		end
	end
end)

---------------- gold mine 3 location
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords, -5981.09, -3161.47, -26.55, true)
			if prospect == false then
				if betweencoords < 1.0 then
					DrawTxt(Config.mine1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, 0xC7B5340A) then
					TriggerEvent('scrp_goldprospecting:start_mining')
				end
			end
		end
	end
end)

---------------- gold mine 4 location
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords, -1432.41, 1176.18, 226.45, true)
			if prospect == false then
				if betweencoords < 1.0 then
					DrawTxt(Config.mine1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, 0xC7B5340A) then
					TriggerEvent('scrp_goldprospecting:start_mining')
				end
			end
		end
	end
end)

---------------- start mining for gold
RegisterNetEvent('scrp_goldprospecting:start_mining')
AddEventHandler('scrp_goldprospecting:start_mining', function()	
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
		if prospect == false then
			
			TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_PICKAXE_WALL'), -1, true, false, false, false)
			prospect = true
			TriggerEvent("redemrp_notification:start", "mining for gold!", 18, "success")
			Citizen.Wait(30000)
			ClearPedTasksImmediately(PlayerPedId())
			ClearPedSecondaryTask(PlayerPedId())
			TriggerServerEvent('scrp_goldprospecting:prospect_result')

		end
end)

---------------- gold panning give show result and give reward
RegisterNetEvent('scrp_goldprospecting:give_reward')
AddEventHandler('scrp_goldprospecting:give_reward', function(gold)
    Citizen.CreateThread(function()
        Wait(1000)
		
		if gold == 1 then
			TriggerEvent("redemrp_notification:start", "you found a nugget nice!", 3, "success")
			TriggerServerEvent('scrp_goldprospecting:reward', 1)
			playAnim("amb_misc@world_human_drunk_dancing@male@male_b@idle_a", "idle_b")
			play_sound_frontend("PURCHASE", "Ledger_Sounds", true,0,true,0)
			prospect = false
		elseif gold == 2 then
			TriggerEvent("redemrp_notification:start", "you found a 2 nuggets nice!", 3, "success")
			TriggerServerEvent('scrp_goldprospecting:reward', 2)
			playAnim("amb_misc@world_human_drunk_dancing@male@male_b@idle_a", "idle_b")
			play_sound_frontend("PURCHASE", "Ledger_Sounds", true,0,true,0)
			prospect = false
		elseif gold == 3 then
			TriggerEvent("redemrp_notification:start", "you found a 3 nuggets, you are one lucky prespector!", 3, "success")
			TriggerServerEvent('scrp_goldprospecting:reward', 3)
			playAnim("amb_misc@world_human_drunk_dancing@male@male_b@idle_a", "idle_b")
			play_sound_frontend("PURCHASE", "Ledger_Sounds", true,0,true,0)
			prospect = false
		elseif gold == 0 then
			TriggerEvent("redemrp_notification:start", "no nuggets found, better luck next time!", 3, "warning")
			play_sound_frontend("NO", "HUD_DOMINOS_SOUNDSET", true,0,true,0)
			prospect = false
		end
		
	end, false)
end)

---------------- gold nugget smelting oil fields
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords, 499.69, 677.81, 121.04, true)
			if smelting == false then
				if betweencoords < 2.0 then
					DrawTxt(Config.smelt1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, 0xC7B5340A) then
				smelting = true
				TriggerServerEvent('scrp_goldprospecting:check_nuggets')
				end
			end
		end
	end
end)

---------------- gold nugget smelting Valentine Bank
--Citizen.CreateThread(function()
--    while true do
--		Citizen.Wait(0)
--		local playerPed = PlayerPedId()
--		local coords = GetEntityCoords(playerPed)
--		local betweencoords = GetDistanceBetweenCoords(coords, -305.56, 764.67, 118.7, true)
--			if smelting == false then
--				if betweencoords < 2.0 then
--					DrawTxt(Config.smelt1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
--				if IsControlJustReleased(0, 0xC7B5340A) then
--				smelting = true
--				TriggerServerEvent('scrp_goldprospecting:check_nuggets')
--				end
--			end
--		end
--	end
--end)

---------------- gold smelting success message
RegisterNetEvent('scrp_goldprospecting:finished_smelt')
AddEventHandler('scrp_goldprospecting:finished_smelt', function()
    Citizen.CreateThread(function()
        TriggerEvent("redemrp_notification:start", "you have smelted one gold bar, which has been added to your inventory!", 3, "success")
		smelting = false
	end, false)
end)

---------------- gold smelting fail message
RegisterNetEvent('scrp_goldprospecting:nil_gold')
AddEventHandler('scrp_goldprospecting:nil_gold', function()
    Citizen.CreateThread(function()
        TriggerEvent("redemrp_notification:start", "you do not have enough nuggests, you need 25!", 3, "warning")
		smelting = false
	end, false)
end)

---------------- sell your gold bars St Denis
--Citizen.CreateThread(function()
  --  while true do
	--	Citizen.Wait(0)
	--	local playerPed = PlayerPedId()
	--	local coords = GetEntityCoords(playerPed)
	--	local betweencoords = GetDistanceBetweenCoords(coords, 2859.27, -1200.64, 49.59, true)
	--		if selling == false then
	--			if betweencoords < 2.0 then
	--				DrawTxt(Config.sellgold1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
	--			if IsControlJustReleased(0, 0xC7B5340A) then
	--			selling = true
	--			TriggerServerEvent('scrp_goldprospecting:sell_goldbars')
	--			end
	--		end
	--	end
--	end
--end)

---------------- sell your gold bars Tumbleweed
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords, -5632.85, -2938.79, 6.76, true)
			if selling == false then
				if betweencoords < 2.0 then
					DrawTxt(Config.sellgold1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, 0xC7B5340A) then
				selling = true
				TriggerServerEvent('scrp_goldprospecting:sell_goldbars')
				end
			end
		end
	end
end)

---------------- sell gold success message
RegisterNetEvent('scrp_goldprospecting:sold_goldbar')
AddEventHandler('scrp_goldprospecting:sold_goldbar', function(total_goldbars, gold_value)
    Citizen.CreateThread(function()
        TriggerEvent("redemrp_notification:start", "you sold " ..total_goldbars.. " gold bar for "..gold_value.. " , congratulations!", 3, "success")
		play_sound_frontend("PURCHASE", "Ledger_Sounds", true,0,true,0)
		selling = false
	end, false)
end)

---------------- sell gold fail message
RegisterNetEvent('scrp_goldprospecting:nil_goldbar')
AddEventHandler('scrp_goldprospecting:nil_goldbar', function()
    Citizen.CreateThread(function()
        TriggerEvent("redemrp_notification:start", "you do not have any gold bars to sell!", 3, "warning")
		play_sound_frontend("NO", "HUD_DOMINOS_SOUNDSET", true,0,true,0)
		selling = false
	end, false)
end)