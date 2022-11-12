function onCreate()
	-- background shit
	makeLuaSprite('shaggy', 'shaggy', -600, -300);
	setLuaSpriteScrollFactor('shaggy', 0.8, 0.8);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('shaggy', 'shaggy', -600, -300);
		setLuaSpriteScrollFactor('shaggy', 0.8, 0.8);
	end

	addLuaSprite('shaggy', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end