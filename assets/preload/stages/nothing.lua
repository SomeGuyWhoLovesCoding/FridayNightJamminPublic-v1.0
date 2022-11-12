function onCreate()
	-- background stuff
	makeLuaSprite('blackscreen', 'blackscreen', 0, 0);
	setScrollFactor('blackscreen', 0.2, 0.2);

	makeLuaSprite('blackscreen', 'blackscreen', 0, 0);
	setScrollFactor('blackscreen', 0.2, 0.2);

	addLuaSprite('blackscreen', false);
	addLuaSprite('blackscreen', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end