function onCreate()
	-- background shit
	makeLuaSprite('wildnaturesky', 'wildnaturesky', -600, -300);
	setScrollFactor('wildnaturesky', 0.8, 0.8);

	makeLuaSprite('wildnaturefloor', 'wildnaturefloor', -600, -300);
	setScrollFactor('wildnaturefloor', 0.8, 0.8);

	makeLuaSprite('wildnaturebushes', 'wildnaturebushes', -600, -300);
	setScrollFactor('wildnaturebushes', 0.8, 0.8);

	makeLuaSprite('wildnaturecastle', 'wildnaturecastle', -600, -300);
	setScrollFactor('wildnaturecastle', 0.8, 0.8);

	addLuaSprite('wildnaturesky', false);
	addLuaSprite('wildnaturefloor', false);
	addLuaSprite('wildnaturebushes', false);
	addLuaSprite('wildnaturecastle', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end