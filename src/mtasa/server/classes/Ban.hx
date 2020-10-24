package mtasa.server.classes;

import mtasa.server.Variables.RootElement;
import haxe.extern.EitherType;

@:native('Ban')
extern class Ban {
	var admin:String;
	var ip:String;
	var nick:String;
	var reason:String;
	var serial:String;
	var time:Int;
	var unbanTime:Int;

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
	static function create(?ip:String, ?username:String, ?serial:String, ?responsibleElement:EitherType<Player, RootElement> = null, ?reason:String = null,
		?seconds:Int = 0):Ban;

	/**
		This function will return a table containing all the bans present in the server's banlist.xml.

		@return Table containing all the bans.

		@see https://wiki.multitheftauto.com/wiki/GetBans
	**/
	static function getList():lua.Table<Int, Ban>;

	/**
		This function will return the responsible admin (nickname of the admin) of the specified ban.

		@return String of the admin if everything was successful, false if invalid arguments are specified if there was no admin specified for the ban.

		@see https://wiki.multitheftauto.com/wiki/GetBanAdmin
	**/
	public function getAdmin():String;

	/**
		This function will return the IP of the specified ban.

		@return String of the IP if everything was successful, false if invalid arguments are specified if there was no IP specified for the ban

		@see https://wiki.multitheftauto.com/wiki/GetBanIP
	**/
	public function getIP():String;

	/**
		This function will return the nickname (nickname that the player had when he was banned) of the specified ban.

		@return	String of the nickname if everything was successfull, false if invalid arguments are specified if there was no nickname specified for the ban element.

		@see https://wiki.multitheftauto.com/wiki/GetBanNick
	**/
	public function getNick():String;

	/**
		This function will return the ban reason of the specified ban.

		@return String of the reason if everything was successful, false if invalid arguments are specified if there was no reason specified for the ban.

		@see https://wiki.multitheftauto.com/wiki/GetBanReason
	**/
	public function getReason():String;

	/**
		This function will return the serial of the specified ban.

		@return String of the serial if everything was successful, false if invalid arguments are specified or if there was no serial specified for the ban.

		@see https://wiki.multitheftauto.com/wiki/GetBanSerial
	**/
	public function getSerial():String;

	/**
		This function will return the time the specified ban was created, in seconds.

		@return Integer of the banning time in the format of seconds from the year 1970. Use in conjunction with getRealTime in order to retrieve detailed information.

		@see https://wiki.multitheftauto.com/wiki/GetBanTime
	**/
	public function getTime():Int;

	/**
		This function will return the unbanning time of the specified ban in seconds.

		@return Integer of the unbanning time in the format of seconds from the year 1970. Use in conjunction with getRealTime in order to retrieve detailed information.

		@see https://wiki.multitheftauto.com/wiki/GetUnbanTime
	**/
	public function getUnbanTime():Int;

	/**
		This function sets a new admin for a ban.

		@param admin The new admin

		@return True if changed, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/KickPlayer
	**/
	public function setAdmin(admin:String):Bool;

	/**
		This function sets a new nick for a ban.

		@param nick A string representing the nick you want to set the ban to.

		@return True if changed, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/SetBanNick
	**/
	public function setNick(nick:String):Bool;

	/**
		This function sets the reason for the specified ban.

		@param reason the new reason (max 60 characters).

		@return True if the new reason was set successfully, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/SetBanReason
	**/
	public function setReason(reason:String):Bool;

	/**
		This function sets a new unban time of a given ban using unix timestamp (seconds since Jan 01 1970).

		@param time the new unban time

		@return True if changed successfully, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/SetUnbanTime
	**/
	public function setUnbanTime(time:Int):Bool;

	/**
		This function will remove a specific ban.

		@param responsibleElement The element that is responsible for removing the ban element. This can be a player or the root (getRootElement()).

		@return True if the ban was removed succesfully, false if invalid arguments are specified.

		@see https://wiki.multitheftauto.com/wiki/RemoveBan
	**/
	public function remove(?responsiblElement:EitherType<Player, RootElement> = null):Bool;

	/**
		This function will reload the server ban list file.

		@return True if the ban list was reloaded successfully, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/ReloadBans
	**/
	static function reload():Bool;
}
