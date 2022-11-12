function onCreate()
	-- background stuff
	makeLuaSprite('corruptslairback_manga', 'corruptslairback_manga', -600, -300);
	setScrollFactor('corruptslairback_manga', 1, 1);

	makeLuaSprite('corruptslairfront_manga', 'corruptslairfront_manga', -600, -300);
	setScrollFactor('corruptslairfront_manga', 1, 1);

	addLuaSprite('corruptslairback_manga', false);
	addLuaSprite('corruptslairfront_manga', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end