# Slughterer-Job-QBCore

Hello Everyone

I've spent a lot of time making this Slaughterer Job.

I want to share it with you guys for FREE.

And its working with latest QBCore version server.

For qb-target configuration soon. I have to develop my server first.

Add this on qb-core/shared/items.lua
```lua
    ["alivechicken"] 		 		= {["name"] = "alivechicken", 			["label"] = "Alive Chicken", 		    ["weight"] = 4000, 		["type"] = "item", 		["image"] = "alivechicken.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Alive Chicken"},
    ["slaughteredchicken"] 		 	= {["name"] = "slaughteredchicken", 	["label"] = "Slaughtered Chicken", 	    ["weight"] = 4000, 		["type"] = "item", 		["image"] = "slaughteredchicken.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Slaughtered Chicken"},
    ["packagedchicken"] 		 	= {["name"] = "packagedchicken", 		["label"] = "Packaged Chicken", 	    ["weight"] = 4000, 		["type"] = "item", 		["image"] = "packagedchicken.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Packaged Chicken"},
```

And move the image from images folder to qb-inventory
- qb-inventory/html/images


#Any issues and problems related this script please contact me on my [Discord](https://discord.gg/5KgENtV5Bf) 
