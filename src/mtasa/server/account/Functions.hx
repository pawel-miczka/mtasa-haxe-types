package mtasa.server.account;

import mtasa.server.classes.Account;

@:native("_G")
extern class Functions {
	/**
		This function adds an **account** to the list of registered accounts of the current server.

		@param name The name of the account you wish to make, this normally is the player's name.
		@param pass The password to set for this account for future logins.
		@param allowCaseVariations Whether the username is case sensitive (if this is set to true, usernames "Bob" and "bob" will refer to different accounts)

		@see https://wiki.mtasa.com/wiki/AddAccount
	**/
	static function addAccount(name:String, pass:String, ?allowCaseVariations:Bool = false):Account;

	/**
		This function copies all of the data from one account to another.

		@param theAccount The account you wish to copy the data to.
		@param fromAccount The account you wish to copy the data from.

		@see https://wiki.mtasa.com/wiki/CopyAccountData
	**/
	static function copyAccountData(account:Account, fromAccount:Account):Bool;

	/**
		This function returns an account for a specific user.

		@param username The username of the account you want to retrieve
		@param password The password for the account. If this argument is not specified, you can get the account whatever password it is, otherwise the password must match the account's.
		@param caseSensitive Specifies whether to ignore the case when searching for an account.

		@see https://wiki.mtasa.com/wiki/GetAccount
	**/
	static function getAccount(username:String, ?password:String, ?caseSensitive:Bool = true):Account;

	/**
		This function retrieves a string that has been stored using setAccountData. Data stored as account data is persistent across user's sessions and maps, unless they are logged into a guest account.

		@param theAccount The account you wish to retrieve the data from.
		@param key The key under which the data is stored

		@see https://wiki.mtasa.com/wiki/GetAccountData
	**/
	static function getAccountData(theAccount:Account, key:String):String;

	/**
		This function retrieves the name of an account.

		@param theAccount The account you wish to get the name of.

		@see https://wiki.mtasa.com/wiki/GetAccountName
	**/
	static function getAccountName(theAccount:Account):String;

	/**
		This function returns the player element that is currently using a specified account, i.e. is logged into it. Only one player can use an account at a time.

		@param theAccount The account you wish to get the player of.

		@see https://wiki.mtasa.com/wiki/GetAccountPlayer
	**/
	static function getAccountPlayer(account:Account):Player;

	/**
		This function returns the last serial that logged onto the specified account.

		@param theAccount The account to get serial from

		@see https://wiki.mtasa.com/wiki/GetAccountSerial
	**/
	static function getAccountSerial(theAccount:Account):String;

	/**
		This function returns a table over all the accounts that exist in the server internal.db file. (Note: accounts.xml is no longer used after version 1.0.4)

		@see https://wiki.mtasa.com/wiki/GetAccounts
	**/
	static function getAccounts():lua.Table<Int, Account>;

	/**
		This function returns a table containing all accounts that were logged onto from specified serial. If the serial is empty string, it will return all accounts that were never logged onto.

		@param serial The serial to get accounts from

		@see https://wiki.mtasa.com/wiki/GetAccountsBySerial
	**/
	static function getAccountsBySerial(serial:String):lua.Table<Int, Account>;

	/**
		This function returns a table containing all the user data for the account provided

		@param theAccount The account you wish to retrieve all data from.

		@see https://wiki.mtasa.com/wiki/GetAllAccountData
	**/
	static function getAllAccountData(theAccount:Account):lua.Table<Dynamic, Dynamic>;

	/**
		This function returns the specified player's account object.

		@param thePlayer The player element you want to get the account of.

		@see https://wiki.mtasa.com/wiki/GetPlayerAccount
	**/
	static function getPlayerAccount(thePlayer:Player):Account;

	/**
		This function checks to see if an account is a guest account. A guest account is an account automatically created for a user when they join the server and deleted when they quit or login to another account. Data stored in a guest account is not stored after the player has left the server. As a consequence, this function will check if a player is logged in or not.

		@param theAccount The account you want to check to see if it is a guest account.

		@see https://wiki.mtasa.com/wiki/IsGuestAccount
	**/
	static function isGuestAccount(theAccount:Account):Void;

	/**
		This functions logs the given player in to the given account. You need to provide the password needed to log into that account.

		@param thePlayer The player to log into an account
		@param theAccount The account to log the player into
		@param thePassword The password needed to sign into this account

		@see https://wiki.mtasa.com/wiki/LogIn
	**/
	static function logIn(thePlayer:Player, theAccount:Account, thePassword:String):Bool;

	/**
		This function logs the given player out of his current account.

		@param thePlayer The player to log out of his current account

		@see https://wiki.mtasa.com/wiki/LogOut
	**/
	static function logOut(thePlayer:Player):Bool;

	/**
		This function is used to delete existing player accounts.

		@param theAccount The account you wish to remove

		@see https://wiki.mtasa.com/wiki/RemoveAccount
	**/
	static function removeAccount(theAccount:Account):Bool;

	/**
		This function sets a string to be stored in an account. This can then be retrieved using getAccountData. Data stored as account data is persistent across user's sessions and maps, unless they are logged into a guest account. Even if logged into a guest account, account data can be useful as a way to store a reference to your own account system, though it's persistence is equivalent to that of using setElementData on the player's element.

		@param theAccount The account you wish to retrieve the data from
		@param key The key under which you wish to store the data
		@param value The value you wish to store. Set to false to remove the data. NOTE: you cannot store tables as values, but you can use toJSON strings

		@see https://wiki.mtasa.com/wiki/SetAccountData
	**/
	static function setAccountData(theAccount:Account, key:String, value:String):Bool;

	/**
		This function sets the password of the specified account.

		@param theAccount the account whose password you want to set
		@param password the password

		@see https://wiki.mtasa.com/wiki/SetAccountPassword
	**/
	static function setAccountPassword(theAccount:Account, password:String):Bool;

	/**
		This function returns the account with the specific ID.

		@param id The ID to get account from

		@see https://wiki.mtasa.com/wiki/GetAccountByID
	**/
	static function getAccountByID(id:Int):Account;

	/**
		This function retrieves the ID of an account.

		@see https://wiki.mtasa.com/wiki/GetAccountID
	**/
	static function getAccountID(theAccount:Account):Account;

	/**
		This function retrieves the IP address of an account.

		@param theAccount The account you wish to get the IP of

		@see https://wiki.mtasa.com/wiki/GetAccountIP
	**/
	static function getAccountIP(theAccount:Account):String;

	/**
		This function returns a table containing all accounts with specified dataName and value (set with setAccountData).

		@param dataName The name of the data
		@param value The value the dataName should have

		@see https://wiki.mtasa.com/wiki/GetAccountsByData
	**/
	static function getAccountsByData(dataName:String, value:String):lua.Table<Int, Account>;

	/**
		This function returns a table containing all accounts that were logged onto from specified IP-address.

		@param ip The IP to get accounts from

		@see https://wiki.mtasa.com/wiki/GetAccountsByIP
	**/
	static function getAccountsByIP(ip:String):lua.Table<Int, Account>;

	/**
		This function sets the name of an account.

		@param theAccount The account you wish to change the name
		@param name The new name
		@param allowCaseVariations Whether the username is case sensitive (if this is set to true, usernames "Bob" and "bob" will refer to different accounts)

		@see https://wiki.mtasa.com/wiki/SetAccountName
	**/
	static function setAccountName(theAccount:Account, name:String, ?allowCaseVariations:Bool = false):String;
}
