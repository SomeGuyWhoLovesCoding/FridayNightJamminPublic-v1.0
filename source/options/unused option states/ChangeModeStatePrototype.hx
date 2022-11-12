package options;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.effects.FlxFlicker;
import lime.app.Application;
import flixel.addons.transition.FlxTransitionableState;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;

class ChangeModeState extends MusicBeatState
{
	public static var leftState:Bool = false;

	var warnText:FlxText;
	override function create()
	{
		super.create();

		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.CYAN);
		add(bg);

		warnText = new FlxText(0, 0, FlxG.width,
			"WARNING:   \n
		THIS OPTION IS IN BETA RIGHT NOW!!!   \n
			Please do not ask me to code it right away,   \n
			so Please don't ping me I beg you :'(\n
			Don't break any rules, ok?\n
			Press Enter to Open the website, or\n
			Press Escape to go back to the menu.\n
			PRESS PAUSE TO JOIN MY DISCORD SERVER \n
		FOR UPDATES!!!",
			5);
		warnText.setFormat("VCR OSD Mono", 24, FlxColor.WHITE, CENTER);
		warnText.screenCenter(Y);
		add(warnText);
	}

	override function update(elapsed:Float)
	{
		if(!leftState) {
			if (controls.ACCEPT) {
				leftState = true;
				CoolUtil.browserLoad("https://sites.google.com/view/option-code-beta/home");
			}
			else if(controls.PAUSE) {
				CoolUtil.browserLoad("https://discord.gg/ncQG6yzyKZ");
			}
			if (controls.BACK) {
				MusicBeatState.switchState(new OptionsState());
			}
			if(leftState)
			{
				FlxG.sound.play(Paths.sound('cancelMenu'));
				FlxTween.tween(warnText, {alpha: 0}, 1, {
					onComplete: function (twn:FlxTween) {
						MusicBeatState.switchState(new OptionsState());
					}
				});
			}
		}
		super.update(elapsed);
	}
}
