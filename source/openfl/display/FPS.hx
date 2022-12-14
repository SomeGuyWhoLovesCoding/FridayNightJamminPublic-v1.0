package openfl.display;

import haxe.Timer;
import openfl.display.FPS;
import openfl.events.Event;
import openfl.system.System;
import openfl.text.TextField;
import openfl.text.TextFormat;

/**

 * FPS class extension to display memory usage.

 * @author Kirill Poletaev

 * source: https://keyreal-code.github.io/haxecoder-tutorials/17_displaying_fps_and_memory_usage_using_openfl.html

 */

class FPS extends TextField
{

	private var times:Array<Float>;
	private var memPeak:Float = 0;

	public function new(inX:Float = 10.0, inY:Float = 10.0, inCol:Int = 0xFFBEFFE1) 
	{
		super();

		x = inX;
		y = inY;

		selectable = false;

		defaultTextFormat = new TextFormat(Paths.font("vcr.ttf"));
		text = "FPS";
		times = [];

		addEventListener(Event.ENTER_FRAME, onEnter);
		width = 180;
		height = 125;
	}

	private function onEnter(_)
	{	
		var now = Timer.stamp();
		times.push(now);

		while (times[0] < now - 1)

			times.shift();

		var mem:Float = Math.round(System.totalMemory / 1024 / 1024 * 100)/100;

		if (mem > memPeak) memPeak = mem;

		if (ClientPrefs.showFPS)
		{	

			text = times.length + " FPS" + "\nMEMORY: " + memPeak + " MB";

			textColor = 0xFFBEFFE1;	

		}
	}
}