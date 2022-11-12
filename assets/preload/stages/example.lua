function onCreate()
    setProperty("skipCountdown", true)

	-- background shit
	makeLuaSprite('Destruction_front', 'blackscreen', -600, -300);
	setLuaSpriteScrollFactor('blackscreen', 1.2, 1.2);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('blackscreen', 'blackscreen', -600, -300);
		setLuaSpriteScrollFactor('blackscreen', 1.2, 1.2);
	end

	addLuaSprite('blackscreen', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end