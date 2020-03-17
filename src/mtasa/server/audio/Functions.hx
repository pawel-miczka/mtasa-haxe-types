package mtasa.server.audio;

@:native('_G')
extern class Functions {
  /**
		This function plays a frontend sound for the specified player.

		@param thePlayer the player you want the sound to play for.
		@param sound a whole int specifying the sound id to play.

		@see https://wiki.mtasa.com/wiki/PlaySoundFrontEnd
	**/
	static function playSoundFrontEnd(thePlayer:Player, sound:Int):Bool;
}