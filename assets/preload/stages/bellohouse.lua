function onCreate()
-- Edited since March 7th 2022
	-- background shit
	makeLuaSprite('bellohouse', 'bellohouse', -600, -300);
	setLuaSpriteScrollFactor('bellohouse', 0.9, 0.9);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('bellohouse', 'bellohouse', -600, -300);
		setLuaSpriteScrollFactor('bellohouse', 0.9, 0.9);
	end

	addLuaSprite('bellohouse', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end