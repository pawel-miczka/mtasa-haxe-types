package mtasa.server.classes;

import mtasa.server.Variables.RootElement;
import haxe.extern.EitherType;

@:native('Player')
extern class Player {
	/**
		This function will ban the specified player by either IP, serial or username

		@param ip Will player be banned by IP?
		@param username Will player be banned by username?
		@param serial Will player be banned by serial?
		@param responsibleElement The element that is responsible for banning the player. This can be a player or the root (getRootElement()).
		@param reason The reason the player will be banned from the server.
		@param seconds The amount of seconds the player will be banned from the server for. This can be 0 for an infinite amount of time.

		@return Ban object if banned successfully, or false if unsuccessful.

		@see https://wiki.multitheftauto.com/wiki/BanPlayer
	**/
	public function ban(?ip:Bool = true, ?username:Bool = false, ?serial:Bool = false, ?responsibleElement:EitherType<Player, RootElement> = null,
		?reason:String = null, ?seconds:Int = 0):Ban;

	/**
		This function will kick the specified player from the server.

		@param responsibleElement The player that is responsible for the event. Note: If left out as in the second syntax, responsible player for the kick will be "Console" (Maximum 30 characters if using a string).
		@param reason The reason for the kick. (Maximum 64 characters)

		@return True if the player was kicked succesfully, false if invalid arguments are specified.

		@see https://wiki.multitheftauto.com/wiki/KickPlayer
	**/
	@:overload(function(?reason:String):Bool {})
	public function kick(?responsibleElement:EitherType<Player, String>, ?reason:String):Bool;
}
