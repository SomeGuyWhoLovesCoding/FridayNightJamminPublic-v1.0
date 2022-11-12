package;

import flixel.math.FlxMath;
import flixel.ui.FlxBar;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.graphics.FlxGraphic;
import flixel.util.FlxTimer;
import flixel.tweens.FlxTween;
import openfl.display.BitmapData;

#if sys
import sys.FileSystem;
import sys.io.File;
#end

using StringTools;

class Cache extends FlxState
{
    var toBeDone = 0;
	var done = 0;
    var barProgress:Float = 0;

	var loaded = false;
	
	var dog:FlxSprite;
	var text:FlxText;
	var BG:FlxSprite;
	var thing:String;

    var barBG:FlxSprite;
    var bar:FlxBar;

    var bitmapData:Map<String,FlxGraphic> = new Map<String,FlxGraphic>();

	var images = [];
	var music = [];
	var charts = [];

    override function create() 
    {
        //Stole this from Vs. Papyrus (https://github.com/BunxMaker/Vs-Papyrus-FULL-WEEK-/blob/main/source/Cache.hx)
        Paths.clearStoredMemory();
        Paths.clearUnusedMemory();
        
        FlxG.mouse.visible = false;
		FlxG.worldBounds.set(0, 0);
        #if sys
        for (i in FileSystem.readDirectory(FileSystem.absolutePath( "assets/shared/images/characters")))
        {
            if (!i.endsWith(".png"))
                continue;

            images.push(i);
        }
        #end
        BG = new FlxSprite().loadGraphic(Paths.image('City'));

		text = new FlxText(FlxG.width / 2, FlxG.height / 2 - 10 ,0,"Loading Shit...");
		text.size = 24;
		text.alignment = FlxTextAlign.CENTER;
		text.color = FlxColor.CYAN;
		text.alpha = 1;
        text.screenCenter(X);

		dog = new FlxSprite(520, FlxG.height / 2);
		dog.frames = Paths.getSparrowAtlas('loadingDog');
		dog.animation.addByPrefix('loadDog','loading dog');
		dog.setGraphicSize(Std.int(dog.width * 0.8));
        dog.antialiasing = true;
		dog.alpha = 0;
		dog.animation.play('loadDog');

        toBeDone = Lambda.count(images);
        
        barBG = new FlxSprite(50,FlxG.height / 2 + 180).loadGraphic(Paths.image('loadingbar'));
		barBG.screenCenter(X);

		bar = new FlxBar(barBG.x + 60,barBG.y + 100,FlxBarFillDirection.LEFT_TO_RIGHT,Std.int(barBG.width - 118), Std.int(barBG.height - 130) ,this,
        "barProgress",0,100);
		bar.numDivisions = 100;
		bar.createFilledBar(FlxColor.BLACK, FlxColor.LIME);
        add(BG);
		add(bar);
		add(barBG);

		add(text);
		add(dog);
        

        sys.thread.Thread.create(() ->
		{
            for (i in images)
                {
                    thing = ' ';
                    var data:BitmapData = BitmapData.fromFile("assets/shared/images/characters/" + i);
                    var graph = FlxGraphic.fromBitmapData(data);
                    graph.persist = true;
                    graph.destroyOnNoUse = false;
                    bitmapData.set(i.replace(".png", ""),graph);
                    updatePros();
                }
		});

        super.create();
    }
    override function update(elaspsed) 
    {
        super.update(elaspsed);

        FlxG.autoPause = false;
		if (ClientPrefs.autoPause) {
			FlxG.autoPause = true;
			}

        if (!loaded){
				if (barProgress != 100)
					{
						text.text = "Importing Flash Media..." + thing;
                        text.screenCenter(X);
						}
                else{
                    
                    loaded = true;
                    cache(); 
                }
        }
    }
    //taken from kade
    function truncateFloat( number : Float, precision : Int): Float {
		var num = number;
		num = num * Math.pow(10, precision);
		num = Math.round( num ) / Math.pow(10, precision);
		return num;
	}

    function updatePros() 
    {
        done++;
        barProgress = truncateFloat(done / Lambda.count(images) * 100, 2);
        
    }
    function cache() 
    {
        var whobones:Int = FlxG.random.int(0,1);
        if (whobones == 1)
            text.text = 'FLASH MEDIA LOADED';
            text.screenCenter(X);
        if (whobones == 0)
            text.text = 'CACHED DATA!!';
            text.screenCenter(X);
        dog.visible = false;
        bar.visible = false;
        barBG.visible = false;
        FlxG.sound.play(Paths.sound('dataCompleted'));
        FlxTween.tween(BG, {alpha: 0}, 1.1, {
            onComplete: function(twn:FlxTween)
				{
					FlxG.switchState(new TitleState());
				}
			});
    }
}