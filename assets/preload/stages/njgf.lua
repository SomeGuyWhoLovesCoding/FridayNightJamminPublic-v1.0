function onCreate()
	-- background stuff
	makeLuaSprite('NJGGSkyandTrees', 'NJGGSkyandTrees', -600, -300);
	setScrollFactor('NJGGSkyandTrees', 1, 1);

	makeLuaSprite('NJGGBushes', 'NJGGBushes', -600, -300);
	setScrollFactor('NJGGBushes', 1, 1);

	makeLuaSprite('NJGGFloor', 'NJGGFloor', -600, -300);
	setScrollFactor('NJGGFloor', 1, 1);

	makeLuaSprite('NJGGyard', 'NJGGyard', -600, -300);
	setScrollFactor('NJGGyard', 1, 1);

	makeLuaSprite('NJGGHouse', 'NJGGHouse', -600, -300);
	setScrollFactor('NJGGHouse', 1, 1);

	addLuaSprite('NJGGSkyandTrees', false);
	addLuaSprite('NJGGBushes', false);
	addLuaSprite('NJGGFloor', false);
	addLuaSprite('NJGGyard', false);
	addLuaSprite('NJGGHouse', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end