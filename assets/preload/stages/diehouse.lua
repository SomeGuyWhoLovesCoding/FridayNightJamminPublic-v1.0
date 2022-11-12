function onCreate()
	-- background shit
	makeLuaSprite('diehouse', 'diehouse', -600, -300);
	setLuaSpriteScrollFactor('diehouse', 0.9, 0.9);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('diehouse', 'diehouse', -600, -300);
		setLuaSpriteScrollFactor('diehouse', 0.9, 0.9);
	end

	addLuaSprite('diehouse', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end