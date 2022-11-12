/* 

This is how I did this (Dumb lol)

package editors;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxText;
import flixel.ui.FlxButton;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxAxes;
// Ignore this shit
import org.flixel.FlxU;
import org.flixel.FlxText;

class CalculatorState extends FlxState
{
    // The Thing
    public var Calculator:FlxSprite;
    public var scrnTxt:FlxText;

    // The buttons itself
    var button_num1:FlxButton;
    var button_num2:FlxButton;
    var button_num3:FlxButton;
    var button_num4:FlxButton;
    var button_num5:FlxButton;
    var button_num6:FlxButton;
    var button_num7:FlxButton;
    var button_num8:FlxButton;
    var button_num9:FlxButton;
    var button_num0:FlxButton;
    var button_dot:FlxButton;
    var button_enter:FlxButton;
    var button_plus:FlxButton;
    var button_minus:FlxButton;
    var button_multiply:FlxButton;
    var button_divide:FlxButton;
    var button_moduli:FlxButton;
    var button_exclamation:FlxButton;
    var button_clear:FlxButton;
    var screen_error1:FlxSprite;
    var screen_error2:FlxSprite;
    var screen_error3:FlxSprite;
    var screen_error4:FlxSprite;

    // Input and Output

    public var input:Float = "";
    public var output:Float = input != null;

    // The Fractions ofc

    public var number:Float = 1;
    public var plus:Float = input + input;
    public var minus:Float = input - input;
    public var multiplyby:Float = input * input;
    public var divideby:Float = input / input;
    public var moduloby:Float = input % input;
    public var factor:Float /* = placeholder for now, fuck you = "";
    public var clear:String = "";

    override public function create():Void
    {
        super.create();

        FlxG.camera.zoom == 0.5;

        #if !neko
        FlxG.bgColor = 0xff010208;
        #else
        FlxG.camera.bgColor = {rgb: 0x010208, a: 0xff}
        #end
        FlxG.mouse.show();

        // THE FUCKING 135 YEAR OLD CALCULATOR'S APPEARANCE!!
        Calculator = new FlxSprite().loadGraphic(Paths.image('FUCKING1887CALCULATOR'));
        Calculator.alpha = 0;
        Calculator.screenCenter(X);
        Calculator.screenCenter(Y);

        // The Variables Itself
        button_enter = new FlxButton(644, 648, null, pressenter);
        button_enter.loadGraphic("assets/images/Calculator_assets/calculatorButton_Enter.png", false, false, 240, 119, false);
        
        button_dot = new FlxButton(520, 648, null, dotpressed);
        button_dot.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);
        
        button_num0 = new FlxButton(396, 648, null, pressed0);
        button_num0.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);

        button_num9 = new FlxButton(644, 518, null, pressed9);
        button_num9.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);

        button_num8 = new FlxButton(520, 518, null, pressed8);
        button_num8.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);

        button_num7 = new FlxButton(396, 518, null, pressed7);
        button_num7.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);

        button_num6 = new FlxButton(644, 388, null, pressed6);
        button_num6.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);

        button_num5 = new FlxButton(520, 388, null, pressed5);
        button_num5.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);

        button_num4 = new FlxButton(396, 388, null, pressed4);
        button_num4.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);

        button_num3 = new FlxButton(644, 258, null, pressed3);
        button_num3.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);

        button_num2 = new FlxButton(520, 258, null, pressed2);
        button_num2.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);

        button_num1 = new FlxButton(396, 258, null, pressed1);
        button_num1.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);

        button_moduli = new FlxButton(644, 128, null, modulo);
        button_moduli.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);

        button_exclamation = new FlxButton(520, 128, null, factor);
        button_exclamation.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);

        button_clear = new FlxButton(396, 128, null, clear);
        button_clear.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);

        screen_error1 = new FlxSprite(396, -389).loadGraphic(Paths.image('assets/images/Calculator_assets/screen_codeinvalid'));
        screen_error1.alpha = 0;
        screen_error2 = new FlxSprite(396, -389).loadGraphic(Paths.image('assets/images/Calculator_assets/screen_formaterror'));
        screen_error2.alpha = 0;
        screen_error3 = new FlxSprite(396, -389).loadGraphic(Paths.image('assets/images/Calculator_assets/screen_dividedby0'));
        screen_error3.alpha = 0;
        screen_error4 = new FlxSprite(396, -389).loadGraphic(Paths.image('assets/images/Calculator_assets/screen_inputnumbers'));
        screen_error4.alpha = 0;

        button_plus = new FlxButton(768, 878, null, add);
        button_plus.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);

        button_minus = new FlxButton(768, 748, null, subtract);
        button_minus.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);
        
        button_multiply = new FlxButton(768, 618, null, multiply);
        button_multiply.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);
        
        button_divide = new FlxButton(768, 489, null, divide);
        button_divide.loadGraphic("assets/images/Calculator_assets/calculatorButton.png", false, false, 116, 119, false);
        
        scrnTxt.text = new FlxText();
        scrnTxt.setFormat(Paths.font("vcr.ttf"), 25, FlxColor.YELLOW);
        
        showNumTxt = new FlxText();
        showNumTxt.screenCenter(X);
        showNumTxt.y = 1188;
        showNumTxt.alpha = 0;
        showNumTxt.text = "Show Numbers\n \nPress Enter for Help Instructions.";
        showNumTxt.setFormat(Paths.font("pixel.otf"), 21, FlxColor.BLUE);
    }
        override public function pressenter():Void
    {
        //trace('Button Pressed');
        scrnTxt.text == "placeholder :(";
    }
    override public function pressed0():Void
    {
        //trace('Button Pressed');
        scrnTxt.text == "0";
        input == 0;
        if(input + input) {
            scrnTxt.text == input + "0";
            input + input == 0;
        }
        if(input + input + input) {
            scrnTxt.text == input + input + "0";
            input + input + input == 0;
        }
        if(input + input + input + input) {
            scrnTxt.text == input + input + input + "0";
            input + input + input + input == 0;
        }
        if(input + input + input + input + input) {
            scrnTxt.text == input + input + input + input + "0";
            input + input + input + input + input == 0;
        }
    }
    override public function pressed1():Void
    {
        //trace('Button Pressed');
        scrnTxt.text == "1";
        input == 1;
        if(input + input) {
            scrnTxt.text == input + "1";
            input + input == 1;
        }
        if(input + input + input) {
            scrnTxt.text == input + input + "1";
            input + input + input == 1;
        }
        if(input + input + input + input) {
            scrnTxt.text == input + input + input + "1";
            input + input + input + input == 1;
        }
        if(input + input + input + input + input) {
            scrnTxt.text == input + input + input + input + "1";
            input + input + input + input + input == 1;
        }
    }
    override public function pressed2():Void
    {
        //trace('Button Pressed');
        scrnTxt.text == "2";
        input == 2;
        if(input + input) {
            scrnTxt.text == input + "2";
            input + input == 2;
        }
        if(input + input + input) {
            scrnTxt.text == input + input + "2";
            input + input + input == 2;
        }
        if(input + input + input + input) {
            scrnTxt.text == input + input + input + "2";
            input + input + input + input == 2;
        }
        if(input + input + input + input + input) {
            scrnTxt.text == input + input + input + input + "2";
            input + input + input + input + input == 2;
        }
    }
    override public function pressed3():Void
    {
        //trace('Button Pressed');
        scrnTxt.text == "3";
        input == 3;
        if(input + input) {
            scrnTxt.text == input + "3";
            input + input == 3;
        }
        if(input + input + input) {
            scrnTxt.text == input + input + "3";
            input + input + input == 3;
        }
        if(input + input + input + input) {
            scrnTxt.text == input + input + input + "3";
            input + input + input + input == 3;
        }
        if(input + input + input + input + input) {
            scrnTxt.text == input + input + input + input + "3";
            input + input + input + input + input == 3;
        }
    }
    override public function pressed4():Void
    {
        //trace('Button Pressed');
        scrnTxt.text == "4";
        input == 4;
        if(input + input) {
            scrnTxt.text == input + "4";
            input + input == 4;
        }
        if(input + input + input) {
            scrnTxt.text == input + input + "4";
            input + input + input == 4;
        }
        if(input + input + input + input) {
            scrnTxt.text == input + input + input + "4";
            input + input + input + input == 4;
        }
        if(input + input + input + input + input) {
            scrnTxt.text == input + input + input + input + "4";
            input + input + input + input + input == 4;
        }
    }
    override public function pressed0():Void
    {
        //trace('Button Pressed');
        scrnTxt.text == "5";
        input == 5;
        if(input + input) {
            scrnTxt.text == input + "5";
            input + input == 5;
        }
        if(input + input + input) {
            scrnTxt.text == input + input + "5";
            input + input + input == 5;
        }
        if(input + input + input + input) {
            scrnTxt.text == input + input + input + "5";
            input + input + input + input == 5;
        }
        if(input + input + input + input + input) {
            scrnTxt.text == input + input + input + input + "5";
            input + input + input + input + input == 5;
        }
    }
    override public function pressed6():Void
    {
        //trace('Button Pressed');
        scrnTxt.text == "6";
        input == 6;
        if(input + input) {
            scrnTxt.text == input + "6";
            input + input == 6;
        }
        if(input + input + input) {
            scrnTxt.text == input + input + "6";
            input + input + input == 6;
        }
        if(input + input + input + input) {
            scrnTxt.text == input + input + input + "6";
            input + input + input + input == 6;
        }
        if(input + input + input + input + input) {
            scrnTxt.text == input + input + input + input + "6";
            input + input + input + input + input == 6;
        }
    }
    override public function pressed7():Void
    {
        //trace('Button Pressed');
        scrnTxt.text == "7";
        input == 7;
        if(input + input) {
            scrnTxt.text == input + "7";
            input + input == 7;
        }
        if(input + input + input) {
            scrnTxt.text == input + input + "7";
            input + input + input == 7;
        }
        if(input + input + input + input) {
            scrnTxt.text == input + input + input + "7";
            input + input + input + input == 7;
        }
        if(input + input + input + input + input) {
            scrnTxt.text == input + input + input + input + "7";
            input + input + input + input + input == 7;
        }
    }
    override public function pressed8():Void
    {
        //trace('Button Pressed');
        scrnTxt.text == "8";
        input == 8;
        if(input + input) {
            scrnTxt.text == input + "8";
            input + input == 8;
        }
        if(input + input + input) {
            scrnTxt.text == input + input + "8";
            input + input + input == 8;
        }
        if(input + input + input + input) {
            scrnTxt.text == input + input + input + "8";
            input + input + input + input == 8;
        }
        if(input + input + input + input + input) {
            scrnTxt.text == input + input + input + input + "8";
            input + input + input + input + input == 8;
        }
    }
    override public function pressed9():Void
    {
        //trace('Button Pressed');
        scrnTxt.text == "9";
        input == 9;
        if(input + input) {
            scrnTxt.text == input + "9";
            input + input == 9;
        }
        if(input + input + input) {
            scrnTxt.text == input + input + "9";
            input + input + input == 9;
        }
        if(input + input + input + input) {
            scrnTxt.text == input + input + input + "9";
            input + input + input + input == 9;
        }
        if(input + input + input + input + input) {
            scrnTxt.text == input + input + input + input + "9";
            input + input + input + input + input == 9;
        }
    }
    override public function dotpressed():Void
    {
        //trace('Button Pressed');
        scrnTxt.text == ".";
    }


    //|||||||||||||||||||||||||||||||||||||||||||||||||||||


    // Fractions, Hooray!!

    override public function plus():Void
    {
        if(input == number && plus)
        //trace('Button Pressed');
        scrnTxt.text == " + ";
    }
    
    override public function minus():Void
    {
        if(input == number && minus)
        //trace('Button Pressed');
        scrnTxt.text == " - ";
    }

    override public function multiply():Void
    {
        if(input == number && multiplyby)
        //trace('Button Pressed');
        scrnTxt.text == " × ";
    }

    override public function divide():Void
    {
        if(input == number && divideby)
        //trace('Button Pressed');
        scrnTxt.text == " ÷ ";
    }
    
    override public function modulo():Void
    {
        if(input == number && moduloby)
        //trace('Button Pressed');
        scrnTxt.text == " % ";
    }

    override public function factor():Void
    {
        if(input == number && factor)
        //trace('Button Pressed');
        scrnTxt.text == " ! ";
    }


    //|||||||||||||||||||||||||||||||||||||||||||||||||||||


    override public function new():Void {

        // The Input and Output Fractors (play with this if you are bored or if you don't know what you're doing don't)

    // 1 Digit

            if(input + plus) {
                scrnTxt.text == number + plus + input;
            }
            if(input + minus) {
                scrnTxt.text == number + minus + input;
            }
            if(input + multiplyby) {
            scrnTxt.text == number + multiplyby + input;
            }
            if(input + divideby) {
            scrnTxt.text == number + divideby + input;
            }
            if(input + moduloby) {
            scrnTxt.text == number + moduloby + input;
            }

        // 2 Digit

            if(input + input + plus) {
                scrnTxt.text == number + plus + input;
            }
            if(input + input + minus) {
                scrnTxt.text == number + minus + input;
            }
            if(input + input + multiplyby) {
                scrnTxt.text == number + multiplyby + input;
            }
            if(input + input + divideby) {
                scrnTxt.text == number + divideby + input;
            }
            if(input + input + moduloby) {
                scrnTxt.text == number + moduloby + input;
            }

        // 3 Digit

            if(input + input + input + plus) {
                scrnTxt.text == number + plus + input;
            }
            if(input + input + input + minus) {
                scrnTxt.text == number + minus + input;
            }
            if(input + input + input + multiplyby) {
                scrnTxt.text == number + multiplyby + input;
            }
            if(input + input + input + divideby) {
                scrnTxt.text == number + divideby + input;
            }
            if(input + input + input + moduloby) {
                scrnTxt.text == number + moduloby + input;
            }

        // 4 Digit

            if(input + input + input + input + plus) {
                scrnTxt.text == number + plus + input;
            }
            if(input + input + input + input + minus) {
                scrnTxt.text == number + minus + input;
            }
            if(input + input + input + input + multiplyby) {
                scrnTxt.text == number + multiplyby + input;
            }
            if(input + input + input + input + divideby) {
                scrnTxt.text == number + divideby + input;
            }
            if(input + input + input + input + moduloby) {
                scrnTxt.text == number + moduloby + input;
            }

        // 5 Digit (MAX)

            if(input + input + input + input + input + plus) {
                scrnTxt.text == number + plus + input;
            }
            if(input + input + input + input + input + minus) {
                scrnTxt.text == number + minus + input;
            }
            if(input + input + input + input + input + multiplyby) {
                scrnTxt.text == number + multiplyby + input;
            }
            if(input + input + input + input + input + divideby) {
            scrnTxt.text == number + divideby + input;
            }
            if(input + input + input + input + input + moduloby) {
                scrnTxt.text == number + moduloby + input;
            }
        }

    // Error screens shit bcuz why not

    if(input == "") {
        FlxG.sound.play(Paths.sound('Calculator/result_buzz'));
        FlxG.camera.shake(0.0025, 0.1, null, true, FlxAxes.X);
        screen_error4.alpha = 1;
        FlxTween.tween(screen_error4, {alpha: 0}, 1.44, {ease: FlxEase.linear, startDelay: 1.72});
    }
    if(input + divideby + number == "0") {
        FlxG.sound.play(Paths.sound('Calculator/result_buzz'));
        FlxG.camera.shake(0.0025, 0.1, null, true, FlxAxes.X);
        screen_error3.alpha = 1;
        FlxTween.tween(screen_error3, {alpha: 0}, 1.44, {ease: FlxEase.linear, startDelay: 1.72});
    }
    if(input == null
    && number == null
    && output || moduloby
    && number || !input
    && input + minus + moduloby + number += "0") {
        FlxG.sound.play(Paths.sound('Calculator/result_buzz'));
        FlxG.camera.shake(0.0025, 0.1, null, true, FlxAxes.X);
        screen_error2.alpha = 1;
        FlxTween.tween(screen_error2, {alpha: 0}, 1.44, {ease: FlxEase.linear, startDelay: 1.72});
    }

    // Thing after you press enter if you both subtract and moduly the zero

    if(input + minus + moduloby + number += "0") {
        // This is a placeholder, TBA
    }

    override public function cleared():Void
    {
        scrnTxt.text = "";
    }

    override public function destroy():Void
    {
        super.destroy();
    }
    override public function update():Void
    {
        super.update();
        FlxTween.tween(showNumTxt, {alpha: 1}, 0.85, {ease: FlxEase.cubeInOut, startDelay: 1.33});
    }
}
*/