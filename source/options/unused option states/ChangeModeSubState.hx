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

class ChangeModeSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Game Changer';
		rpcTitle = 'Game Changers menu'; //for Discord Rich Presence

		//I FUCKING STOLE THIS CREDIT TO EITO GO SEARCH "EIT0 GITHUB"!!11!1!
		var option:Option = new Option('Easy Mode',
			'If checked, Disables Gameplay Mechanics that you don not have to worry about.',
			'easyMode',
			'bool',
			false);
		addOption(option);

		var option:Option = new Option('Fucked Mode',
			'If checked, will have some fucking Corrupted Modchart.',
			'fuckedMode',
			'bool',
			true);
		addOption(option);

		super();
	}
}
