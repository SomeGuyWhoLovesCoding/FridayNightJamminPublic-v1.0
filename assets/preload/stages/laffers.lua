function onCreate()
	-- background shit
	makeLuaSprite('laffers', 'laffers', -600, -300);
	setLuaSpriteScrollFactor('laffers', 0.9, 0.9);
	
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('laffers', 'laffers', -500, -300);
		setLuaSpriteScrollFactor('laffers', 1.3, 1.3);
		scaleObject('laffers', 0.9, 0.9);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end