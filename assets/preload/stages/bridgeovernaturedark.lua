function onCreate()
	-- background stuff
	makeLuaSprite('bridgeovernaturebackdark', 'bridgeovernaturebackdark', -600, -300);
	setScrollFactor('bridgeovernaturebackdark', 0.4, 0.4);

	makeLuaSprite('bridgeovernaturefrontdark', 'bridgeovernaturefrontdark', -600, -300);
	setScrollFactor('bridgeovernaturefrontdark', 0.8, 0.8);

	addLuaSprite('bridgeovernaturebackdark', false);
	addLuaSprite('bridgeovernaturefrontdark', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end