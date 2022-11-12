function onCreate()
	-- background stuff
	makeLuaSprite('airship2', 'airship2', -600, -300);
	setScrollFactor('airship2', 0.6, 0.6);

	addLuaSprite('airship2', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end