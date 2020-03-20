package mtasa.server.classes;

@:native('Account')
extern class Account {
	public var id:Int;
	public var ip:String;
	public var guest:Bool;
	public var name:String;
	public var player:Player;
	public var serial:String;
	public var password:String;
	public var data:lua.Table<String, String>;

	/**
		This function adds an **account** to the list of registered accounts of the current server.

		@param name The name of the account you wish to make, this normally is the player's name.
		@param pass The password to set for this account for future logins.
		@param allowCaseVariations Whether the username is case sensitive (if this is set to true, usernames "Bob" and "bob" will refer to different accounts)

		@see https://wiki.mtasa.com/wiki/AddAccount
	**/
	public static function add(name:String, password:String, ?allowCaseVariations:Bool):Account;

	/**
		This function returns the specified player's account object.

		@param thePlayer The player element you want to get the account of.

		@see https://wiki.mtasa.com/wiki/GetPlayerAccount
	**/
	public static function getFromPlayer(player:Player):Account;

	/**
		This function returns a table over all the accounts that exist in the server internal.db file. (Note: accounts.xml is no longer used after version 1.0.4)

		@see https://wiki.mtasa.com/wiki/GetAccounts
	**/
	public static function getAll():lua.Table<Int, Account>;

	/**
		This function returns a table containing all accounts that were logged onto from specified serial. If the serial is empty string, it will return all accounts that were never logged onto.

		@param serial The serial to get accounts from

		@see https://wiki.mtasa.com/wiki/GetAccountsBySerial
	**/
	public static function getAllBySerial(serial:String):lua.Table<Int, Account>;

	/**
		This function returns a table containing all accounts with specified dataName and value (set with setAccountData).

		@param dataName The name of the data
		@param value The value the dataName should have

		@see https://wiki.mtasa.com/wiki/GetAccountsByData
	**/
	public static function getAllByData(dataName:String, value:String):lua.Table<Int, Account>;

	/**
		This function returns a table containing all accounts that were logged onto from specified IP-address.

		@param ip The IP to get accounts from

		@see https://wiki.mtasa.com/wiki/GetAccountsByIP
	**/
	public static function getAllByIP(ip:String):lua.Table<Int, Account>;

	/**
		This function copies all of the data from one account to another.

		@param fromAccount The account you wish to copy the data from.

		@see https://wiki.mtasa.com/wiki/CopyAccountData
	**/
	public function copyDataTo(fromAccount:Account):Bool;

	/**
		This function retrieves a string that has been stored using setAccountData. Data stored as account data is persistent across user's sessions and maps, unless they are logged into a guest account.

		@param key The key under which the data is stored

		@see https://wiki.mtasa.com/wiki/GetAccountData
	**/
	public function getData(key:String):String;

	/**
		This function sets the name of an account.

		@param name The new name
		@param allowCaseVariations Whether the username is case sensitive (if this is set to true, usernames "Bob" and "bob" will refer to different accounts)

		@see https://wiki.mtasa.com/wiki/SetAccountName
	**/
	public function setName(name:String, ?allowCaseVariations:Bool):Bool;

	/**
		This function retrieves the name of an account.

		@see https://wiki.mtasa.com/wiki/GetAccountName
	**/
	public function getName():String;

	/**
		This function returns the player element that is currently using a specified account, i.e. is logged into it. Only one player can use an account at a time.

		@see https://wiki.mtasa.com/wiki/GetAccountPlayer
	**/
	public function getPlayer():Player;

	/**
		This function returns the last serial that logged onto the specified account.

		@param theAccount The account to get serial from

		@see https://wiki.mtasa.com/wiki/GetAccountSerial
	**/
	public function getSerial():String;

	/**
		This function returns a table containing all the user data for the account provided

		@see https://wiki.mtasa.com/wiki/GetAllAccountData
	**/
	public function getAllData():lua.Table<String, String>;

	/**
		This function checks to see if an account is a guest account. A guest account is an account automatically created for a user when they join the server and deleted when they quit or login to another account. Data stored in a guest account is not stored after the player has left the server. As a consequence, this function will check if a player is logged in or not.

		@see https://wiki.mtasa.com/wiki/IsGuestAccount
	**/
	static function isGuest():Bool;

	/**
		This function is used to delete existing player accounts.

		@see https://wiki.mtasa.com/wiki/RemoveAccount
	**/
	public function remove():Bool;

	/**
		This function sets a string to be stored in an account. This can then be retrieved using getAccountData. Data stored as account data is persistent across user's sessions and maps, unless they are logged into a guest account. Even if logged into a guest account, account data can be useful as a way to store a reference to your own account system, though it's persistence is equivalent to that of using setElementData on the player's element.

		@param key The key under which you wish to store the data
		@param value The value you wish to store. Set to false to remove the data. NOTE: you cannot store tables as values, but you can use toJSON strings

		@see https://wiki.mtasa.com/wiki/SetAccountData
	**/
	public function setData(key:String, value:String):Bool;

	/**
		This function sets the password of the specified account.

		@param password the password

		@see https://wiki.mtasa.com/wiki/SetAccountPassword
	**/
	public function setPassword(password:String):Bool;

	/**
		This function retrieves the ID of an account.

		@see https://wiki.mtasa.com/wiki/GetAccountID
	**/
	public function getID():Int;

	/**
		This function retrieves the IP address of an account.

		@see https://wiki.mtasa.com/wiki/GetAccountIP
	**/
	public function getIP():String;
}
