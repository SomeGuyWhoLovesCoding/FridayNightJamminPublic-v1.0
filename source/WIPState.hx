package;

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

class WIPState extends MusicBeatState
{
	public static var leftState:Bool = false;

	var warnText:FlxSprite;
	override function create()
	{
		super.create();

		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);

		warnText = new FlxText().loadGraphic(Paths.image('WIP Note'));
		warnText.setGraphicSize(FlxG.width, FlxG.height);
		warnText.screenCenter();
		add(warnText);
		FlxTween.tween(warnText.scale, {x: 0.99}, 0);
	}

	override function update(elapsed:Float)
	{
		if(!leftState) {
			if (FlxG.keys.anyPressed([SPACE])) {
					FlxG.sound.play(Paths.sound('listen2'), 1.5);
			}
			if (controls.ACCEPT) {
				leftState = true;
				FlxTransitionableState.skipNextTransIn = true;
				FlxTransitionableState.skipNextTransOut = true;
				FlxG.save.data.careful = true;
				FlxG.save.data.lostAvailable = 0;
				FlxG.save.flush();
				FlxG.sound.play(Paths.sound('warningConfirm'));
				FlxTween.tween(warnText, {alpha: 0}, 0.3);
				FlxTween.tween(warnText.scale, {x: 0.885, y: 0.885}, 0.3, {
					onComplete: function (twn:FlxTween) {
						MusicBeatState.switchState(new StoryMenuState());
					}
				});
			}
		}
		super.update(elapsed);
	}
}