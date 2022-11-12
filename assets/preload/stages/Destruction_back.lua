function onCreate()
	-- background shit
	makeLuaSprite('Destruction_back', 'Destruction_back', -600, -300);
	setLuaSpriteScrollFactor('Destruction_front', 1.2, 1.2);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('Destruction_back', 'Destruction_back', -600, -300);
		setLuaSpriteScrollFactor('Destruction_back', 1.2, 1.2);
	end

	addLuaSprite('Destruction_back', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end