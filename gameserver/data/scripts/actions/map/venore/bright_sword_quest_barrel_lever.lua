local action = Action()

function action.onUse(player, item, fromPosition, target, toPosition)
	if item:getId() == 1945 and Game.isItemInPosition({x = 32614, y = 32209, z = 10},1774) then 
		Game.removeItemInPosition({x = 32614, y = 32209, z = 10}, 1774)
		Game.removeItemInPosition({x = 32614, y = 32208, z = 10}, 1025)
		doRelocate({x = 32614, y = 32209, z = 10},{x = 32614, y = 32208, z = 10})
		Game.createItem(1774, 1, {x = 32614, y = 32208, z = 10})
		Game.createItem(1025, 1, {x = 32614, y = 32209, z = 10})
		Game.removeItemInPosition({x = 32614, y = 32206, z = 10}, 1304)
		Game.removeItemInPosition({x = 32614, y = 32205, z = 10}, 1025)
		Game.createItem(1323, 1, {x = 32614, y = 32204, z = 10})
		Game.removeItemInPosition({x = 32614, y = 32221, z = 10}, 1025)
		Game.removeItemInPosition({x = 32615, y = 32223, z = 10}, 1384)
		Game.createItem(1309, 1, {x = 32615, y = 32223, z = 10})
		Game.createItem(1492, 1, {x = 32615, y = 32221, z = 10})
		Game.createItem(1493, 1, {x = 32615, y = 32223, z = 10})
		Game.createItem(1492, 1, {x = 32613, y = 32220, z = 10})
		Game.sendMagicEffect({x = 32613, y = 32220, z = 10}, 9)
		item:transform(1946, 1)
		item:decay()
		Game.removeItemInPosition({x = 32613, y = 32220, z = 10}, 2166)
		Game.createItem(1336, 1, {x = 32614, y = 32205, z = 10})
		Game.createItem(1025, 1, {x = 32614, y = 32206, z = 10})
		Game.sendMagicEffect({x = 32615, y = 32224, z = 10}, 16)
		Game.sendMagicEffect({x = 32614, y = 32224, z = 10}, 16)
	elseif item:getId() == 1945 then 
		doRelocate({x = 32614, y = 32209, z = 10},{x = 32613, y = 32209, z = 10})
		Game.removeItemInPosition({x = 32614, y = 32221, z = 10}, 1025)
		Game.removeItemInPosition({x = 32615, y = 32223, z = 10}, 1384)
		Game.createItem(1309, 1, {x = 32615, y = 32223, z = 10})
		Game.createItem(1492, 1, {x = 32615, y = 32221, z = 10})
		Game.createItem(1493, 1, {x = 32615, y = 32223, z = 10})
		Game.createItem(1492, 1, {x = 32613, y = 32220, z = 10})
		Game.sendMagicEffect({x = 32613, y = 32220, z = 10}, 9)
		Game.createItem(1025, 1, {x = 32614, y = 32209, z = 10})
		item:transform(1946, 1)
		item:decay()
		Game.removeItemInPosition({x = 32613, y = 32220, z = 10}, 2166)
	elseif item:getId() == 1946 then 
		Game.sendMagicEffect({x = 32616, y = 32222, z = 10}, 3)
	end
	return true
end

action:aid(2044)
action:register()