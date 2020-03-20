package mtasa.server.admin;

import mtasa.server.classes.Ban;

@:native('_G')
extern class Functions {
  /**
		This function will add a ban for the specified IP/username/serial to the server.

		@see https://wiki.mtasa.com/wiki/AddBan
	**/
	static function addBan(?IP:String, ?username:String, ?serial:String, ?responsibleElement:Player, ?reason:String, ?seconds:Int):Ban;

	/**
		This function will ban the specified player by either IP, serial or username

		@see https://wiki.mtasa.com/wiki/BanPlayer
	**/
	static function banPlayer(bannedPlayer:Player, ?IP:Bool, ?username:Bool, ?serial:Bool, ?responsiblePlayer:Player, ?reason:String, ?seconds:Int):Ban;

	/**
		This function will return the responsible admin (nickname of the admin) of the specified ban.

		@see https://wiki.mtasa.com/wiki/GetBanAdmin
	**/
	static function getBanAdmin(theBan:Ban):String;

	/**
		This function will return the IP of the specified ban.

		@see https://wiki.mtasa.com/wiki/GetBanIP
	**/
	static function getBanIP(theBan:Ban):String;

	/**
		This function will return the nickname (nickname that the player had when he was banned) of the specified ban.

		@see https://wiki.mtasa.com/wiki/GetBanNick
	**/
	static function getBanNick(theBan:Ban):String;

	/**
		This function will return the ban reason of the specified ban.

		@see https://wiki.mtasa.com/wiki/GetBanReason
	**/
	static function getBanReason(theBan:Ban):String;

	/**
		This function will return the serial of the specified ban.

		@see https://wiki.mtasa.com/wiki/GetBanSerial
	**/
	static function getBanSerial(theBan:Ban):String;

	/**
		This function will return the time the specified ban was created, in seconds.

		@see https://wiki.mtasa.com/wiki/GetBanTime
	**/
	static function getBanTime(theBan:Ban):Int;

	/**
		This function will return the username of the specified ban.Returns a string of the username if everything was successful, false if invalid arguments are specified if there was no username specified for the ban.

		@see https://wiki.mtasa.com/wiki/GetBanUsername
	**/
	static function getBanUsername(theBan:Ban):String;

	/**
		This function will return a table containing all the bans present in the server's banlist.xml.

		@see https://wiki.mtasa.com/wiki/GetBans
	**/
	static function getBans():lua.Table<Int, Ban>;

	/**
		This function will return the unbanning time of the specified ban in seconds.

		@see https://wiki.mtasa.com/wiki/GetUnbanTime
	**/
	static function getUnbanTime(theBan:Ban):Int;

	/**
		This function checks whether the passed value is valid ban or not.Returns true if the value is a ban, false otherwise.

		@see https://wiki.mtasa.com/wiki/IsBan
	**/
	static function isBan(theBan:Ban):Bool;

	/**
		This function will kick the specified player from the server.

		@see https://wiki.mtasa.com/wiki/KickPlayer
	**/
	static function kickPlayer(player:Player, ?responsiblePlayer:Player, ?reason:String):Bool;

	/**
		This function sets a new admin for a ban.

		@see https://wiki.mtasa.com/wiki/SetBanAdmin
	**/
	static function setBanAdmin(theBan:Ban, theAdmin:String):Void;

	/**
		This function sets a new nick for a ban.

		@see https://wiki.mtasa.com/wiki/SetBanNick
	**/
	static function setBanNick(theBan:Ban, theNick:String):Bool;

	/**
		This function sets the reason for the specified ban.

		@see https://wiki.mtasa.com/wiki/SetBanReason
	**/
	static function setBanReason(theBan:Ban, reason:String):Bool;

	/**
		This function sets a new unban time of a given ban using unix timestamp (seconds since Jan 01 1970).

		@see https://wiki.mtasa.com/wiki/SetUnbanTime
	**/
	static function setUnbanTime(theBan:Ban, time:Int):Bool;

	/**
		This function will reload the server ban list file.Returns true if the ban list was reloaded successfully, false otherwise.

		@see https://wiki.mtasa.com/wiki/ReloadBans
	**/
	static function reloadBans():Bool;

	/**
		This function will remove a specific ban.

		@see https://wiki.mtasa.com/wiki/RemoveBan
	**/
	static function removeBan(theBan:Ban, ?responsibleElement:Player):Bool; //TODO: add root as responsible element
}