function onCreate()
	-- background stuff
	makeLuaSprite('sn', 'sn', -600, -300);
	setScrollFactor('sn', 0.8, 0.8);

	makeLuaSprite('sn_disaster', 'sn_disaster', -600, -300);
	setScrollFactor('sn_disaster', 0.8, 0.8);

	addLuaSprite('sn', false);
	addLuaSprite('sn_disaster', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end