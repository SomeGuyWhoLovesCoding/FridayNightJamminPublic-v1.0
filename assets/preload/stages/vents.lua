function onCreate()

	makeAnimatedLuaSprite('vent','vent',185,-500)
	addAnimationByPrefix('vent','run','ventrun',30,true)
	addLuaSprite('vent',false)

	makeAnimatedLuaSprite('person','bf',1300,450)
	addAnimationByPrefix('person','run','personrun',60,true)
	addAnimationByPrefix('person','hurty','personhurty',60,true)
	addLuaSprite('person',false)

end

function onBeatHit()--for every beat

end