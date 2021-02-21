# Required resources
- redem_roleplay : https://github.com/RedEM-RP/redem_roleplay/
- redemrp_inventory v2.0 : https://github.com/RedEM-RP/redemrp_inventory
- redemrp_notification : https://github.com/Ktos93/redemrp_notification

# rsg_goldprospecting

1. mine or pan for gold at various locations
2. smelt your gold 25 nuggets = 1 gold bar
3. sell your gold bar at the fence for $$ and XP

# Installation
1. Put rsg_goldprospecting to your resource folder.
2. Add "rsg_goldprospecting" in your "server.cfg".
3. In redemrp_inventory/Config.lua under Config.Items ensure the items are added :

Config.Items = {

["golden_nugget"] = {
		label = "Golden Nugget",
		description = "Golden Nugget",
		weight = 0.05,
		canBeDropped = true,
		canBeUsed = true,
		requireLvl = 1,
		limit = 1250,
		imgsrc = "items/golden_nugget.png",
		type = "item_standard"
	},
	
["goldbar"] = {
		label = "Gold Bar",
		description = "Solid Gold Bar",
		weight = 1.25,
		canBeDropped = true,
		canBeUsed = true,
		requireLvl = 1,
		limit = 50,
		imgsrc = "items/goldbar.png",
		type = "item_standard"
	},
	
}

4. restart
