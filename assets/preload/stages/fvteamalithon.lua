-- Lua stuff
local squish = 95
local yy = 200;
local xx = 200;
local yy2 = 200;
local xx2 = 200;
local ofs = 0;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    makeLuaSprite('BG', 'fvteamalithon', -350, 50)
    makeLuaSprite('barleft','',-4,0)
    makeGraphic('barleft',162,886,'000000')
    makeLuaSprite('barright','',1119,0)
    makeGraphic('barright',162,886,'000000')
    setScrollFactor('barleft',0,0)
    setObjectCamera('barleft','hud')
    setScrollFactor('barright',0,0)
    setObjectCamera('barright','hud')
    addLuaSprite('BG',  false)
    addLuaSprite('barleft',true)
    addLuaSprite('barright',true)
end

function onUpdate(elapsed)

    if not middlescroll then
        noteTweenX('0',0,defaultOpponentStrumX0 + squish,0.2,'linear')
        noteTweenX('1',1,defaultOpponentStrumX1 + squish,0.2,'linear')
        noteTweenX('2',2,defaultOpponentStrumX2 + squish,0.2,'linear')
        noteTweenX('3',3,defaultOpponentStrumX3 + squish,0.2,'linear')
        noteTweenX('4',4,defaultPlayerStrumX0 - squish,0.2,'linear')
        noteTweenX('5',5,defaultPlayerStrumX1 - squish,0.2,'linear')
        noteTweenX('6',6,defaultPlayerStrumX2 - squish,0.2,'linear')
        noteTweenX('7',7,defaultPlayerStrumX3 - squish,0.2,'linear')

    end

    if del > 0 then
		del = del - 2
	end
	if del2 > 0 then
		del2 = del2 - 2
	end
        end