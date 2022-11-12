function onCreate()
	-- background stuff
	makeLuaSprite('t2back2', 't2back2', -600, -300);
	setScrollFactor('t2back', 1.2, 1.2);

	makeLuaSprite('t2trees2', 't2trees2', -600, -300);
	setScrollFactor('t2trees2', 1.2, 1.2);

	makeLuaSprite('t2glow', 't2glow', -600, -300);
	setScrollFactor('t2glow', 0.9, 0.9);

	makeLuaSprite('t2road2', 't2road2', -600, -300);
	setScrollFactor('t2road2', 0.9, 0.9);

	addLuaSprite('t2back2', false);
	addLuaSprite('t2trees2', false);
	addLuaSprite('t2glow', false);
	addLuaSprite('t2road2', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end