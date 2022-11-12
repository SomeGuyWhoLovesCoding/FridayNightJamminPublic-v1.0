function onCreate()
	-- background shit
	makeLuaSprite('basketballcourt', 'basketballcourt', -600, -300);
	setLuaSpriteScrollFactor('basketballcourt', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('basketballcourt', 'basketballcourt', -600, -300);
		setLuaSpriteScrollFactor('basketballcourt', 1.1, 1.1);
	end

	addLuaSprite('basketballcourt', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end