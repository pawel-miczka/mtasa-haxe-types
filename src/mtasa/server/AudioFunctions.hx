package mtasa.server;

import mtasa.server.classes.Player;

@:native('_G')
extern class AudioFunctions {
	/**
		This function plays a frontend sound for the specified player.

		@param player the player you want the sound to play for.
		@param sound a whole int specifying the sound id to play.

		@return true if the sound was successfully played, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/PlaySoundFrontEnd
	**/
	static function playSoundFrontEnd(player:Player, sound:Int):Bool;
}
