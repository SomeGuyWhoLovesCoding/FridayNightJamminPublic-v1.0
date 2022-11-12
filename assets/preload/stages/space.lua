function onCreate()

	makeAnimatedLuaSprite('space', 'space', -600, -300)
	addAnimationByPrefix('space', 'run', 'spacerun', 60, true)
	addLuaSprite('space' ,false)

end

function onBeatHit()--for every beat

end