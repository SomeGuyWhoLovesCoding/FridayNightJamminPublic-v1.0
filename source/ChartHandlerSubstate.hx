// Yay this is for testing

/*

package;

import haxe.macro.Context;
import lime.ui.Window;
import flixel.FlxSubState;
import flixel.util.FlxSave;
#if sys
import sys.FileSystem;
#end

class ChartHandlerSubstate extends MusicBeatState
{
	var save:FlxSave = new FlxSave();
	
		// The Chart Crash Handler (NEW)

		// Yes, This Professional Helper Prevents a crash when you load a nonexistent or corrupted chart.

        // That's it lmfao I didnt know what to do to prevent crashing so I did this


		// Variables
	
	var noChartPath:String = Paths.json(PlayState.SONG.song + CoolUtil.difficultyString + '.json') + defaultMsg;
	var errorText:String = "ERROR!";
	var defaultMsg:String = "\n\nChart is either Corrupt or Nonexistent.\nCODE:404";
	var chart_normal:String = "\n" + Paths.json(PlayState.SONG.song + CoolUtil.difficultyString + '.json');
	var chart_default:String = "\n" + Paths.json(PlayState.SONG.song + '.json');
	var noChartExists:String = errorText + chart_default + defaultMsg;
	var noChartExistsDefault:String = chart_normal + defaultMsg;

    override function create()
	{
		if(!FileSystem.exists(chart_normal))
		{
			save.bind('PopUps', 'SaveData');
			lime.app.Application.current.window.alert(errorText, noChartExists);
		}
		if(CoolUtil.defaultDifficulty && !FileSystem.exists(chart_default))
		{
			save.bind('PopUps', 'SaveData');
			lime.app.Application.current.window.alert(errorText, noChartExistsDefault);
		}
	}
}

*/