function onCreate()
	-- background stuff
	makeLuaSprite('corruptslairback', 'corruptslairback', -600, -300);
	setScrollFactor('corruptslairback', 1, 1);

	makeLuaSprite('corruptslairfront', 'corruptslairfront', -600, -300);
	setScrollFactor('corruptslairfront', 1, 1);

	addLuaSprite('corruptslairback', false);
	addLuaSprite('corruptslairfront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end