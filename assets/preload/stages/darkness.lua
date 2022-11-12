function onCreate()
	-- background shit
	makeLuaSprite('darkness', 'darkness', -600, -300);
	setLuaSpriteScrollFactor('darkness', 0.9, 0.9);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('darkness', 'darkness', -600, -300);
		setLuaSpriteScrollFactor('darkness', 0.9, 0.9);
	end

	addLuaSprite('darkness', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end