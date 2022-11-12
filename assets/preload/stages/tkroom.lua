function onCreate()
	-- background shit
	makeLuaSprite('tkhall', 'tkhall', -600, -300);
	setLuaSpriteScrollFactor('tkhall', 0.9, 0.9);
	
	makeLuaSprite('tkfloor', 'tkfloor', -650, 600);
	setLuaSpriteScrollFactor('tkfloor', 0.9, 0.9);
	scaleObject('tkfloor', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('blankthing', 'blankthing', -500, -300);
		setLuaSpriteScrollFactor('blankthing', 1.3, 1.3);
		scaleObject('blankthing', 0.9, 0.9);
	end

	addLuaSprite('tkhall', false);
	addLuaSprite('tkfloor', false);
	addLuaSprite('blankthing', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end