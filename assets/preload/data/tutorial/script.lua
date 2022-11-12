function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf_err'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-fv'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver-fv'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd-fv'); --put in mods/music/
end
local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 1.4 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 1.4);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'breakfast');
	end
	if tag == 'startPostDialogue' then -- Timer completed, play dialogue
		startDialogue('post-dialogue', 'silence');
	end
end

local seenSecondCutscene = false;

function onEndSong()
	if isStoryMode and not seenSecondCutscene then
		setProperty('inCutscene', true);
		runTimer('startPostDialogue', 0.8);
		seenSecondCutscene = true;
		return Function_Stop;
	end
	return Function_Continue;
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end