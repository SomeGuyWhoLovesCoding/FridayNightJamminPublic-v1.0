function onCreate()
	-- background stuff
	makeLuaSprite('towernight', 'towernight', -600, -300);
	setScrollFactor('towernight', 0.8, 0.8);

	makeLuaSprite('tower-cloudgrey', 'tower-cloudgrey', -600, -300);
	setScrollFactor('tower-cloudgrey', 0.8, 0.8);

	makeLuaSprite('tower-front', 'tower-front', -600, -300);
	setScrollFactor('tower-front', 0.9, 0.9);

	addLuaSprite('towernight', false);
	addLuaSprite('tower-cloudgrey', false);
	addLuaSprite('tower-front', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end