function onCreate()
	-- background stuff
	makeLuaSprite('corruptcitydarkback', 'corruptcitydarkback', -600, -300);
	setScrollFactor('corruptcitydarkback', 0.8, 0.8);

	makeLuaSprite('corruptcitydarkfront', 'corruptcitydarkfront', -600, -300);
	setScrollFactor('corruptcitydarkfront', 0.8, 0.8);

	addLuaSprite('corruptcitydarkback', false);
	addLuaSprite('corruptcitydarkfront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end