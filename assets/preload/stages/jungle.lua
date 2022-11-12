function onCreate()
	-- background shit
	makeLuaSprite('jungle', 'jungle', -600, -300);
	setLuaSpriteScrollFactor('jungle', 0.9, 0.9);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('jungle', 'jungle', -600, -300);
		setLuaSpriteScrollFactor('jungle', 0.9, 0.9);
	end

	addLuaSprite('jungle', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end