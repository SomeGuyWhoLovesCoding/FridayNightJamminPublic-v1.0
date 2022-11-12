function onCreate()
	-- background stuff
	makeLuaSprite('corruptcityback', 'corruptcityback', -600, -300);
	setScrollFactor('corruptcityback', 0.8, 0.8);

	makeLuaSprite('corruptcityfront', 'corruptcityfront', -600, -300);
	setScrollFactor('corruptcityfront', 0.8, 0.8);

	addLuaSprite('corruptcityback', false);
	addLuaSprite('corruptcityfront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end