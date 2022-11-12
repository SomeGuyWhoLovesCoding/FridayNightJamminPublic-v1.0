package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

using StringTools;

class GameplaySettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Gameplay Settings';
		rpcTitle = 'Changing Gameplay'; //for Discord Rich Presence

		var option:Option = new Option('Note Splashes',
			'If checked, Note Splashes appear when you hit a sick or a good!',
			'noteSplashes',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Controller Mode',
			'Check this if you want to play with\na controller instead of using your Keyboard.',
			'controllerMode',
			'bool',
			false);
		addOption(option);

		//var option:Option = new Option('Show Score Popups',
		//	'If checked, will show number score in-game.',
		//	'RatingCombo',
		//	'bool',
		//	false);
		//addOption(option);

		var option:Option = new Option('Downscroll',
			'If checked, notes go Down instead of Up, simple enough.',
			'downScroll',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Middlescroll',
			'If checked, your notes get centered.',
			'middleScroll',
			'bool',
			false);
		addOption(option);

		var option:Option = new Option('Fucked Mode [NOT RECOMMENDED]',
			'If checked, The modchart will be fucking cursed.',
			'fuckedMode',
			'bool',
			false);
		addOption(option);

		var option:Option = new Option('Shaders',
			'Enables Shaders In the Game.',
			'shaders',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Disable Reset Button',
			"If checked, pressing Reset won't do anything.",
			'noReset',
			'bool',
			false);
		addOption(option);

		var option:Option = new Option('Ghost Tapping [EXPERIMENTAL]',
			"If checked, you won't get misses from pressing keys\nwhile there are no notes able to be hit.",
			'ghostTapping',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Arrow Glow [EXPERIMENTAL]',
			"If checked, Will make the Arrows glow. Except the fact that \n The Player's arrows when hit instead plays The press Animations.",
			'strumGlow',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Mechanics [BETA, EXPERIMENTAL]',
			"If checked, The Song will have mechanics all together such as modcharts, etc.",
			'mechanics',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Hitsound Volume',
			'Funny notes does \"Tick!\" when you hit them.\n[Default is 0]',
			'hitsoundVolume',
			'percent',
			0);
		addOption(option);
		option.scrollSpeed = 1.6;
		option.minValue = 0.0;
		option.maxValue = 1;
		option.changeValue = 0.1;
		option.decimals = 1;

		var option:Option = new Option('Rating Offset',
			'Changes how late/early you have to hit for a "Sick!"\nHigher values mean you have to hit later.\n[Default is 0]',
			'ratingOffset',
			'int',
			0);
		option.displayFormat = '%vms';
		option.scrollSpeed = 20;
		option.minValue = -30;
		option.maxValue = 30;
		addOption(option);

		var option:Option = new Option('Sick! Hit Window',
			'Changes the amount of time you have\nfor hitting a "Sick!" in milliseconds.\n[Default is 50]',
			'sickWindow',
			'int',
			50);
		option.displayFormat = '%vms';
		option.scrollSpeed = 50;
		option.minValue = 25;
		option.maxValue = 75;
		addOption(option);

		var option:Option = new Option('Good Hit Window',
			'Changes the amount of time you have\nfor hitting a "Good" in milliseconds.\n[Default is 125]',
			'goodWindow',
			'int',
			125);
		option.displayFormat = '%vms';
		option.scrollSpeed = 50;
		option.minValue = 100;
		option.maxValue = 150;
		addOption(option);

		var option:Option = new Option('Bad Hit Window',
			'Changes the amount of time you have\nfor hitting a "Bad" in milliseconds.\n[Default is 250]',
			'badWindow',
			'int',
			250);
		option.displayFormat = '%vms';
		option.scrollSpeed = 50;
		option.minValue = 200;
		option.maxValue = 300;
		addOption(option);

		var option:Option = new Option('Safe Frames',
			'Changes how many frames you have for\nhitting a note earlier or late.\n[Default is 3]',
			'safeFrames',
			'float',
			10);
		option.scrollSpeed = 5;
		option.minValue = 1;
		option.maxValue = 15;
		option.changeValue = 0.1;
		addOption(option);

		super();
	}
}