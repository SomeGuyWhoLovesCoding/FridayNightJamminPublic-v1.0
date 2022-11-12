function onCreate()

	makeAnimatedLuaSprite('spaceANIMATED', 'spaceANIMATED', -600, -300)
	addAnimationByPrefix('spaceANIMATED', 'run', 'spaceANIMATED', 60, true)
	addLuaSprite('spaceANIMATED' ,false)

end

function onBeatHit()--for every beat

end