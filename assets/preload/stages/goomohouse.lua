function onCreate()
	-- background shit
	makeLuaSprite('goomohouse', 'goomohouse', -600, -300);
	setLuaSpriteScrollFactor('goomohouse', 0.7, 0.7);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('goomohouse', 'goomohouse', -600, -300);
		setLuaSpriteScrollFactor('goomohouse', 0.8, 0.8);
	end

	addLuaSprite('goomohouse', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end