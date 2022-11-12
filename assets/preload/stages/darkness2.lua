function onCreate()
	-- background stuff
	makeLuaSprite('darkness2', 'darkness2', -600, -300);
	setScrollFactor('darkness2', 0.8, 0.8);

	makeLuaSprite('darkness2bfspot', 'darkness2bfspot', -600, -300);
	setScrollFactor('darkness2bfspot', 0.8, 0.8);

	addLuaSprite('darkness2', false);
	addLuaSprite('darkness2bfspot', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end