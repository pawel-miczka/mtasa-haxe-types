package mtasa.server.classes;

@:native('Account')
extern class Account {
	var name:String;
	var player:Player;
	var serial:String;
	var data:lua.Table<String, String>;
	var guest:Bool;
	var password:String;
	var id:Int;
	var ip:String;

	/**
		This function adds an account to the list of registered accounts of the current server.

		@param name The name of the account you wish to make, this normally is the player's name.
		@param password The password to set for this account for future logins.
		@param allowCaseVariations Whether the username is case sensitive (if this is set to true, usernames "Bob" and "bob" will refer to different accounts)

		@return Account or false if the account already exists or an error occured.

		@see https://wiki.multitheftauto.com/wiki/AddAccount
	**/
	static function add(name:String, password:String, ?allowCaseVariations:Bool = false):Account;

	/**
		This function copies all of the data from one account to another.

		@param account The account you wish to copy the data to.

		@return True if the accounts were valid, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/CopyAccountData
	**/
	public function copyDataTo(account:Account):Bool;

	/**
		This function retrieves a string that has been stored using setAccountData. Data stored as account data is persistent across user's sessions and maps, unless they are logged into a guest account.

		@param key The key under which the data is stored

		@return String containing the stored data or false if no data was stored under that key.

		@see https://wiki.multitheftauto.com/wiki/GetAccountData
	**/
	public function getData(account:Account):String;

	/**
		This function retrieves the name of an account.

		@return String containing the account's name, false if the account does not exist or an invalid argument was passed to the function.

		@see https://wiki.multitheftauto.com/wiki/GetAccountName
	**/
	public function getName():String;

	/**
		This function returns the player element that is currently using a specified account, i.e. is logged into it. Only one player can use an account at a time.

		@return Player element if the account is currently in use, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/GetAccountPlayer
	**/
	public function getPlayer():Player;

	/**
		This function returns the last serial that logged onto the specified account.

		@return String containing the serial, the string is empty if the account was never used. Returns false if invalid arguments were specified.

		@see https://wiki.multitheftauto.com/wiki/GetAccountSerial
	**/
	public function getSerial():String;

	/**
		This function returns a table over all the accounts that exist in the server internal.db file.

		@return Table over the accounts that exist in the server internal.db file. This table might be empty.

		@see https://wiki.multitheftauto.com/wiki/GetAccounts
	**/
	static function getAll():lua.Table<Int, Account>;

	/**
		This function returns a table containing all accounts that were logged onto from specified serial. If the serial is empty string, it will return all accounts that were never logged onto.

		@param serial The serial to get accounts from

		@return Table containing the accounts associated with specified serial.

		@see https://wiki.multitheftauto.com/wiki/GetAccountsBySerial
	**/
	static function getAllBySerial(serial:String):lua.Table<Int, Account>;

	/**
		This function returns a table containing all the user data for the account provided

		@return Table containing the accounts associated with specified serial.

		@see https://wiki.multitheftauto.com/wiki/GetAllAccountData
	**/
	public function getAllData():lua.Table<String, String>;

	/**
		This function returns the specified player's account object.

		@param player The player element you want to get the account of.

		@return The player's account object

		@see https://wiki.multitheftauto.com/wiki/GetPlayerAccount
	**/
	static function getFromPlayer(player:Player):Account;

	/**
		This function checks to see if an account is a guest account. A guest account is an account automatically created for a user when they join the server and deleted when they quit or login to another account. Data stored in a guest account is not stored after the player has left the server. As a consequence, this function will check if a player is logged in or not.

		@return True if the account is a guest account, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/IsGuestAccount
	**/
	public function isGuest():Bool;

	/**
		This function is used to delete existing player accounts.

		@return True if account was successfully removed, false if the account does not exist.

		@see https://wiki.multitheftauto.com/wiki/RemoveAccount
	**/
	public function remove():Bool;

	/**
		This function sets a string to be stored in an account. This can then be retrieved using getAccountData. Data stored as account data is persistent across user's sessions and maps, unless they are logged into a guest account. Even if logged into a guest account, account data can be useful as a way to store a reference to your own account system, though it's persistence is equivalent to that of using setElementData on the player's element.

		@param key The key under which you wish to store the data
		@param value The value you wish to store. Set to false to remove the data.

		@return True if the account data was set, false if an invalid argument was specified.

		@see https://wiki.multitheftauto.com/wiki/setAccountData
	**/
	public function setData(key:String, value:Dynamic):Bool;

	/**
		This function sets the password of the specified account.

		@param password the password

		@return True if the password was set correctly, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/SetAccountPassword
	**/
	public function setPassword(password:String):Bool;

	/**
		This function retrieves the ID of an account.

		@return Int containing the account's ID, false if the account does not exist or an invalid argument was passed to the function.

		@see https://wiki.multitheftauto.com/wiki/GetAccountID
	**/
	public function getID():Int;

	/**
		This function retrieves the IP address of an account.

		@return String containing the account's IP, false if the account does not exist or an invalid argument was passed to the function.

		@see https://wiki.multitheftauto.com/wiki/GetAccountIP
	**/
	public function getIP():String;

	/**
		This function returns a table containing all accounts with specified dataName and value (set with setAccountData).

		@param dataName The name of the data
		@param value The value the dataName should have

		@return Table containing the accounts associated with specified value at dataName

		@see https://wiki.multitheftauto.com/wiki/GetAccountByData
	**/
	static function getAllByData(dataName:String, value:String):lua.Table<Int, Account>;

	/**
		This function returns a table containing all accounts that were logged onto from specified IP-address.

		@param ip The IP to get accounts from

		@return Returns table containing the accounts associated with specified IP-address.

		@see https://wiki.multitheftauto.com/wiki/GetAccountByIP
	**/
	static function getAllByIP(ip:String):lua.Table<Int, Account>;

	/**
		This function sets the name of an account.

		@param name The new name.
		@param allowCaseVariations Whether the username is case sensitive (if this is set to true, usernames "Bob" and "bob" will refer to different accounts)

		@return True if the account name was set, false if an invalid argument was specified.

		@see https://wiki.multitheftauto.com/wiki/SetAccountName
	**/
	static function setName(name:String, ?allowCaseVariations:Bool = false):Bool;
}
