function onCreate()
	-- background shit
	makeLuaSprite('ritanature', 'ritanature', -600, -300);
	setLuaSpriteScrollFactor('ritanature', 0.8, 0.8);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('ritanature', 'ritanature', -600, -300);
		setLuaSpriteScrollFactor('ritanature', 0.8, 0.8);
	end

	addLuaSprite('ritanature', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end