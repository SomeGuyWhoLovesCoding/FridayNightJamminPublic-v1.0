function onCreate()
	-- background shit
	makeLuaSprite('fnac', 'fnac', 0, -400);
	setLuaSpriteScrollFactor('fnac', 1.3, 1.3);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('fnac', 'fnac', 0, -400);
		setLuaSpriteScrollFactor('fnac', 1.3, 1.3);
	end

	addLuaSprite('fnac', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end