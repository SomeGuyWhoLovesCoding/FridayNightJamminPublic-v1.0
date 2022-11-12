function onCreate()
	-- background stuff
	makeLuaSprite('bridgeovernatureback', 'bridgeovernatureback', -600, -300);
	setScrollFactor('bridgeovernatureback', 0.4, 0.4);

	makeLuaSprite('bridgeovernaturefront', 'bridgeovernaturefront', -600, -300);
	setScrollFactor('bridgeovernaturefront', 0.8, 0.8);

	addLuaSprite('bridgeovernatureback', false);
	addLuaSprite('bridgeovernaturefront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end