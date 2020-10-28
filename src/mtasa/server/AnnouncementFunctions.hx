package mtasa.server;

@:native('_G')
extern class AnnouncementFunctions {
	/**
		This function retrieves the current gametype as set by setGameType. The game type is displayed in the server browser next to the server's name.

		@return gametype as a string. If no gametype is set it returns null.

		@see https://wiki.multitheftauto.com/wiki/GetGameType
	**/
	static function getGameType():String;

	/**
		This function retrieves the current mapname as set by setMapName.

		@return	mapname as a string. If no mapname is set it returns null.

		@see https://wiki.multitheftauto.com/wiki/GetMapName
	**/
	static function getMapName():String;

	/**
		This function gets a rule value. A rule value is a string that can be viewed by server browsers and used for filtering the server list.

		@param key The name of the rule

		@return string containing the value set for the specified key, false if invalid arguments were specified.

		@see https://wiki.multitheftauto.com/wiki/GetRuleValue
	**/
	static function getRuleValue(key:String):String;

	/**
		This function removes a set rule value that can be viewed by server browsers.

		@param key The name of the rule you wish to remove

		@return true if the rule value was removed, false if it failed.

		@see https://wiki.multitheftauto.com/wiki/RemoveRuleValue
	**/
	static function removeRuleValue(key:String):Bool;

	/**
		This function sets a string containing a name for the game type. This should be the game-mode that is active, for example "Capture The Flag" or "Deathmatch".

		@param gameType A string containing a name for the game mode, or false to clear it.

		@return true if the game type was set, false if an invalid argument was passed to the function.

		@see https://wiki.multitheftauto.com/wiki/SetGameType
	**/
	static function setGameType(gameType:String):Bool;

	/**
		This function is used to set a map name that will be visible in the server browser. In practice you should generally rely on the mapmanager to do this for you.

		@param mapName The name you wish the server browser to show.

		@return true if map name was set successfully, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/SetMapName
	**/
	static function setMapName(mapName:String):Bool;

	/**
		This function sets a rule value that can be viewed by server browsers.

		@param key The name of the rule
		@param value The value you wish to set for the rule

		@return true if the rule value was set, false if invalid arguments were specified.

		@see https://wiki.multitheftauto.com/wiki/SetRuleValue
	**/
	static function setRuleValue(key:String, value:String):Bool;
}
