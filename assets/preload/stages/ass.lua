function onCreate()
	-- background stuff
	makeLuaSprite('ass', 'ass', -600, -300);
	setScrollFactor('ass', 0.3, 0.3);

	addLuaSprite('ass', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end