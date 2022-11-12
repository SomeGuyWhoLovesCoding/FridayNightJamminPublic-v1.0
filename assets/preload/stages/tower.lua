function onCreate()
	-- background stuff
	makeLuaSprite('towerskybright', 'towerskybright', -600, -300);
	setScrollFactor('towerskybright', 0.8, 0.8);

	makeLuaSprite('towerclouds', 'towerclouds', -600, -300);
	setScrollFactor('towerclouds', 0.8, 0.8);

	makeLuaSprite('tower-front', 'tower-front', -600, -300);
	setScrollFactor('tower-front', 0.9, 0.9);

	addLuaSprite('towerskybright', false);
	addLuaSprite('towerclouds', false);
	addLuaSprite('tower-front', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end