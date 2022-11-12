function onCreate()
	-- background stuff
	makeLuaSprite('underwatersea', 'underwatersea', -600, -300);
	setScrollFactor('underwatersea', 0.6, 0.6);

	makeLuaSprite('underwaterfloor', 'underwaterfloor', -600, -300);
	setScrollFactor('underwaterfloor', 0.6, 0.6);

	addLuaSprite('underwatersea', false);
	addLuaSprite('underwaterfloor', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end