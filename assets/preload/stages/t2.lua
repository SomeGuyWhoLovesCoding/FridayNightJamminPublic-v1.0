function onCreate()
	-- background stuff
	makeLuaSprite('GET ZAPPED LOL', 'GET ZAPPED LOL', -600, -300);
	setScrollFactor('GET ZAPPED LOL', 1.2, 1.2);

	makeLuaSprite('umm', 'umm', -600, -300);
	setScrollFactor('umm', 1.2, 1.2);

	makeLuaSprite('I am fucking mad at you', 'I am fucking mad at you', -600, -300);
	setScrollFactor('I am fucking mad at you', 0.9, 0.9);

	addLuaSprite('GET ZAPPED LOL', false);
	addLuaSprite('umm', false);
	addLuaSprite('I am fucking mad at you', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end