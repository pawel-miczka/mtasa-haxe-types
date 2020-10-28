package mtasa.server;

import mtasa.server.classes.Player;
import mtasa.server.classes.Account;

@:native('_G')
extern class AccountFunctions {
	/**
		This function adds an account to the list of registered accounts of the current server.

		@param name The name of the account you wish to make, this normally is the player's name.
		@param password The password to set for this account for future logins.
		@param allowCaseVariations Whether the username is case sensitive (if this is set to true, usernames "Bob" and "bob" will refer to different accounts)

		@return Account or false if the account already exists or an error occured.

		@see https://wiki.multitheftauto.com/wiki/AddAccount
	**/
	static function addAccount(name:String, password:String, ?allowCaseVariations:Bool = false):Account;

	/**
		This function copies all of the data from one account to another.

		@param account The account you wish to copy the data to.
		@param fromAccount The account you wish to copy the data from.

		@return True if the accounts were valid, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/CopyAccountData
	**/
	static function copyAccountData(account:Account, fromAccount:Account):Bool;

	/**
		This function returns an account for a specific user.

		@param username The username of the account you want to retrieve
		@param password The password for the account. If this argument is not specified, you can get the account whatever password it is, otherwise the password must match the account's.
		@param caseSensitive Specifies whether to ignore the case when searching for an account.

		@return Account or false if an account matching the username specified (and password, if specified) could not be found.

		@see https://wiki.multitheftauto.com/wiki/GetAccount
	**/
	static function getAccount(username:String, ?password:String, ?caseSensitive:Bool = true):Account;

	/**
		This function retrieves a string that has been stored using setAccountData. Data stored as account data is persistent across user's sessions and maps, unless they are logged into a guest account.

		@param account The account you wish to retrieve the data from.
		@param key The key under which the data is stored

		@return String containing the stored data or false if no data was stored under that key.

		@see https://wiki.multitheftauto.com/wiki/GetAccountData
	**/
	static function getAccountData(account:Account):String;

	/**
		This function retrieves the name of an account.

		@param account The account you wish to get the name of.

		@return String containing the account's name, false if the account does not exist or an invalid argument was passed to the function.

		@see https://wiki.multitheftauto.com/wiki/GetAccountName
	**/
	static function getAccountName(account:Account):String;

	/**
		This function returns the player element that is currently using a specified account, i.e. is logged into it. Only one player can use an account at a time.

		@param account The account you wish to get the player of.

		@return Player element if the account is currently in use, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/GetAccountPlayer
	**/
	static function getAccountPlayer(account:Account):Player;

	/**
		This function returns the last serial that logged onto the specified account.

		@param account The account to get serial from

		@return String containing the serial, the string is empty if the account was never used. Returns false if invalid arguments were specified.

		@see https://wiki.multitheftauto.com/wiki/GetAccountSerial
	**/
	static function getAccountSerial(account:Account):String;

	/**
		This function returns a table over all the accounts that exist in the server internal.db file.

		@return Table over the accounts that exist in the server internal.db file. This table might be empty.

		@see https://wiki.multitheftauto.com/wiki/GetAccounts
	**/
	static function getAccounts():lua.Table<Int, Account>;

	/**
		This function returns a table containing all accounts that were logged onto from specified serial. If the serial is empty string, it will return all accounts that were never logged onto.

		@param serial The serial to get accounts from

		@return Table containing the accounts associated with specified serial.

		@see https://wiki.multitheftauto.com/wiki/GetAccountsBySerial
	**/
	static function getAccountsBySerial(serial:String):lua.Table<Int, Account>;

	/**
		This function returns a table containing all the user data for the account provided

		@param account The account you wish to retrieve all data from.

		@return Table containing the accounts associated with specified serial.

		@see https://wiki.multitheftauto.com/wiki/GetAllAccountData
	**/
	static function getAllAccountData(account:Account):lua.Table<String, String>;

	/**
		This function returns the specified player's account object.

		@param player The player element you want to get the account of.

		@return The player's account object

		@see https://wiki.multitheftauto.com/wiki/GetPlayerAccount
	**/
	static function getPlayerAccount(player:Player):Account;

	/**
		This function checks to see if an account is a guest account. A guest account is an account automatically created for a user when they join the server and deleted when they quit or login to another account. Data stored in a guest account is not stored after the player has left the server. As a consequence, this function will check if a player is logged in or not.

		@param account The account you want to check to see if it is a guest account.

		@return True if the account is a guest account, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/IsGuestAccount
	**/
	static function isGuestAccount(account:Account):Bool;

	/**
		This functions logs the given player in to the given account. You need to provide the password needed to log into that account.

		@param player
		@param account
		@param password

		@return True if the player was successfully logged into the given account. Returns false or nil if the log in failed for some reason, ie. the player was already logged in to some account (use logOut first), if the account was already in use or if it failed for some other reason.

		@see https://wiki.multitheftauto.com/wiki/LogIn
	**/
	static function logIn(player:Player, account:Account, password:String):Bool;

	/**
		This function logs the given player out of his current account.

		@param player The player to log out of his current account

		@return True if the player was successfully logged out, false or nil if it failed for some reason, ie. the player was never logged in.

		@see https://wiki.multitheftauto.com/wiki/LogOut
	**/
	static function logOut(player:Player):Bool;

	/**
		This function is used to delete existing player accounts.

		@param account The account you wish to remove

		@return True if account was successfully removed, false if the account does not exist.

		@see https://wiki.multitheftauto.com/wiki/RemoveAccount
	**/
	static function removeAccount(account:Account):Bool;

	/**
		This function sets a string to be stored in an account. This can then be retrieved using getAccountData. Data stored as account data is persistent across user's sessions and maps, unless they are logged into a guest account. Even if logged into a guest account, account data can be useful as a way to store a reference to your own account system, though it's persistence is equivalent to that of using setElementData on the player's element.

		@param account The account you wish to retrieve the data from.
		@param key The key under which you wish to store the data
		@param value The value you wish to store. Set to false to remove the data.

		@return True if the account data was set, false if an invalid argument was specified.

		@see https://wiki.multitheftauto.com/wiki/setAccountData
	**/
	static function setAccountData(account:Account, key:String, value:Dynamic):Bool;

	/**
		This function sets the password of the specified account.

		@param account the account whose password you want to set
		@param password the password

		@return True if the password was set correctly, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/SetAccountPassword
	**/
	static function setAccountPassword(account:Account, password:String):Bool;

	/**
		This function returns the account with the specific ID.

		@param id The ID to get account from

		@return Account associated with specified ID. Returns false if invalid arguments were specified or there is no account with this ID.

		@see https://wiki.multitheftauto.com/wiki/GetAccountByID
	**/
	static function getAccountByID(id:Int):Account;

	/**
		This function retrieves the ID of an account.

		@param account The account you wish to get the ID of.

		@return Int containing the account's ID, false if the account does not exist or an invalid argument was passed to the function.

		@see https://wiki.multitheftauto.com/wiki/GetAccountID
	**/
	static function getAccountID(account:Account):Int;

	/**
		This function retrieves the IP address of an account.

		@param account The account you wish to get the IP of.

		@return String containing the account's IP, false if the account does not exist or an invalid argument was passed to the function.

		@see https://wiki.multitheftauto.com/wiki/GetAccountIP
	**/
	static function getAccountIP(account:Account):String;

	/**
		This function returns a table containing all accounts with specified dataName and value (set with setAccountData).

		@param dataName The name of the data
		@param value The value the dataName should have

		@return Table containing the accounts associated with specified value at dataName

		@see https://wiki.multitheftauto.com/wiki/GetAccountByData
	**/
	static function getAccountsByData(dataName:String, value:String):lua.Table<Int, Account>;

	/**
		This function returns a table containing all accounts that were logged onto from specified IP-address.

		@param ip The IP to get accounts from

		@return Returns table containing the accounts associated with specified IP-address.

		@see https://wiki.multitheftauto.com/wiki/GetAccountByIP
	**/
	static function getAccountsByIP(ip:String):lua.Table<Int, Account>;

	/**
		This function sets the name of an account.

		@param account The account you wish to change the name.
		@param name The new name.
		@param allowCaseVariations Whether the username is case sensitive (if this is set to true, usernames "Bob" and "bob" will refer to different accounts)

		@return True if the account name was set, false if an invalid argument was specified.

		@see https://wiki.multitheftauto.com/wiki/SetAccountName
	**/
	static function setAccountName(account:Account, name:String, ?allowCaseVariations:Bool = false):Bool;
}
