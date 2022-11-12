function onCreate()
	-- background shit
	makeLuaSprite('err', 'err', -600, -300);
	setLuaSpriteScrollFactor('err', 0.9, 0.9);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('err', 'err', -600, -300);
		setLuaSpriteScrollFactor('err', 0.9, 0.9);
	end

	addLuaSprite('err', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end