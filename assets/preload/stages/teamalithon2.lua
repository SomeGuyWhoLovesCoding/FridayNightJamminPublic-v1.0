function onCreate()
	-- background stuff
	makeLuaSprite('t2back', 't2back', -600, -300);
	setScrollFactor('t2back', 1.2, 1.2);

	makeLuaSprite('t2trees', 't2trees', -600, -300);
	setScrollFactor('t2trees', 1.2, 1.2);

	makeLuaSprite('t2glow', 't2glow', -600, -300);
	setScrollFactor('t2glow', 0.9, 0.9);

	makeLuaSprite('t2road', 't2road', -600, -300);
	setScrollFactor('t2road', 0.9, 0.9);

	addLuaSprite('t2back', false);
	addLuaSprite('t2trees', false);
	addLuaSprite('t2glow', false);
	addLuaSprite('t2road', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end