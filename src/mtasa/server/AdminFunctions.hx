package mtasa.server;

import mtasa.server.Variables.RootElement;
import haxe.extern.EitherType;
import mtasa.server.classes.Player;
import mtasa.server.classes.Ban;

@:native('_G')
extern class AdminFunctions {
	/**
		This function will add a ban for the specified IP/username/serial to the server.

		@param ip The IP to be banned. If you don't want to ban by IP, set this to nil.
		@param username The MTA Community username to be banned (now obsolete). If you don't want to ban by username, set this to nil
		@param serial The serial to be banned. If you don't want to ban by serial, set this to nil.
		@param responsibleElement The element that is responsible for banning the IP/username/serial. This can be a player or the root (getRootElement()).
		@param reason The reason the IP/username/serial will be banned from the server.
		@param seconds The amount of seconds the player will be banned from the server for. This can be 0 for an infinite amount of time.

		@return Ban if the IP/username/serial was banned successfully, false if invalid arguments are specified.

		@see https://wiki.multitheftauto.com/wiki/AddBan
	**/
	static function addBan(?ip:String, ?username:String, ?serial:String, ?responsibleElement:EitherType<Player, RootElement> = null, ?reason:String = null,
		?seconds:Int = 0):Ban;

	/**
		This function will ban the specified player by either IP, serial or username

		@param player The player that will be banned from the server.
		@param ip Will player be banned by IP?
		@param username Will player be banned by username?
		@param serial Will player be banned by serial?
		@param responsibleElement The element that is responsible for banning the player. This can be a player or the root (getRootElement()).
		@param reason The reason the player will be banned from the server.
		@param seconds The amount of seconds the player will be banned from the server for. This can be 0 for an infinite amount of time.

		@return Ban object if banned successfully, or false if unsuccessful.

		@see https://wiki.multitheftauto.com/wiki/BanPlayer
	**/
	static function banPlayer(player:Player, ?ip:Bool = true, ?username:Bool = false, ?serial:Bool = false,
		?responsibleElement:EitherType<Player, RootElement> = null, ?reason:String = null, ?seconds:Int = 0):Ban;

	/**
		This function will return the responsible admin (nickname of the admin) of the specified ban.

		@param ban The ban you want to return the admin of.

		@return String of the admin if everything was successful, false if invalid arguments are specified if there was no admin specified for the ban.

		@see https://wiki.multitheftauto.com/wiki/GetBanAdmin
	**/
	static function getBanAdmin(ban:Ban):String;

	/**
		This function will return the IP of the specified ban.

		@param ban The ban in which you want to return the IP of.

		@return String of the IP if everything was successful, false if invalid arguments are specified if there was no IP specified for the ban

		@see https://wiki.multitheftauto.com/wiki/GetBanIP
	**/
	static function getBanIP(ban:Ban):String;

	/**
		This function will return the nickname (nickname that the player had when he was banned) of the specified ban.

		@param ban The ban element which nickname you want to return.

		@return	String of the nickname if everything was successfull, false if invalid arguments are specified if there was no nickname specified for the ban element.

		@see https://wiki.multitheftauto.com/wiki/GetBanNick
	**/
	static function getBanNick(ban:Ban):String;

	/**
		This function will return the ban reason of the specified ban.

		@param ban The ban in which you want to return the reason of.

		@return String of the reason if everything was successful, false if invalid arguments are specified if there was no reason specified for the ban.

		@see https://wiki.multitheftauto.com/wiki/GetBanReason
	**/
	static function getBanReason(ban:Ban):String;

	/**
		This function will return the serial of the specified ban.

		@param ban The ban you want to retrieve the serial of.

		@return String of the serial if everything was successful, false if invalid arguments are specified or if there was no serial specified for the ban.

		@see https://wiki.multitheftauto.com/wiki/GetBanSerial
	**/
	static function getBanSerial(ban:Ban):String;

	/**
		This function will return the time the specified ban was created, in seconds.

		@param ban The ban of which you wish to retrieve the time of.

		@return Integer of the banning time in the format of seconds from the year 1970. Use in conjunction with getRealTime in order to retrieve detailed information.

		@see https://wiki.multitheftauto.com/wiki/GetBanTime
	**/
	static function getBanTime(ban:Ban):Int;

	/**
		This function will return a table containing all the bans present in the server's banlist.xml.

		@return Table containing all the bans.

		@see https://wiki.multitheftauto.com/wiki/GetBans
	**/
	static function getBans():lua.Table<Int, Ban>;

	/**
		This function will return the unbanning time of the specified ban in seconds.

		@param ban The ban in which you wish to retrieve the unban time of.

		@return Integer of the unbanning time in the format of seconds from the year 1970. Use in conjunction with getRealTime in order to retrieve detailed information.

		@see https://wiki.multitheftauto.com/wiki/GetUnbanTime
	**/
	static function getUnbanTime():Int;

	/**
		This function checks whether the passed value is valid ban or not.

		@param ban The value to check

		@return True if the value is a ban, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/IsBan
	**/
	static function isBan(ban:Ban):Bool;

	/**
		This function will kick the specified player from the server.

		@param player The player that will be kicked from the server
		@param responsibleElement The player that is responsible for the event. Note: If left out as in the second syntax, responsible player for the kick will be "Console" (Maximum 30 characters if using a string).
		@param reason The reason for the kick. (Maximum 64 characters)

		@return True if the player was kicked succesfully, false if invalid arguments are specified.

		@see https://wiki.multitheftauto.com/wiki/KickPlayer
	**/
	@:overload(function(player:Player, ?reason:String):Bool {})
	static function kickPlayer(player:Player, ?responsibleElement:EitherType<Player, String>, ?reason:String):Bool;

	/**
		This function sets a new admin for a ban.

		@param ban The ban you want to change the admin of.
		@param admin The new admin

		@return True if changed, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/KickPlayer
	**/
	static function setBanAdmin(ban:Ban, admin:String):Bool;

	/**
		This function sets a new nick for a ban.

		@param ban The ban you want to change the nick of.
		@param nick A string representing the nick you want to set the ban to.

		@return True if changed, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/SetBanNick
	**/
	static function setBanNick(ban:Ban, nick:String):Bool;

	/**
		This function sets the reason for the specified ban.

		@param ban The ban that you wish to set the reason of.
		@param reason the new reason (max 60 characters).

		@return True if the new reason was set successfully, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/SetBanReason
	**/
	static function setBanReason(ban:Ban, reason:String):Bool;

	/**
		This function sets a new unban time of a given ban using unix timestamp (seconds since Jan 01 1970).

		@param ban The ban of which to change the unban time of
		@param time the new unban time

		@return True if changed successfully, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/SetUnbanTime
	**/
	static function setUnbanTime(ban:Ban, time:Int):Bool;

	/**
		This function will reload the server ban list file.

		@return True if the ban list was reloaded successfully, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/ReloadBans
	**/
	static function reloadBans():Bool;

	/**
		This function will remove a specific ban.

		@param ban The ban to be removed.
		@param responsibleElement The element that is responsible for removing the ban element. This can be a player or the root (getRootElement()).

		@return True if the ban was removed succesfully, false if invalid arguments are specified.

		@see https://wiki.multitheftauto.com/wiki/RemoveBan
	**/
	static function removeBan(ban:Ban, ?responsiblElement:EitherType<Player, RootElement> = null):Bool;
}
