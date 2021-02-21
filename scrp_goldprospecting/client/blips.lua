-- created by RexshackGaming : Discord : https://discord.gg/8gNCwDpQPb
-- youtube channel : https://www.youtube.com/channel/UCikEgGfXO-HCPxV5rYHEVbA

---------------- add blips to your map
local blips = {

	-- add gold panning/mining blips to map
	{ name = 'Gold Prospect Area', sprite = -1289383059, x= -470.84, y = 1013.52, z = 87.88 }, -- gold panning 1
	{ name = 'Gold Prospect Area', sprite = -1289383059, x= -1638.22, y = -1081.3, z = 66.1 }, -- gold panning 2
	{ name = 'Gold Prospect Area', sprite = -1289383059, x= -2573.9, y = 923.53, z = 165.98 }, -- gold panning 3
	{ name = 'Gold Prospect Area', sprite = -1289383059, x= -1623.29, y = -2832.33, z = -11.9 }, -- gold panning 4
	{ name = 'Gold Prospect Area', sprite = -1289383059, x= 2723.8, y = 1391.34, z = 68.77 }, -- gold mine 1
	{ name = 'Gold Prospect Area', sprite = -1289383059, x= -2350.74, y = 112.61, z = 217.73 }, -- gold mine 2
	{ name = 'Gold Prospect Area', sprite = -1289383059, x= -5981.09, y = -3161.47, z = -26.55 }, -- gold mine 3
	{ name = 'Gold Prospect Area', sprite = -1289383059, x= -1432.41, y = 1176.18, z = 226.45 }, -- gold mine 3
	{ name = 'Smelt Gold', sprite = 1754365229, x= 499.69, y = 677.81, z = 121.04 }, -- smelt nuggets oil field
	--{ name = 'Fence', sprite = -1179229323, x= 2859.27, y = -1200.64, z = 49.59 }, -- fence saint denis / sell bars of gold
	--{ name = 'Smelt Gold', sprite = 1754365229, x= -1768.9, y = -431.96, z = 155.27 }, -- smelt nuggets strawberry
	--{ name = 'Fence', sprite = -1179229323, x= -5632.85, y = -2938.79, z = 6.76 }, -- fence tumbleweed / sell bars of gold
	-- you can add more if you need!
}

-- do not touch code below
Citizen.CreateThread(function()
	for _, info in pairs(blips) do
        local blip = N_0x554d9d53f696d002(1664425300, info.x, info.y, info.z)
        SetBlipSprite(blip, info.sprite, 1)
		SetBlipScale(blip, 0.2)
		Citizen.InvokeNative(0x9CB1A1623062F402, blip, info.name)
    end  
end)