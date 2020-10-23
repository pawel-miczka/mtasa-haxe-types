package mtasa.server;

import mtasa.server.classes.Account;
import mtasa.server.classes.Player;

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

	static function addBan():Void;
	static function banPlayer():Void;
	static function getBanAdmin():Void;
	static function getBanIP():Void;
	static function getBanNick():Void;
	static function getBanReason():Void;
	static function getBanSerial():Void;
	static function getBanTime():Void;
	static function getBanUsername():Void;
	static function getBans():Void;
	static function getUnbanTime():Void;
	static function isBan():Void;
	static function kickPlayer():Void;
	static function setBanAdmin():Void;
	static function setBanNick():Void;
	static function setBanReason():Void;
	static function setUnbanTime():Void;
	static function reloadBans():Void;
	static function removeBan():Void;
	static function playSoundFrontEnd():Void;
	static function getGameType():Void;
	static function getMapName():Void;
	static function getRuleValue():Void;
	static function removeRuleValue():Void;
	static function setGameType():Void;
	static function setMapName():Void;
	static function setRuleValue():Void;
	static function createBlip():Void;
	static function createBlipAttachedTo():Void;
	static function getBlipColor():Void;
	static function getBlipIcon():Void;
	static function getBlipOrdering():Void;
	static function getBlipSize():Void;
	static function getBlipVisibleDistance():Void;
	static function setBlipColor():Void;
	static function setBlipIcon():Void;
	static function setBlipOrdering():Void;
	static function setBlipSize():Void;
	static function setBlipVisibleDistance():Void;
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
