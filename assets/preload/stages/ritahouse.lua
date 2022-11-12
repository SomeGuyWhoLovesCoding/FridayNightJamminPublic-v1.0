function onCreate()
	-- background shit
	makeLuaSprite('ritahouse', 'ritahouse', -600, -300);
	setLuaSpriteScrollFactor('ritahouse', 0.9, 0.9);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('ritahouse', 'ritahouse', -600, -300);
		setLuaSpriteScrollFactor('ritahouse', 0.9, 0.9);
	end

	addLuaSprite('ritahouse', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end