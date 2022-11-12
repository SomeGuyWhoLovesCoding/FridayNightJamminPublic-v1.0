package;
 
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.FlxG;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.addons.ui.FlxUIInputText;
import flixel.addons.ui.FlxUIText;

/**

 * Playable Calculator in FNF!! (Tool)

 * @author SomeGuyWhoLikesFNF

*/

class Calculator extends MusicBeatState
{
    override public function create():Void
    {

        super.create();
        FlxG.camera.bgColor = 0xFF030006;
        FlxG.mouse.visible = true;

        FlxG.sound.music.fadeIn(0.44, 0.7, 0);

        // The Calculator for the fuck of it

        var calculator:FlxSprite = new FlxSprite().loadGraphic(Paths.image('calculator'));
		calculator.screenCenter(X);
        calculator.screenCenter(Y);
        add(calculator);


        // The Screen itself

        var screenTxt:FlxText = new FlxText(366, 51, 0, "Friday Night Jammin v1.0 [Official Release]", 26);
        screenTxt.setFormat("VCR OSD Mono", 12, FlxColor.GRAY);
        add(screenTxt);


        // A List of buttons we need here because yes

        var pieceExit:FlxButton = new FlxButton(346, 206, "", onExit);
        pieceExit.loadGraphic("assets/images/Calculator_assets/button-critical_assets.png", true, 116, 120);
        add(pieceExit);

        var pieceClear:FlxButton = new FlxButton(464, 206, "", onClear);
        pieceClear.loadGraphic("assets/images/Calculator_assets/button-important_assets.png", true, 116, 120);
        add(pieceClear);

        var pieceMemc:FlxButton = new FlxButton(582, 206, "", onClearMemory);
        pieceMemc.loadGraphic("assets/images/Calculator_assets/button-important_assets.png", true, 116, 120);
        add(pieceMemc);

        var zeropiece:FlxButton = new FlxButton(699, 206, "", on0Clicked);
        zeropiece.loadGraphic("assets/images/Calculator_assets/button-important_assets.png", true, 116, 120);
        add(zeropiece);

        var piecemultiply:FlxButton = new FlxButton(818, 206, "", onFraction);
        piecemultiply.loadGraphic("assets/images/Calculator_assets/button-contrast_assets.png", true, 116, 120);
        add(piecemultiply);

        var piecesubtract:FlxButton = new FlxButton(818, 327, "", onFraction);
        piecesubtract.loadGraphic("assets/images/Calculator_assets/button-contrast_assets.png", true, 116, 120);
        add(piecesubtract);

        var pieceplus:FlxButton = new FlxButton(818, 448, "", onFraction);
        pieceplus.loadGraphic("assets/images/Calculator_assets/button-contrast_assets.png", true, 116, 120);
        add(pieceplus);

        var pieceenter:FlxButton = new FlxButton(818, 569, "", onEnter);
        pieceenter.loadGraphic("assets/images/Calculator_assets/button-contrast_assets.png", true, 116, 120);
        add(pieceenter);

        var piecedot:FlxButton = new FlxButton(582, 569, "", onFraction);
        piecedot.loadGraphic("assets/images/Calculator_assets/button_assets.png", true, 116, 120);
        add(piecedot);

        var piecebracketright:FlxButton = new FlxButton(464, 569, "", onFraction);
        piecebracketright.loadGraphic("assets/images/Calculator_assets/button_assets.png", true, 116, 120);
        add(piecebracketright);

        var piecebracketleft:FlxButton = new FlxButton(346, 569, "", onFraction);
        piecebracketleft.loadGraphic("assets/images/Calculator_assets/button_assets.png", true, 116, 120);
        add(piecebracketleft);

        var sevenpiece:FlxButton = new FlxButton(346, 448, "", onSevenClicked);
        sevenpiece.loadGraphic("assets/images/Calculator_assets/button_assets.png", true, 116, 120);
        add(sevenpiece);

        var eightpiece:FlxButton = new FlxButton(464, 448, "", onEightClicked);
        eightpiece.loadGraphic("assets/images/Calculator_assets/button_assets.png", true, 116, 120);
        add(eightpiece);

        var ninepiece:FlxButton = new FlxButton(582, 448, "", onNineClicked);
        ninepiece.loadGraphic("assets/images/Calculator_assets/button_assets.png", true, 116, 120);
        add(ninepiece);

        var fourpiece:FlxButton = new FlxButton(346, 327, "", onFourClicked);
        fourpiece.loadGraphic("assets/images/Calculator_assets/button_assets.png", true, 116, 120);
        add(fourpiece);

        var fivepiece:FlxButton = new FlxButton(464, 327, "", onFiveClicked);
        fivepiece.loadGraphic("assets/images/Calculator_assets/button_assets.png", true, 116, 120);
        add(fivepiece);

        var sixpiece:FlxButton = new FlxButton(582, 327, "", onSixClicked);
        sixpiece.loadGraphic("assets/images/Calculator_assets/button_assets.png", true, 116, 120);
        add(sixpiece);

        var onepiece:FlxButton = new FlxButton(699, 327, "", onOneClicked);
        onepiece.loadGraphic("assets/images/Calculator_assets/button_assets.png", true, 116, 120);
        add(onepiece);

        var twopiece:FlxButton = new FlxButton(699, 448, "", onTwoClicked);
        twopiece.loadGraphic("assets/images/Calculator_assets/button_assets.png", true, 116, 120);
        add(twopiece);

        var threepiece:FlxButton = new FlxButton(699, 569, "", onThreeClicked);
        threepiece.loadGraphic("assets/images/Calculator_assets/button_assets.png", true, 116, 120);
        add(threepiece);


        // The Text (Ofc)

        var buttontxt:FlxSprite = new FlxSprite().loadGraphic(Paths.image('Calculator_assets/buttonlist_txt'));
        buttontxt.screenCenter(X);
        buttontxt.screenCenter(Y);
        add(buttontxt);


        // OK THAT IS A FUCKING DUMB ASS IDEA

        /*
        var numbersPressed:String = onOneClicked + onTwoClicked + onThreeClicked
        + onFourClicked + onFiveClicked + onSixClicked
        + onSevenClicked + onEightClicked + onNineClicked
        + on0Clicked + onFraction + onEnter;

        var input:FlxUIInputText = new FlxUIInputText(0, 92, 500, numbersPressed, 44, FlxColor.CYAN, FlxColor.BLACK);
        input.setFormat("VCR OSD Mono", 44);
		input.screenCenter(X);
		add(input);
        */

    }
    function onClick():Void
    {
        trace('test');
        FlxG.sound.play(Paths.sound('Calculator/Calculator_other'), 0.85);
    }

    function onOneClicked():Void
    {
        trace('1');
        FlxG.sound.play(Paths.sound('Calculator/Calculator_num1'), 0.85);
        FlxG.sound.play(Paths.sound('Calculator/Calculator_inputadd'), 0.44);
    }

    function onTwoClicked():Void
    {
        trace('2');
        FlxG.sound.play(Paths.sound('Calculator/Calculator_num2'), 0.85);
        FlxG.sound.play(Paths.sound('Calculator/Calculator_inputadd'), 0.44);
    }

    function onThreeClicked():Void
    {
        trace('3');
        FlxG.sound.play(Paths.sound('Calculator/Calculator_num3'), 0.85);
        FlxG.sound.play(Paths.sound('Calculator/Calculator_inputadd'), 0.44);
    }

    function onFourClicked():Void
    {
        trace('4');
        FlxG.sound.play(Paths.sound('Calculator/Calculator_num4'), 0.85);
        FlxG.sound.play(Paths.sound('Calculator/Calculator_inputadd'), 0.44);
    }

    function onFiveClicked():Void
    {
        trace('5');
        FlxG.sound.play(Paths.sound('Calculator/Calculator_num5'), 0.85);
        FlxG.sound.play(Paths.sound('Calculator/Calculator_inputadd'), 0.44);
    }

    function onSixClicked():Void
    {
        trace('6');
        FlxG.sound.play(Paths.sound('Calculator/Calculator_num6'), 0.85);
        FlxG.sound.play(Paths.sound('Calculator/Calculator_inputadd'), 0.44);
    }

    function onSevenClicked():Void
    {
        trace('7');
        FlxG.sound.play(Paths.sound('Calculator/Calculator_num7'), 0.85);
        FlxG.sound.play(Paths.sound('Calculator/Calculator_inputadd'), 0.44);
    }

    function onEightClicked():Void
    {
        trace('8');
        FlxG.sound.play(Paths.sound('Calculator/Calculator_num8'), 0.85);
        FlxG.sound.play(Paths.sound('Calculator/Calculator_inputadd'), 0.44);
    }

    function onNineClicked():Void
    {
        trace('9');
        FlxG.sound.play(Paths.sound('Calculator/Calculator_num9'), 0.85);
        FlxG.sound.play(Paths.sound('Calculator/Calculator_inputadd'), 0.44);
    }

    function on0Clicked():Void
    {
        trace('0');
        FlxG.sound.play(Paths.sound('Calculator/Calculator_other'), 0.85);
        FlxG.sound.play(Paths.sound('Calculator/Calculator_inputadd'), 0.44);
    }

    function onClear():Void
    {
        trace('INPUT CLEARED');
        FlxG.sound.play(Paths.sound('Calculator/Calculator_num4'), 0.85);
    }

    function onClearMemory():Void
    {
        trace('HISTORY CLEARED');
        FlxG.sound.play(Paths.sound('Calculator/Calculator_num7'), 0.85);
    }

    function onExit():Void
    {
        trace('Exited to The Main Menu');
        FlxG.sound.music.fadeIn(0.44, 0, 0.7);
        FlxG.mouse.visible = false;
        MusicBeatState.switchState(new MainMenuState());
    }

    function onEnter():Void
    {
        FlxG.sound.play(Paths.sound('Calculator/result_enter'), 0.85);
    }

    function onFraction():Void
    {
        FlxG.sound.play(Paths.sound('Calculator/Calculator_num2'), 0.85);
        FlxG.sound.play(Paths.sound('Calculator/Calculator_inputadd'), 0.44);
    }

    override public function destroy():Void
    {
        super.destroy();
    }
}