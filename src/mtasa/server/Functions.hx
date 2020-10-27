package mtasa.server;

import mtasa.server.classes.*;
import mtasa.server.enums.RadarBlipIcon;
import mtasa.server.returns.RGBAColor;
import mtasa.shared.classes.Vector3;
import mtasa.server.Variables.RootElement;
import haxe.extern.EitherType;

@:native('_G')
extern class Functions {
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

	/**
		This function creates an ACL entry in the Access Control List system with the specified name.

		@param name The name of the ACL entry to add.

		@return Created ACL object if successful. Returns false if an ACL of the given name could not be created.

		@see https://wiki.multitheftauto.com/wiki/AclCreate
	**/
	static function aclCreate(name:String):ACL;

	/**
		This function creates a group in the ACL. An ACL group can contain objects like players and resources. They specify who has access to the ACL's in this group.

		@param name The name of the group to create.

		@return Pointer to the created aclgroup if successful. Returns false if failed.

		@see https://wiki.multitheftauto.com/wiki/AclCreateGroup
	**/
	static function aclCreateGroup(name:String):ACLGroup;

	/**
		This function destroys the ACL passed. The destroyed ACL will no longer be valid.

		@param acl The ACL to destroy

		@return True if successfully destroyed and false if it could not be deleted (ie. it's not valid).

		@see https://wiki.multitheftauto.com/wiki/AclDestroy
	**/
	static function aclDestroy(acl:ACL):Bool;

	/**
		This function destroys the given ACL group. The destroyed ACL group will no longer be valid.

		@param aclGroup The aclgroup element to destroy

		@return True if the ACL group was successfully deleted, false if it could not be deleted for some reason (ie. invalid argument).

		@see https://wiki.multitheftauto.com/wiki/AclDestroyGroup
	**/
	static function aclDestroyGroup(aclGroup:ACLGroup):Bool;

	/**
		Get the ACL with the given name. If need to get most of the ACL's, you should consider using aclList to get a table of them all.

		@param name The name to get the ACL belonging to

		@return ACL with that name if it could be retrieved, false/nil if the ACL does not exist or it fails for some other reason.

		@see https://wiki.multitheftauto.com/wiki/AclGet
	**/
	static function aclGet(name:String):ACL;

	/**
		This function is used to get the ACL group with the given name. If you need most of the groups you should consider using aclGroupList instead to get a table containing them all.

		@param name The name to get the ACL group from

		@return ACL group if it could be found. Returns false/nil if it did not exist or failed for some reason.

		@see https://wiki.multitheftauto.com/wiki/AclGetGroup
	**/
	static function aclGetGroup(name:String):ACLGroup;

	/**
		Get the name of given ACL.

		@param acl The ACL to get the name of

		@return Name of the given ACL as a string if successful. Returns false/nil if unsuccessful, ie the ACL is invalid.

		@see https://wiki.multitheftauto.com/wiki/AclGetName
	**/
	static function aclGetName(acl:ACL):String;

	/**
		This function returns whether the access for the given right is set to true or false in the ACL.

		@param acl The ACL to get the right from
		@param rightName The right name to return the access value of.

		@return True or false if the ACL gives access or not to the given function. Returns nil if it failed for some reason, e.g. an invalid ACL was specified or the right specified does not exist in the ACL.

		@see https://wiki.multitheftauto.com/wiki/AclGetRight
	**/
	static function aclGetRight(acl:ACL, rightName:String):Bool;

	/**
		This function adds the given ACL to the given ACL group. This makes the resources and players in the given ACL group have access to what's specified in the given ACL. The rights for something in the different ACL's in a group are OR-ed together, which means if one ACL gives access to something, this ACL group will have access to that.

		@param aclGroup The group to add the ACL to
		@param acl The ACL to add to the group

		@return True if the ACL could be successfully added to the ACL group, false/nil if either of the elements are invalid, the ACL is already in that group or if something else goes wrong.

		@see https://wiki.multitheftauto.com/wiki/AclGroupAddACL
	**/
	static function aclGroupAddACL(aclGroup:ACLGroup, acl:ACL):Bool;

	/**
		This function adds an object to the given ACL group.

		@param aclGroup The group to add the object name string too.
		@param objectName The object string to add to the given ACL.

		@return True if the object was successfully added to the ACL, false if it already existed in the list.

		@see https://wiki.multitheftauto.com/wiki/AclGroupAddObject
	**/
	static function aclGroupAddObject(aclGroup:ACLGroup, objectName:String):Bool;

	/**
		This function is used to get the name of the given ACL group.

		@param aclGroup The ACL group to get the name of

		@return Name of the given ACL group as a string if successful, otherwise false or nil if the aclGroup is invalid or it fails for some other reason.

		@see https://wiki.multitheftauto.com/wiki/AclGroupGetName
	**/
	static function aclGroupGetName(aclGroup:ACLGroup):String;

	/**
		This function returns a table of all the ACL groups.

		@return table of all the ACL groups if successful, returns an empty table if no ACL groups exist. false/nil can be returned if this function fails for some other reason.

		@see https://wiki.multitheftauto.com/wiki/AclGroupList
	**/
	static function aclGroupList():lua.Table<Int, ACLGroup>;

	/**
		This function returns a table over all the ACL's that exist in a given ACL group.

		@param aclGroup The ACL group to get the ACL elements from

		@return Table of the ACL elements in the given ACL group. This table might be empty. Returns false or nil if theGroup is invalid or it fails for some other reason.

		@see https://wiki.multitheftauto.com/wiki/AclGroupListACL
	**/
	static function aclGroupListACL(aclGroup:ACLGroup):lua.Table<Int, ACL>;

	/**
		This function returns a table over all the objects that exist in a given ACL group. These are objects like players and resources.

		@param aclGroup The ACL group to get the objects from

		@return Table of strings in the given ACL group. This table might be empty. Returns false or nil if theGroup is invalid or it fails for some other reason.

		@see https://wiki.multitheftauto.com/wiki/AclGroupListObjects
	**/
	static function aclGroupListObjects(aclGroup:ACLGroup):lua.Table<Int, String>;

	/**
		This function removes the given ACL from the given ACL group.

		@param aclGroup The group to remove the given ACL from
		@param acl The ACL to remove from the given group

		@return true if the ACL was successfully removed from the ACL group, false/nil if it could not be removed for some reason, ie. either of the elements were invalid.

		@see https://wiki.multitheftauto.com/wiki/AclGroupRemoveACL
	**/
	static function aclGroupRemoveACL(aclGroup:ACLGroup, acl:ACL):Bool;

	/**
		This function removes the given object from the given ACL group. The object can be a resource or a player.

		@param aclGroup The ACL group to remove the object string from
		@param objectName The object to remove from the ACL group

		@return True if the object existed in the ACL and could be remoevd, false if it could not be removed for some reason, ie. it did not exist in the given ACL group.

		@see https://wiki.multitheftauto.com/wiki/AclGroupRemoveObject
	**/
	static function aclGroupRemoveObject(aclGroup:ACLGroup, objectName:String):Bool;

	/**
		This function returns a list of all the ACLs.

		@return Table of all the ACLs. This table can be empty if no ACLs exist. It can also return false/nil if it failed for some reason.

		@see https://wiki.multitheftauto.com/wiki/AclList
	**/
	static function aclList():lua.Table<Int, ACL>;

	/**
		This function returns a table of all the rights that a given ACL has.

		@param acl The ACL to get the rights from
		@param allowedType The allowed right type. Possible values are general, function, resource and command

		@return Table over the rights as strings in the given ACL. This table might be empty. Returns false or nil if theACL is invalid or it fails for some other reason.

		@see https://wiki.multitheftauto.com/wiki/AclListRights
	**/
	static function aclListRights(acl:ACL, allowedType:String):lua.Table<Int, String>;

	/**
		This function reloads the ACL's and the ACL groups from the ACL XML file. All ACL and ACL group elements are invalid after a call to this and should not be used anymore.

		@return True if the XML was successfully reloaded from the file, false or nil if the XML was invalid, didn't exist or could not be loaded for some other reason.

		@see https://wiki.multitheftauto.com/wiki/AclReload
	**/
	static function aclReload():Bool;

	/**
		This function removes the given right (string) from the given ACL.

		@param acl The ACL to remove the right from
		@param rightName The ACL name to remove from the right from

		@return True if the given right was successfully removed from the given ACL, false or nil if it could not be removed for some reason, ie. it didn't exist in the ACL.

		@see https://wiki.multitheftauto.com/wiki/AclRemoveRight
	**/
	static function aclRemoveRight(acl:ACL, rightName:String):Bool;

	/**
		The ACL XML file is automatically saved whenever the ACL is modified, but the automatic save can be delayed by up to 10 seconds for performance reasons. Calling this function will force an immediate save.

		@return True if the ACL was successfully changed, false or nil if it could not be saved for some reason, ie. file in use.

		@see https://wiki.multitheftauto.com/wiki/AclSave
	**/
	static function aclSave():Bool;

	/**
		This functions changes or adds the given right in the given ACL. The access can be true or false and specifies whether the ACL gives access to the right or not.

		@param acl The ACL to change the right of
		@param rightName The right to add/change the access property of
		@param hasAccess Whether the access should be set to true or false

		@return True if the access was successfully changed, false or nil if it failed for some reason, ie. invalid ACL or the rightname is invalid.

		@see https://wiki.multitheftauto.com/wiki/AclSetRight
	**/
	static function aclSetRight(acl:ACL, rightName:String, hasAccess:Bool):Bool;

	/**
		This function returns whether or not the given object has access to perform the given action.

		@param object The object to test if has permission to. This can be a client element (ie. a player), a resource or a string in the form "user.<name>" or "resource.<name>".
		@param action The action to test if the given object has access to. Ie. "function.kickPlayer".
		@param defaultPermission The default permission if none is specified in either of the groups the given object is a member of. If this is left to true, the given object will have permissions to perform the action unless the opposite is explicitly specified in the ACL. If false, the action will be denied by default unless explicitly approved by the Access Control List.

		@return True if the given object has permission to perform the given action, false otherwise. Returns nil if the function failed because of bad arguments.

		@see https://wiki.multitheftauto.com/wiki/HasObjectPermissionTo
	**/
	static function hasObjectPermissionTo(object:EitherType<Element, String>, action:String, ?defaultPermission:Bool = true):Bool;

	/**
		This function is used to determine if an object is in a group.

		@param object the name of the object to check. Examples: "resource.ctf", "user.Jim".
		@param aclGroup the ACL group pointer of the group from which the object should be found.

		@return True if the object is in the specified group, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/IsObjectInACLGroup
	**/
	static function isObjectInACLGroup(object:String, aclGroup:ACLGroup):Bool;

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

	/**
		This function plays a frontend sound for the specified player.

		@param player the player you want the sound to play for.
		@param sound a whole int specifying the sound id to play.

		@return true if the sound was successfully played, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/PlaySoundFrontEnd
	**/
	static function playSoundFrontEnd(player:Player, sound:Int):Bool;

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

	/**
		This function creates a blip element, which is displayed as an icon on the client's radar.

		@param x The x position of the blip, in world coordinates.
		@param y The y position of the blip, in world coordinates.
		@param z The z position of the blip, in world coordinates.
		@param icon The icon that the radar blips should be. Valid values can be seen at Radar Blips
		@param size The size of the radar blip. Only applicable to the Marker icon. Default is 2. Maximum is 25.
		@param r The amount of red in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param g The amount of green in the blip's color (0–255). Only applicable to the Marker icon. Default is 0.
		@param b The amount of blue in the blip's color (0–255). Only applicable to the Marker icon. Default is 0.
		@param a The amount of alpha in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param ordering This defines the blip's Z-level ordering (-32768–32767). Default is 0.
		@param visibleDistance The maximum distance from the camera at which the blip is still visible (0–65535).
		@param visibleTo This defines which elements can see the blip. Defaults to visible to everyone.

		@return blip if it was created successfully, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/CreateBlip
	**/
	@:overload(function(position:Vector3, ?icon:RadarBlipIcon = MARKER, ?size:Int = 2, ?r:Int = 255, ?g:Int = 0, ?b:Int = 0, ?a:Int = 255, ?ordering:Int = 0,
		?visibleDistance:Float = 16383.0, ?visibleTo:Element):Blip {})
	static function createBlip(x:Float, y:Float, z:Float, ?icon:RadarBlipIcon = MARKER, ?size:Int = 2, ?r:Int = 255, ?g:Int = 0, ?b:Int = 0, ?a:Int = 255,
		?ordering:Int = 0, ?visibleDistance:Float = 16383.0, ?visibleTo:Element):Blip;

	/**
		This function creates a blip that is attached to an element. This blip is displayed as an icon on the client's radar and will 'follow' the element that it is attached to around.

		@param elementToAttachTo The element to attach the blip to.
		@param icon The icon that the radar blips should be. Valid values can be seen at Radar Blips
		@param size The size of the radar blip. Only applicable to the Marker icon. Default is 2. Maximum is 25.
		@param r The amount of red in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param g The amount of green in the blip's color (0–255). Only applicable to the Marker icon. Default is 0.
		@param b The amount of blue in the blip's color (0–255). Only applicable to the Marker icon. Default is 0.
		@param a The amount of alpha in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param ordering This defines the blip's Z-level ordering (-32768–32767). Default is 0.
		@param visibleDistance The maximum distance from the camera at which the blip is still visible (0–65535).
		@param visibleTo This defines which elements can see the blip. Defaults to visible to everyone.

		@return blip if it was created successfully, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/CreateBlipAttachedTo
	**/
	static function createBlipAttachedTo(elementToAttachTo:Element, ?icon:Int = 0, ?size:Int = 2, ?r:Int = 255, ?g:Int = 0, ?b:Int = 0, ?a:Int = 255,
		?ordering:Int = 0, ?visibleDistance:Float = 16383.0, ?visibleTo:Element):Bool;

	/**
		This function will tell you what color a blip is.

		@param blip The blip whose color you wish to get.

		@return Returns four integers in RGBA format, with a maximum value of 255 for each. The values are, in order, red, green, blue, and alpha.

		@see https://wiki.multitheftauto.com/wiki/GetBlipColor
	**/
	static function getBlipColor(blip:Blip):RGBAColor;

	/**
		This function returns the icon a blip currently has.

		@param blip the blip we're getting the icon number of.

		@return int indicating which icon the blip has

		@see https://wiki.multitheftauto.com/wiki/GetBlipIcon
	**/
	static function getBlipIcon(blip:Blip):Int;

	/**
		This function gets the Z ordering value of a blip. The Z ordering determines if a blip appears on top of or below other blips. Blips with a higher Z ordering value appear on top of blips with a lower value. The default value for all blips is 0.

		@param blip the blip to retrieve the Z ordering value of

		@return Z ordering value of the blip if successful, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/GetBlipOrdering
	**/
	static function getBlipOrdering(blip:Blip):Int;

	/**
		This function gets the size of a blip.

		@param blip The blip you wish to get the size of.

		@return int indicating the size of the blip. The default value is 2. The maximum value is 25.

		@see https://wiki.multitheftauto.com/wiki/GetBlipSize
	**/
	static function getBlipSize(blip:Blip):Int;

	/**
		This function will tell you what visible distance a blip has.

		@param blip The blip whose visible distance you wish to get.

		@return one float with the blips visible distance, false if the blip is invalid.

		@see https://wiki.multitheftauto.com/wiki/GetBlipVisibleDistance
	**/
	static function getBlipVisibleDistance(blip:Blip):Float;

	/**
		This function will let you change the color of a blip.

		@param blip The blip who's color you wish to set.
		@param red The amount of red in the blip's color (0 - 255).
		@param green The amount of green in the blip's color (0 - 255).
		@param blue The amount of blue in the blip's color (0 - 255).
		@param alpha The amount of alpha in the blip's color (0 - 255). Alpha decides transparancy where 255 is opaque and 0 is transparent.

		@return true if the blip's color was set successfully. Returns false if the blip passed to the function is invalid, or any of the colors are out of the valid range.

		@see https://wiki.multitheftauto.com/wiki/SetBlipColor
	**/
	static function setBlipColor(blip:Blip, red:Int, green:Int, blue:Int, alpha:Int):Bool;

	/**
		This function sets the icon for an existing blip element.

		@param blip The blip you wish to set the icon of.
		@param icon A number indicating the icon you wish to change it do.

		@return true if the icon was successfully set, false if the element passed was not a valid blip or the icon value was not a valid icon number.

		@see https://wiki.multitheftauto.com/wiki/SetBlipIcon
	**/
	static function setBlipIcon(blip:Blip, icon:RadarBlipIcon):Bool;

	/**
		This function sets the Z ordering of a blip. It allows you to make a blip appear on top of or below other blips.

		@param blip the blip whose Z ordering to change.
		@param ordering the new Z ordering value.

		@return true if the blip ordering was changed successfully, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/SetBlipOrdering
	**/
	static function setBlipOrdering(blip:Blip, ordering:Int):Bool;

	/**
		This function sets the size of a blip's icon.

		@param blip The blip you wish to get the size of.
		@param size The size you wish the icon to be. 2 is the default value. 25 is the maximum value. Value gets clamped between 0 and 25.

		@return true if the blip's size was set successfully. Returns false if the element passed was not a blip or if the icon size passed was invalid.

		@see https://wiki.multitheftauto.com/wiki/SetBlipSize
	**/
	static function setBlipSize(blip:Blip, size:Int):Bool;

	/**
		This function will set the visible distance of a blip.

		@param blip The blip whose visible distance you wish to get.
		@param distance The distance you want the blip to be visible for. Value gets clamped between 0 and 65535.

		@return true if successful, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/SetBlipVisibleDistance
	**/
	static function setBlipVisibleDistance(blip:Blip, distance:Int):Bool;

	static function fadeCamera():Void;
	static function getCameraInterior():Void;
	static function getCameraMatrix():Void;
	static function getCameraTarget():Void;
	static function setCameraInterior():Void;
	static function setCameraMatrix():Void;
	static function setCameraTarget():Void;
	static function getBodyPartName():Void;
	static function getClothesByTypeIndex():Void;
	static function getClothesTypeName():Void;
	static function getTypeIndexFromClothes():Void;
	static function addColPolygonPoint():Void;
	static function createColCircle():Void;
	static function createColCuboid():Void;
	static function createColPolygon():Void;
	static function createColRectangle():Void;
	static function createColSphere():Void;
	static function createColTube():Void;
	static function getColPolygonPoints():Void;
	static function getColPolygonPointPosition():Void;
	static function getColShapeType():Void;
	static function getColShapeRadius():Void;
	static function getColShapeSize():Void;
	static function getElementColShape():Void;
	static function getElementsWithinColShape():Void;
	static function isElementWithinColShape():Void;
	static function isInsideColShape():Void;
	static function removeColPolygonPoint():Void;
	static function setColPolygonPointPosition():Void;
	static function setColShapeRadius():Void;
	static function setColShapeSize():Void;
	static function isCursorShowing():Void;
	static function showCursor():Void;
	static function addElementDataSubscriber():Void;
	static function attachElements():Void;
	static function clearElementVisibleTo():Void;
	static function cloneElement():Void;
	static function createElement():Void;
	static function destroyElement():Void;
	static function detachElements():Void;
	static function getAllElementData():Void;
	static function getAttachedElements():Void;
	static function getElementAlpha():Void;
	static function getElementAttachedOffsets():Void;
	static function getElementAttachedTo():Void;
	static function getElementCollisionsEnabled():Void;
	static function getElementByID():Void;
	static function getElementByIndex():Void;
	static function getElementChild():Void;
	static function getElementChildren():Void;
	static function getElementChildrenCount():Void;
	static function getElementData():Void;
	static function getElementDimension():Void;
	static function getElementHealth():Void;
	static function getElementID():Void;
	static function getElementInterior():Void;
	static function getElementMatrix():Void;
	static function getElementModel():Void;
	static function getElementParent():Void;
	static function getElementPosition():Void;
	static function getElementRotation():Void;
	static function getElementSyncer():Void;
	static function getElementType():Void;
	static function getElementVelocity():Void;
	static function getElementZoneName():Void;
	static function getElementsByType():Void;
	static function getLowLODElement():Void;
	static function getRootElement():Void;
	static function hasElementData():Void;
	static function hasElementDataSubscriber():Void;
	static function isElement():Void;
	static function isElementAttached():Void;
	static function isElementCallPropagationEnabled():Void;
	static function isElementDoubleSided():Void;
	static function isElementFrozen():Void;
	static function isElementInWater():Void;
	static function isElementLowLOD():Void;
	static function isElementVisibleTo():Void;
	static function isElementWithinMarker():Void;
	static function removeElementData():Void;
	static function removeElementDataSubscriber():Void;
	static function setElementAlpha():Void;
	static function setElementAngularVelocity():Void;
	static function getElementAngularVelocity():Void;
	static function setElementAttachedOffsets():Void;
	static function setElementCallPropagationEnabled():Void;
	static function setElementCollisionsEnabled():Void;
	static function setElementData():Void;
	static function setElementDimension():Void;
	static function setElementDoubleSided():Void;
	static function setElementFrozen():Void;
	static function setElementHealth():Void;
	static function setElementID():Void;
	static function setElementInterior():Void;
	static function setElementModel():Void;
	static function setElementParent():Void;
	static function setElementPosition():Void;
	static function setElementRotation():Void;
	static function setElementSyncer():Void;
	static function setElementVelocity():Void;
	static function setElementVisibleTo():Void;
	static function setLowLODElement():Void;
	static function addEvent():Void;
	static function addEventHandler():Void;
	static function cancelEvent():Void;
	static function cancelLatentEvent():Void;
	static function getCancelReason():Void;
	static function getEventHandlers():Void;
	static function getLatentEventHandles():Void;
	static function getLatentEventStatus():Void;
	static function removeEventHandler():Void;
	static function triggerEvent():Void;
	static function triggerClientEvent():Void;
	static function triggerLatentClientEvent():Void;
	static function wasEventCancelled():Void;
	static function createExplosion():Void;
	static function fileClose():Void;
	static function fileCopy():Void;
	static function fileCreate():Void;
	static function fileDelete():Void;
	static function fileExists():Void;
	static function fileFlush():Void;
	static function fileGetPath():Void;
	static function fileGetPos():Void;
	static function fileGetSize():Void;
	static function fileIsEOF():Void;
	static function fileOpen():Void;
	static function fileRead():Void;
	static function fileRename():Void;
	static function fileSetPos():Void;
	static function fileWrite():Void;
	static function addCommandHandler():Void;
	static function bindKey():Void;
	static function executeCommandHandler():Void;
	static function getCommandHandlers():Void;
	static function getControlState():Void;
	static function getFunctionsBoundToKey():Void;
	static function getKeyBoundToFunction():Void;
	static function isControlEnabled():Void;
	static function isKeyBound():Void;
	static function removeCommandHandler():Void;
	static function setControlState():Void;
	static function toggleAllControls():Void;
	static function toggleControl():Void;
	static function unbindKey():Void;
	static function loadMapData():Void;
	static function resetMapInfo():Void;
	static function saveMapData():Void;
	static function createMarker():Void;
	static function getMarkerColor():Void;
	static function getMarkerCount():Void;
	static function getMarkerIcon():Void;
	static function getMarkerSize():Void;
	static function getMarkerTarget():Void;
	static function getMarkerType():Void;
	static function setMarkerColor():Void;
	static function setMarkerIcon():Void;
	static function setMarkerSize():Void;
	static function setMarkerTarget():Void;
	static function setMarkerType():Void;
	static function getLoadedModules():Void;
	static function getModuleInfo():Void;
	static function createObject():Void;
	static function getObjectScale():Void;
	static function moveObject():Void;
	static function setObjectScale():Void;
	static function stopObject():Void;
	static function clearChatBox():Void;
	static function outputChatBox():Void;
	static function outputConsole():Void;
	static function outputDebugString():Void;
	static function outputServerLog():Void;
	static function showChat():Void;
	static function addPedClothes():Void;
	static function createPed():Void;
	static function getPedAmmoInClip():Void;
	static function getPedArmor():Void;
	static function getPedClothes():Void;
	static function getPedContactElement():Void;
	static function getPedFightingStyle():Void;
	static function getPedGravity():Void;
	static function getPedOccupiedVehicle():Void;
	static function getPedOccupiedVehicleSeat():Void;
	static function getPedStat():Void;
	static function getPedTarget():Void;
	static function getPedTotalAmmo():Void;
	static function getPedWalkingStyle():Void;
	static function getPedWeapon():Void;
	static function getPedWeaponSlot():Void;
	static function getValidPedModels():Void;
	static function isPedChoking():Void;
	static function isPedDead():Void;
	static function isPedDoingGangDriveby():Void;
	static function isPedDucked():Void;
	static function isPedHeadless():Void;
	static function isPedInVehicle():Void;
	static function isPedOnFire():Void;
	static function isPedOnGround():Void;
	static function isPedWearingJetpack():Void;
	static function killPed():Void;
	static function reloadPedWeapon():Void;
	static function removePedClothes():Void;
	static function removePedFromVehicle():Void;
	static function setPedAnimation():Void;
	static function setPedAnimationProgress():Void;
	static function setPedAnimationSpeed():Void;
	static function setPedArmor():Void;
	static function setPedChoking():Void;
	static function setPedDoingGangDriveby():Void;
	static function setPedFightingStyle():Void;
	static function setPedGravity():Void;
	static function setPedHeadless():Void;
	static function setPedOnFire():Void;
	static function setPedStat():Void;
	static function setPedWalkingStyle():Void;
	static function setPedWeaponSlot():Void;
	static function setPedWearingJetpack():Void;
	static function warpPedIntoVehicle():Void;
	static function createPickup():Void;
	static function getPickupAmmo():Void;
	static function getPickupAmount():Void;
	static function getPickupRespawnInterval():Void;
	static function getPickupType():Void;
	static function getPickupWeapon():Void;
	static function isPickupSpawned():Void;
	static function setPickupRespawnInterval():Void;
	static function setPickupType():Void;
	static function usePickup():Void;
	static function forcePlayerMap():Void;
	static function getAlivePlayers():Void;
	static function getDeadPlayers():Void;
	static function getPlayerACInfo():Void;
	static function getPlayerAnnounceValue():Void;
	static function getPlayerBlurLevel():Void;
	static function getPlayerCount():Void;
	static function getPlayerFromName():Void;
	static function getPlayerIdleTime():Void;
	static function getPlayerIP():Void;
	static function getPlayerMoney():Void;
	static function getPlayerName():Void;
	static function getPlayerNametagColor():Void;
	static function getPlayerNametagText():Void;
	static function getPlayerPing():Void;
	static function getPlayerScriptDebugLevel():Void;
	static function getPlayerSerial():Void;
	static function getPlayerTeam():Void;
	static function getPlayerVersion():Void;
	static function getPlayerWantedLevel():Void;
	static function getRandomPlayer():Void;
	static function givePlayerMoney():Void;
	static function isPlayerMapForced():Void;
	static function isPlayerMuted():Void;
	static function isPlayerNametagShowing():Void;
	static function isVoiceEnabled():Void;
	static function redirectPlayer():Void;
	static function resendPlayerACInfo():Void;
	static function resendPlayerModInfo():Void;
	static function setPlayerAnnounceValue():Void;
	static function setPlayerBlurLevel():Void;
	static function setPlayerHudComponentVisible():Void;
	static function setPlayerMoney():Void;
	static function setPlayerMuted():Void;
	static function setPlayerName():Void;
	static function setPlayerNametagColor():Void;
	static function setPlayerNametagShowing():Void;
	static function setPlayerNametagText():Void;
	static function setPlayerScriptDebugLevel():Void;
	static function setPlayerTeam():Void;
	static function setPlayerVoiceBroadcastTo():Void;
	static function setPlayerVoiceIgnoreFrom():Void;
	static function setPlayerWantedLevel():Void;
	static function spawnPlayer():Void;
	static function takePlayerMoney():Void;
	static function takePlayerScreenShot():Void;
	static function detonateSatchels():Void;
	static function createRadarArea():Void;
	static function getRadarAreaColor():Void;
	static function getRadarAreaSize():Void;
	static function isInsideRadarArea():Void;
	static function isRadarAreaFlashing():Void;
	static function setRadarAreaColor():Void;
	static function setRadarAreaFlashing():Void;
	static function setRadarAreaSize():Void;
	static function addResourceConfig():Void;
	static function addResourceMap():Void;
	static function call():Void;
	static function callRemote():Void;
	static function copyResource():Void;
	static function createResource():Void;
	static function deleteResource():Void;
	static function fetchRemote():Void;
	static function getResourceACLRequests():Void;
	static function getResourceConfig():Void;
	static function getResourceDynamicElementRoot():Void;
	static function getResourceExportedFunctions():Void;
	static function getResourceFromName():Void;
	static function getResourceInfo():Void;
	static function getResourceLastStartTime():Void;
	static function getResourceLoadFailureReason():Void;
	static function getResourceLoadTime():Void;
	static function getResourceMapRootElement():Void;
	static function getResourceName():Void;
	static function getResourceOrganizationalPath():Void;
	static function getResourceRootElement():Void;
	static function getResourceState():Void;
	static function getResources():Void;
	static function getThisResource():Void;
	static function isResourceArchived():Void;
	static function isResourceProtected():Void;
	static function refreshResources():Void;
	static function removeResourceFile():Void;
	static function renameResource():Void;
	static function restartResource():Void;
	static function setResourceInfo():Void;
	static function startResource():Void;
	static function stopResource():Void;
	static function updateResourceACLRequest():Void;
	static function getRemoteRequests():Void;
	static function getRemoteRequestInfo():Void;
	static function abortRemoteRequest():Void;
	static function getFPSLimit():Void;
	static function getMaxPlayers():Void;
	static function getServerHttpPort():Void;
	static function getServerName():Void;
	static function getServerPassword():Void;
	static function getServerPort():Void;
	static function getVersion():Void;
	static function isGlitchEnabled():Void;
	static function setFPSLimit():Void;
	static function setGlitchEnabled():Void;
	static function setMaxPlayers():Void;
	static function setServerPassword():Void;
	static function shutdown():Void;
	static function get():Void;
	static function set():Void;
	static function executeSQLQuery():Void;
	static function dbConnect():Void;
	static function dbExec():Void;
	static function dbFree():Void;
	static function dbPoll():Void;
	static function dbPrepareString():Void;
	static function dbQuery():Void;
	static function countPlayersInTeam():Void;
	static function createTeam():Void;
	static function getPlayersInTeam():Void;
	static function getTeamColor():Void;
	static function getTeamFriendlyFire():Void;
	static function getTeamFromName():Void;
	static function getTeamName():Void;
	static function setTeamColor():Void;
	static function setTeamFriendlyFire():Void;
	static function setTeamName():Void;
	static function textCreateDisplay():Void;
	static function textCreateTextItem():Void;
	static function textDestroyDisplay():Void;
	static function textDestroyTextItem():Void;
	static function textDisplayAddObserver():Void;
	static function textDisplayAddText():Void;
	static function textDisplayGetObservers():Void;
	static function textDisplayIsObserver():Void;
	static function textDisplayRemoveObserver():Void;
	static function textDisplayRemoveText():Void;
	static function textItemGetColor():Void;
	static function textItemGetPosition():Void;
	static function textItemGetPriority():Void;
	static function textItemGetScale():Void;
	static function textItemGetText():Void;
	static function textItemSetColor():Void;
	static function textItemSetPosition():Void;
	static function textItemSetPriority():Void;
	static function textItemSetScale():Void;
	static function textItemSetText():Void;
	static function addDebugHook():Void;
	static function base64Decode():Void;
	static function base64Encode():Void;
	static function bitAnd():Void;
	static function bitNot():Void;
	static function bitOr():Void;
	static function bitXor():Void;
	static function bitTest():Void;
	static function bitLRotate():Void;
	static function bitRRotate():Void;
	static function bitLShift():Void;
	static function bitRShift():Void;
	static function bitArShift():Void;
	static function bitExtract():Void;
	static function bitReplace():Void;
	static function debugSleep():Void;
	static function decodeString():Void;
	static function deref():Void;
	static function encodeString():Void;
	static function fromJSON():Void;
	static function getColorFromString():Void;
	static function getDevelopmentMode():Void;
	static function getDistanceBetweenPoints2D():Void;
	static function getDistanceBetweenPoints3D():Void;
	static function getEasingValue():Void;
	static function getNetworkStats():Void;
	static function getNetworkUsageData():Void;
	static function getPerformanceStats():Void;
	static function getRealTime():Void;
	static function getServerConfigSetting():Void;
	static function getTickCount():Void;
	static function getTimerDetails():Void;
	static function getTimers():Void;
	static function gettok():Void;
	static function getUserdataType():Void;
	static function hash():Void;
	static function inspect():Void;
	static function interpolateBetween():Void;
	static function iprint():Void;
	static function isOOPEnabled():Void;
	static function isTimer():Void;
	static function killTimer():Void;
	static function md5():Void;
	static function passwordHash():Void;
	static function passwordVerify():Void;
	static function pregFind():Void;
	static function pregMatch():Void;
	static function pregReplace():Void;
	static function removeDebugHook():Void;
	static function ref():Void;
	static function resetTimer():Void;
	static function setDevelopmentMode():Void;
	static function setServerConfigSetting():Void;
	static function setTimer():Void;
	static function sha256():Void;
	static function split():Void;
	static function teaDecode():Void;
	static function teaEncode():Void;
	static function tocolor():Void;
	static function toJSON():Void;
	static function utfChar():Void;
	static function utfCode():Void;
	static function utfLen():Void;
	static function utfSeek():Void;
	static function utfSub():Void;
	static function addVehicleSirens():Void;
	static function addVehicleUpgrade():Void;
	static function attachTrailerToVehicle():Void;
	static function blowVehicle():Void;
	static function createVehicle():Void;
	static function detachTrailerFromVehicle():Void;
	static function fixVehicle():Void;
	static function getModelHandling():Void;
	static function getOriginalHandling():Void;
	static function getTrainDirection():Void;
	static function getTrainPosition():Void;
	static function getTrainSpeed():Void;
	static function getTrainTrack():Void;
	static function getVehicleColor():Void;
	static function getVehicleCompatibleUpgrades():Void;
	static function getVehicleController():Void;
	static function getVehicleDoorOpenRatio():Void;
	static function getVehicleDoorState():Void;
	static function getVehicleEngineState():Void;
	static function getVehicleHandling():Void;
	static function getVehicleHeadLightColor():Void;
	static function getVehicleLandingGearDown():Void;
	static function getVehicleLightState():Void;
	static function getVehicleMaxPassengers():Void;
	static function getVehicleModelFromName():Void;
	static function getVehicleName():Void;
	static function getVehicleNameFromModel():Void;
	static function getVehicleOccupant():Void;
	static function getVehicleOccupants():Void;
	static function getVehicleOverrideLights():Void;
	static function getVehiclePaintjob():Void;
	static function getVehiclePanelState():Void;
	static function getVehiclePlateText():Void;
	static function getVehicleRespawnPosition():Void;
	static function getVehicleRespawnRotation():Void;
	static function getVehicleSirenParams():Void;
	static function getVehicleSirens():Void;
	static function getVehicleSirensOn():Void;
	static function getVehicleTowedByVehicle():Void;
	static function getVehicleTowingVehicle():Void;
	static function getVehicleTurretPosition():Void;
	static function getVehicleType():Void;
	static function getVehicleUpgradeOnSlot():Void;
	static function getVehicleUpgradeSlotName():Void;
	static function getVehicleUpgrades():Void;
	static function getVehicleVariant():Void;
	static function getVehicleWheelStates():Void;
	static function getVehiclesOfType():Void;
	static function isTrainDerailable():Void;
	static function isTrainDerailed():Void;
	static function isVehicleBlown():Void;
	static function isVehicleDamageProof():Void;
	static function isVehicleFuelTankExplodable():Void;
	static function isVehicleLocked():Void;
	static function isVehicleOnGround():Void;
	static function isVehicleTaxiLightOn():Void;
	static function removeVehicleSirens():Void;
	static function removeVehicleUpgrade():Void;
	static function resetVehicleExplosionTime():Void;
	static function resetVehicleIdleTime():Void;
	static function respawnVehicle():Void;
	static function setModelHandling():Void;
	static function setTrainDerailable():Void;
	static function setTrainDerailed():Void;
	static function setTrainDirection():Void;
	static function setTrainPosition():Void;
	static function setTrainSpeed():Void;
	static function setTrainTrack():Void;
	static function setVehicleColor():Void;
	static function setVehicleDamageProof():Void;
	static function setVehicleDoorOpenRatio():Void;
	static function setVehicleDoorState():Void;
	static function setVehicleDoorsUndamageable():Void;
	static function setVehicleEngineState():Void;
	static function setVehicleFuelTankExplodable():Void;
	static function setVehicleHandling():Void;
	static function setVehicleHeadLightColor():Void;
	static function setVehicleIdleRespawnDelay():Void;
	static function setVehicleLandingGearDown():Void;
	static function setVehicleLightState():Void;
	static function setVehicleLocked():Void;
	static function setVehicleOverrideLights():Void;
	static function setVehiclePaintjob():Void;
	static function setVehiclePanelState():Void;
	static function setVehiclePlateText():Void;
	static function setVehicleRespawnDelay():Void;
	static function setVehicleRespawnPosition():Void;
	static function setVehicleRespawnRotation():Void;
	static function setVehicleSirens():Void;
	static function setVehicleSirensOn():Void;
	static function setVehicleTaxiLightOn():Void;
	static function setVehicleTurretPosition():Void;
	static function setVehicleVariant():Void;
	static function setVehicleWheelStates():Void;
	static function spawnVehicle():Void;
	static function toggleVehicleRespawn():Void;
	static function createWater():Void;
	static function getWaterColor():Void;
	static function getWaterVertexPosition():Void;
	static function getWaveHeight():Void;
	static function resetWaterColor():Void;
	static function resetWaterLevel():Void;
	static function setWaterColor():Void;
	static function setWaterLevel():Void;
	static function setWaterVertexPosition():Void;
	static function setWaveHeight():Void;
	static function getOriginalWeaponProperty():Void;
	static function getSlotFromWeapon():Void;
	static function getWeaponIDFromName():Void;
	static function getWeaponNameFromID():Void;
	static function getWeaponProperty():Void;
	static function giveWeapon():Void;
	static function setWeaponAmmo():Void;
	static function setWeaponProperty():Void;
	static function takeAllWeapons():Void;
	static function takeWeapon():Void;
	static function areTrafficLightsLocked():Void;
	static function getAircraftMaxVelocity():Void;
	static function getCloudsEnabled():Void;
	static function getFarClipDistance():Void;
	static function getFogDistance():Void;
	static function getGameSpeed():Void;
	static function getGravity():Void;
	static function getHeatHaze():Void;
	static function getJetpackMaxHeight():Void;
	static function getJetpackWeaponEnabled():Void;
	static function getMinuteDuration():Void;
	static function getMoonSize():Void;
	static function getOcclusionsEnabled():Void;
	static function getRainLevel():Void;
	static function getSkyGradient():Void;
	static function getSunColor():Void;
	static function getSunSize():Void;
	static function getTime():Void;
	static function getTrafficLightState():Void;
	static function getWeather():Void;
	static function getWindVelocity():Void;
	static function getZoneName():Void;
	static function isGarageOpen():Void;
	static function removeWorldModel():Void;
	static function resetFarClipDistance():Void;
	static function resetFogDistance():Void;
	static function resetHeatHaze():Void;
	static function resetMoonSize():Void;
	static function resetRainLevel():Void;
	static function resetSkyGradient():Void;
	static function resetSunColor():Void;
	static function resetSunSize():Void;
	static function resetWindVelocity():Void;
	static function restoreAllWorldModels():Void;
	static function restoreWorldModel():Void;
	static function setAircraftMaxVelocity():Void;
	static function setCloudsEnabled():Void;
	static function setFarClipDistance():Void;
	static function setFogDistance():Void;
	static function setGameSpeed():Void;
	static function setGarageOpen():Void;
	static function setGravity():Void;
	static function setHeatHaze():Void;
	static function setInteriorSoundsEnabled():Void;
	static function setJetpackWeaponEnabled():Void;
	static function setMinuteDuration():Void;
	static function setMoonSize():Void;
	static function setOcclusionsEnabled():Void;
	static function setRainLevel():Void;
	static function setSkyGradient():Void;
	static function setSunColor():Void;
	static function setSunSize():Void;
	static function setTime():Void;
	static function setTrafficLightState():Void;
	static function setTrafficLightsLocked():Void;
	static function setWeather():Void;
	static function setWeatherBlended():Void;
	static function setWindVelocity():Void;
	static function xmlCopyFile():Void;
	static function xmlCreateChild():Void;
	static function xmlCreateFile():Void;
	static function xmlDestroyNode():Void;
	static function xmlFindChild():Void;
	static function xmlLoadFile():Void;
	static function xmlLoadString():Void;
	static function xmlNodeGetAttribute():Void;
	static function xmlNodeGetAttributes():Void;
	static function xmlNodeGetChildren():Void;
	static function xmlNodeGetName():Void;
	static function xmlNodeGetParent():Void;
	static function xmlNodeGetValue():Void;
	static function xmlNodeSetAttribute():Void;
	static function xmlNodeSetName():Void;
	static function xmlNodeSetValue():Void;
	static function xmlSaveFile():Void;
	static function xmlUnloadFile():Void;
}
