package mtasa.server;

@:native("_G")
extern class Functions {
	/**
		This function adds an account to the list of registered accounts of the current server.

		@see https://wiki.mtasa.com/wiki/AddAccount
	**/
	static function addAccount():Void

	/**
		This function copies all of the data from one account to another.

		@see https://wiki.mtasa.com/wiki/CopyAccountData
	**/
	static function copyAccountData():Void

	/**
		This function returns an account for a specific user.

		@see https://wiki.mtasa.com/wiki/GetAccount
	**/
	static function getAccount():Void

	/**
		This function retrieves a string that has been stored using setAccountData. Data stored as account data is persistent across user's sessions and maps, unless they are logged into a guest account.

		@see https://wiki.mtasa.com/wiki/GetAccountData
	**/
	static function getAccountData():Void

	/**
		This function retrieves the name of an account.

		@see https://wiki.mtasa.com/wiki/GetAccountName
	**/
	static function getAccountName():Void

	/**
		This function returns the player element that is currently using a specified account, i.e. is logged into it. Only one player can use an account at a time.

		@see https://wiki.mtasa.com/wiki/GetAccountPlayer
	**/
	static function getAccountPlayer():Void

	/**
		This function returns the last serial that logged onto the specified account.

		@see https://wiki.mtasa.com/wiki/GetAccountSerial
	**/
	static function getAccountSerial():Void

	/**
		This function returns a table over all the accounts that exist in the server internal.db file. (Note: accounts.xml is no longer used after version 1.0.4)

		@see https://wiki.mtasa.com/wiki/GetAccounts
	**/
	static function getAccounts():Void

	/**
		This function returns a table containing all accounts that were logged onto from specified serial. If the serial is empty string, it will return all accounts that were never logged onto.

		@see https://wiki.mtasa.com/wiki/GetAccountsBySerial
	**/
	static function getAccountsBySerial():Void

	/**
		This function returns a table containing all the user data for the account provided

		@see https://wiki.mtasa.com/wiki/GetAllAccountData
	**/
	static function getAllAccountData():Void

	/**
		This function returns the specified player's account object.

		@see https://wiki.mtasa.com/wiki/GetPlayerAccount
	**/
	static function getPlayerAccount():Void

	/**
		This function checks to see if an account is a guest account. A guest account is an account automatically created for a user when they join the server and deleted when they quit or login to another account. Data stored in a guest account is not stored after the player has left the server. As a consequence, this function will check if a player is logged in or not.

		@see https://wiki.mtasa.com/wiki/IsGuestAccount
	**/
	static function isGuestAccount():Void

	/**
		This functions logs the given player in to the given account. You need to provide the password needed to log into that account.

		@see https://wiki.mtasa.com/wiki/LogIn
	**/
	static function logIn():Void

	/**
		This function logs the given player out of his current account.

		@see https://wiki.mtasa.com/wiki/LogOut
	**/
	static function logOut():Void

	/**
		This function is used to delete existing player accounts.

		@see https://wiki.mtasa.com/wiki/RemoveAccount
	**/
	static function removeAccount():Void

	/**
		This function sets a string to be stored in an account. This can then be retrieved using getAccountData. Data stored as account data is persistent across user's sessions and maps, unless they are logged into a guest account. Even if logged into a guest account, account data can be useful as a way to store a reference to your own account system, though it's persistence is equivalent to that of using setElementData on the player's element.

		@see https://wiki.mtasa.com/wiki/SetAccountData
	**/
	static function setAccountData():Void

	/**
		This function sets the password of the specified account.

		@see https://wiki.mtasa.com/wiki/SetAccountPassword
	**/
	static function setAccountPassword():Void

	/**
		This function returns the account with the specific ID.

		@see https://wiki.mtasa.com/wiki/GetAccountByID
	**/
	static function getAccountByID():Void

	/**
		This function retrieves the ID of an account.

		@see https://wiki.mtasa.com/wiki/GetAccountID
	**/
	static function getAccountID():Void

	/**
		This function retrieves the IP address of an account.

		@see https://wiki.mtasa.com/wiki/GetAccountIP
	**/
	static function getAccountIP():Void

	/**
		This function returns a table containing all accounts with specified dataName and value (set with setAccountData).

		@see https://wiki.mtasa.com/wiki/GetAccountsByData
	**/
	static function getAccountsByData():Void

	/**
		This function returns a table containing all accounts that were logged onto from specified IP-address.

		@see https://wiki.mtasa.com/wiki/GetAccountsByIP
	**/
	static function getAccountsByIP():Void

	/**
		This function sets the name of an account.

		@see https://wiki.mtasa.com/wiki/SetAccountName
	**/
	static function setAccountName():Void

	/**
		This function creates an ACL entry in the Access Control List system with the specified name.

		@see https://wiki.mtasa.com/wiki/AclCreate
	**/
	static function aclCreate():Void

	/**
		This function creates a group in the ACL. An ACL group can contain objects like players and resources. They specify who has access to the ACL's in this group.

		@see https://wiki.mtasa.com/wiki/AclCreateGroup
	**/
	static function aclCreateGroup():Void

	/**
		This function destroys the ACL passed. The destroyed ACL will no longer be valid.

		@see https://wiki.mtasa.com/wiki/AclDestroy
	**/
	static function aclDestroy():Void

	/**
		This function destroys the given ACL group. The destroyed ACL group will no longer be valid.

		@see https://wiki.mtasa.com/wiki/AclDestroyGroup
	**/
	static function aclDestroyGroup():Void

	/**
		Get the ACL with the given name. If need to get most of the ACL's, you should consider using aclList to get a table of them all.

		@see https://wiki.mtasa.com/wiki/AclGet
	**/
	static function aclGet():Void

	/**
		This function is used to get the ACL group with the given name. If you need most of the groups you should consider using aclGroupList instead to get a table containing them all.

		@see https://wiki.mtasa.com/wiki/AclGetGroup
	**/
	static function aclGetGroup():Void

	/**
		Get the name of given ACL.

		@see https://wiki.mtasa.com/wiki/AclGetName
	**/
	static function aclGetName():Void

	/**
		This function returns whether the access for the given right is set to true or false in the ACL.

		@see https://wiki.mtasa.com/wiki/AclGetRight
	**/
	static function aclGetRight():Void

	/**
		This function adds the given ACL to the given ACL group. This makes the resources and players in the given ACL group have access to what's specified in the given ACL. The rights for something in the different ACL's in a group are OR-ed together, which means if one ACL gives access to something, this ACL group will have access to that.

		@see https://wiki.mtasa.com/wiki/AclGroupAddACL
	**/
	static function aclGroupAddACL():Void

	/**
		This function adds an object to the given ACL group. An object can be a player's account, specified as:Or a resource, specified as:

		@see https://wiki.mtasa.com/wiki/AclGroupAddObject
	**/
	static function aclGroupAddObject():Void

	/**
		This function is used to get the name of the given ACL group.

		@see https://wiki.mtasa.com/wiki/AclGroupGetName
	**/
	static function aclGroupGetName():Void

	/**
		This function returns a table of all the ACL groups.

		@see https://wiki.mtasa.com/wiki/AclGroupList
	**/
	static function aclGroupList():Void

	/**
		This function returns a table over all the ACL's that exist in a given ACL group.

		@see https://wiki.mtasa.com/wiki/AclGroupListACL
	**/
	static function aclGroupListACL():Void

	/**
		This function returns a table over all the objects that exist in a given ACL group. These are objects like players and resources.

		@see https://wiki.mtasa.com/wiki/AclGroupListObjects
	**/
	static function aclGroupListObjects():Void

	/**
		This function removes the given ACL from the given ACL group.

		@see https://wiki.mtasa.com/wiki/AclGroupRemoveACL
	**/
	static function aclGroupRemoveACL():Void

	/**
		This function removes the given object from the given ACL group. The object can be a resource or a player. See aclGroupAddObject for more details.

		@see https://wiki.mtasa.com/wiki/AclGroupRemoveObject
	**/
	static function aclGroupRemoveObject():Void

	/**
		This function returns a list of all the ACLs.

		@see https://wiki.mtasa.com/wiki/AclList
	**/
	static function aclList():Void

	/**
		This function returns a table of all the rights that a given ACL has.

		@see https://wiki.mtasa.com/wiki/AclListRights
	**/
	static function aclListRights():Void

	/**
		This function reloads the ACL's and the ACL groups from the ACL XML file. All ACL and ACL group elements are invalid after a call to this and should not be used anymore.

		@see https://wiki.mtasa.com/wiki/AclReload
	**/
	static function aclReload():Void

	/**
		This function removes the given right (string) from the given ACL.

		@see https://wiki.mtasa.com/wiki/AclRemoveRight
	**/
	static function aclRemoveRight():Void

	/**
		The ACL XML file is automatically saved whenever the ACL is modified, but the automatic save can be delayed by up to 10 seconds for performance reasons. Calling this function will force an immediate save.

		@see https://wiki.mtasa.com/wiki/AclSave
	**/
	static function aclSave():Void

	/**
		This functions changes or adds the given right in the given ACL. The access can be true or false and specifies whether the ACL gives access to the right or not.

		@see https://wiki.mtasa.com/wiki/AclSetRight
	**/
	static function aclSetRight():Void

	/**
		This function returns whether or not the given object has access to perform the given action.Scripts frequently wish to limit access to features to particular users. The naïve way to do this would be to check if the player who is attempting to perform an action is in a particular group (usually the Admin group). The main issue with doing this is that the Admin group is not guaranteed to exist. It also doesn't give the server admin any flexibility. He might want to allow his 'moderators' access to the function you're limiting access to, or he may want it disabled entirely.

		@see https://wiki.mtasa.com/wiki/HasObjectPermissionTo
	**/
	static function hasObjectPermissionTo():Void

	/**
		This function is used to determine if an object is in a group.

		@see https://wiki.mtasa.com/wiki/IsObjectInACLGroup
	**/
	static function isObjectInACLGroup():Void

	/**
		This function will add a ban for the specified IP/username/serial to the server.

		@see https://wiki.mtasa.com/wiki/AddBan
	**/
	static function addBan():Void

	/**
		This function will ban the specified player by either IP, serial or username

		@see https://wiki.mtasa.com/wiki/BanPlayer
	**/
	static function banPlayer():Void

	/**
		This function will return the responsible admin (nickname of the admin) of the specified ban.

		@see https://wiki.mtasa.com/wiki/GetBanAdmin
	**/
	static function getBanAdmin():Void

	/**
		This function will return the IP of the specified ban.

		@see https://wiki.mtasa.com/wiki/GetBanIP
	**/
	static function getBanIP():Void

	/**
		This function will return the nickname (nickname that the player had when he was banned) of the specified ban.

		@see https://wiki.mtasa.com/wiki/GetBanNick
	**/
	static function getBanNick():Void

	/**
		This function will return the ban reason of the specified ban.

		@see https://wiki.mtasa.com/wiki/GetBanReason
	**/
	static function getBanReason():Void

	/**
		This function will return the serial of the specified ban.

		@see https://wiki.mtasa.com/wiki/GetBanSerial
	**/
	static function getBanSerial():Void

	/**
		This function will return the time the specified ban was created, in seconds.

		@see https://wiki.mtasa.com/wiki/GetBanTime
	**/
	static function getBanTime():Void

	/**
		This function will return the username of the specified ban.Returns a string of the username if everything was successful, false if invalid arguments are specified if there was no username specified for the ban.

		@see https://wiki.mtasa.com/wiki/GetBanUsername
	**/
	static function getBanUsername():Void

	/**
		This function will return a table containing all the bans present in the server's banlist.xml.

		@see https://wiki.mtasa.com/wiki/GetBans
	**/
	static function getBans():Void

	/**
		This function will return the unbanning time of the specified ban in seconds.

		@see https://wiki.mtasa.com/wiki/GetUnbanTime
	**/
	static function getUnbanTime():Void

	/**
		This function checks whether the passed value is valid ban or not.Returns true if the value is a ban, false otherwise.

		@see https://wiki.mtasa.com/wiki/IsBan
	**/
	static function isBan():Void

	/**
		This function will kick the specified player from the server.

		@see https://wiki.mtasa.com/wiki/KickPlayer
	**/
	static function kickPlayer():Void

	/**
		This function sets a new admin for a ban.

		@see https://wiki.mtasa.com/wiki/SetBanAdmin
	**/
	static function setBanAdmin():Void

	/**
		This function sets a new nick for a ban.

		@see https://wiki.mtasa.com/wiki/SetBanNick
	**/
	static function setBanNick():Void

	/**
		This function sets the reason for the specified ban.

		@see https://wiki.mtasa.com/wiki/SetBanReason
	**/
	static function setBanReason():Void

	/**
		This function sets a new unban time of a given ban using unix timestamp (seconds since Jan 01 1970).

		@see https://wiki.mtasa.com/wiki/SetUnbanTime
	**/
	static function setUnbanTime():Void

	/**
		This function will reload the server ban list file.Returns true if the ban list was reloaded successfully, false otherwise.

		@see https://wiki.mtasa.com/wiki/ReloadBans
	**/
	static function reloadBans():Void

	/**
		This function will remove a specific ban.

		@see https://wiki.mtasa.com/wiki/RemoveBan
	**/
	static function removeBan():Void

	/**
		This function plays a frontend sound for the specified player.

		@see https://wiki.mtasa.com/wiki/PlaySoundFrontEnd
	**/
	static function playSoundFrontEnd():Void

	/**
		This function retrieves the current gametype as set by setGameType. The game type is displayed in the server browser next to the server's name.Returns the gametype as a string. If no gametype is set it returns nil.

		@see https://wiki.mtasa.com/wiki/GetGameType
	**/
	static function getGameType():Void

	/**
		This function retrieves the current mapname as set by setMapName.Returns the mapname as a string. If no mapname is set it returns nil.

		@see https://wiki.mtasa.com/wiki/GetMapName
	**/
	static function getMapName():Void

	/**
		This function gets a rule value. A rule value is a string that can be viewed by server browsers and used for filtering the server list.

		@see https://wiki.mtasa.com/wiki/GetRuleValue
	**/
	static function getRuleValue():Void

	/**
		This function removes a set rule value that can be viewed by server browsers.Returns true if the rule value was removed, false if it failed.

		@see https://wiki.mtasa.com/wiki/RemoveRuleValue
	**/
	static function removeRuleValue():Void

	/**
		This function sets a string containing a name for the game type. This should be the game-mode that is active, for example "Capture The Flag" or "Deathmatch". This is then displayed in the server browser and external server browsers.It should be noted that mapmanager handles this automatically for gamemodes that utilise the map/gamemode system.

		@see https://wiki.mtasa.com/wiki/SetGameType
	**/
	static function setGameType():Void

	/**
		This function is used to set a map name that will be visible in the server browser. In practice you should generally rely on the mapmanager to do this for you.Returns true if map name was set successfully, false otherwise.

		@see https://wiki.mtasa.com/wiki/SetMapName
	**/
	static function setMapName():Void

	/**
		This function sets a rule value that can be viewed by server browsers.Returns true if the rule value was set, false if invalid arguments were specified.

		@see https://wiki.mtasa.com/wiki/SetRuleValue
	**/
	static function setRuleValue():Void

	/**
		This function creates a blip element, which is displayed as an icon on the client's radar.

		@see https://wiki.mtasa.com/wiki/CreateBlip
	**/
	static function createBlip():Void

	/**
		This function creates a blip that is attached to an element. This blip is displayed as an icon on the client's radar and will 'follow' the element that it is attached to around.

		@see https://wiki.mtasa.com/wiki/CreateBlipAttachedTo
	**/
	static function createBlipAttachedTo():Void

	/**
		This function will tell you what color a blip is. This color is only applicable to the default blip icon (,  or ). All other icons will ignore this.

		@see https://wiki.mtasa.com/wiki/GetBlipColor
	**/
	static function getBlipColor():Void

	/**
		This function returns the icon a blip currently has.

		@see https://wiki.mtasa.com/wiki/GetBlipIcon
	**/
	static function getBlipIcon():Void

	/**
		This function gets the Z ordering value of a blip. The Z ordering determines if a blip appears on top of or below other blips. Blips with a higher Z ordering value appear on top of blips with a lower value. The default value for all blips is 0.

		@see https://wiki.mtasa.com/wiki/GetBlipOrdering
	**/
	static function getBlipOrdering():Void

	/**
		This function gets the size of a blip..

		@see https://wiki.mtasa.com/wiki/GetBlipSize
	**/
	static function getBlipSize():Void

	/**
		This function will tell you what visible distance a blip has.

		@see https://wiki.mtasa.com/wiki/GetBlipVisibleDistance
	**/
	static function getBlipVisibleDistance():Void

	/**
		This function will let you change the color of a blip. This color is only applicable to the default blip icon (,  or ). All other icons will ignore this.

		@see https://wiki.mtasa.com/wiki/SetBlipColor
	**/
	static function setBlipColor():Void

	/**
		This function sets the icon for an existing blip element.

		@see https://wiki.mtasa.com/wiki/SetBlipIcon
	**/
	static function setBlipIcon():Void

	/**
		This function sets the Z ordering of a blip. It allows you to make a blip appear on top of or below other blips.

		@see https://wiki.mtasa.com/wiki/SetBlipOrdering
	**/
	static function setBlipOrdering():Void

	/**
		This function sets the size of a blip's icon.

		@see https://wiki.mtasa.com/wiki/SetBlipSize
	**/
	static function setBlipSize():Void

	/**
		This function will set the visible distance of a blip.

		@see https://wiki.mtasa.com/wiki/SetBlipVisibleDistance
	**/
	static function setBlipVisibleDistance():Void

	/**
		This function will fade a player's camera to a color or back to normal over a specified time period. This will also affect the sound volume for the player (50% faded = 50% volume, full fade = no sound). For clientside scripts you can perform 2 fade ins or fade outs in a row, but for serverside scripts you must use one then the other.

		@see https://wiki.mtasa.com/wiki/FadeCamera
	**/
	static function fadeCamera():Void

	/**
		Returns the interior of the local camera (independent of the interior of the local player).

		@see https://wiki.mtasa.com/wiki/GetCameraInterior
	**/
	static function getCameraInterior():Void

	/**
		This function gets the position of the camera and the position of the point it is facing.

		@see https://wiki.mtasa.com/wiki/GetCameraMatrix
	**/
	static function getCameraMatrix():Void

	/**
		This function returns an element that corresponds to the current target of the specified player's camera (i.e. what it is following).

		@see https://wiki.mtasa.com/wiki/GetCameraTarget
	**/
	static function getCameraTarget():Void

	/**
		Sets the interior of the local camera. Only the interior of the camera is changed, the local player stays in the interior he was in.

		@see https://wiki.mtasa.com/wiki/SetCameraInterior
	**/
	static function setCameraInterior():Void

	/**
		This function sets the camera's position and direction. The first three arguments are the point at which the camera lies, the last three are the point the camera faces (or the point it "looks at").Note: Calling this function takes the camera's focus away from the player and sets the camera in a fixed position and rotation. The camera's focus can be brought back to the player using the setCameraTarget function.

		@see https://wiki.mtasa.com/wiki/SetCameraMatrix
	**/
	static function setCameraMatrix():Void

	/**
		This function allows you to set a player's camera to follow other elements instead. Currently supported element type is:

		@see https://wiki.mtasa.com/wiki/SetCameraTarget
	**/
	static function setCameraTarget():Void

	/**
		This function is used to get the name of a body part on a player.

		@see https://wiki.mtasa.com/wiki/GetBodyPartName
	**/
	static function getBodyPartName():Void

	/**
		This function is used to get the texture and model of clothes by the clothes type and index.
(Scans through the list of clothes for the specific type).This function returns 2 strings, a texture and model respectively, false if invalid arguments were passed to the function.

		@see https://wiki.mtasa.com/wiki/GetClothesByTypeIndex
	**/
	static function getClothesByTypeIndex():Void

	/**
		This function is used to get the name of a certain clothes type.This function returns a string (the name of the clothes type) if found, false otherwise.

		@see https://wiki.mtasa.com/wiki/GetClothesTypeName
	**/
	static function getClothesTypeName():Void

	/**
		This function is used to get the clothes type and index from the texture and model.
(Scans through the list of clothes for the specific type).

		@see https://wiki.mtasa.com/wiki/GetTypeIndexFromClothes
	**/
	static function getTypeIndexFromClothes():Void

	/**
		This function creates a collision circle. This is a shape that has a position and a radius and infinite height that you can use to detect a player's presence. Events will be triggered when a player enters or leaves it.

		@see https://wiki.mtasa.com/wiki/CreateColCircle
	**/
	static function createColCircle():Void

	/**
		This function creates a collision cuboid. This is a shape that has a position, width, depth and height. See Wikipedia for a definition of a cuboid. The XYZ of the col starts at the southwest bottom corner of the shape.

		@see https://wiki.mtasa.com/wiki/CreateColCuboid
	**/
	static function createColCuboid():Void

	/**
		This function creates a collision polygon. See Wikipedia for a definition of a polygon. The first set of X Y of this shape is not part of the colshape bounds, so can set anywhere in the game world, however for performance, place it as close to the centre of the polygon as you can. It should be noted this shape is 2D. There should be at least 3 bound points set.

		@see https://wiki.mtasa.com/wiki/CreateColPolygon
	**/
	static function createColPolygon():Void

	/**
		This function creates a collision rectangle. This is a shape that has a position and a width and a depth. See Rectangle for a definition of a rectangle. XY marks on the south west corner of the colshape.

		@see https://wiki.mtasa.com/wiki/CreateColRectangle
	**/
	static function createColRectangle():Void

	/**
		This function creates a collision sphere. This is a shape that has a position and a radius. See Wikipedia for a definition of a sphere.

		@see https://wiki.mtasa.com/wiki/CreateColSphere
	**/
	static function createColSphere():Void

	/**
		This function creates a collision tube. This is a shape that has a position and a 2D (X/Y) radius and a height. See Cylinder for a definition of a tube. A tube is similar to a colcircle, except that it has a limited height, this means you can limit the distance above the position defined by (fX, fY, fZ) that the collision is detected.

		@see https://wiki.mtasa.com/wiki/CreateColTube
	**/
	static function createColTube():Void

	/**
		This function is used to retrieve the type of an colshape.

		@see https://wiki.mtasa.com/wiki/GetColShapeType
	**/
	static function getColShapeType():Void

	/**
		This function is used to retrieve a list of all elements in a colshape, of the specified type.

		@see https://wiki.mtasa.com/wiki/GetElementsWithinColShape
	**/
	static function getElementsWithinColShape():Void

	/**
		This function is used to determine if an element is within a collision shape. Please note that for legacy reasons, a colshape created on the client does not collide with elements already existing at that location until they first move. Please also note that before 1.0.3, this did not function correctly when moving a colshape.

		@see https://wiki.mtasa.com/wiki/IsElementWithinColShape
	**/
	static function isElementWithinColShape():Void

	/**
		This function checks if a 3D position is inside a colshape or not.

		@see https://wiki.mtasa.com/wiki/IsInsideColShape
	**/
	static function isInsideColShape():Void

	/**
		This function is used to determine whether or not a player's cursor is showing.Returns true if the player's cursor is showing, false if it isn't or if invalid parameters were passed.

		@see https://wiki.mtasa.com/wiki/IsCursorShowing
	**/
	static function isCursorShowing():Void

	/**
		This function is used to show or hide a player's cursor.NOTE: When using optional arguments, you might need to supply all arguments before the one you wish to use. For more information on optional arguments, see optional arguments.

		@see https://wiki.mtasa.com/wiki/ShowCursor
	**/
	static function showCursor():Void

	/**
		This function attaches one element to another, so that the first one follows the second whenever it moves.If an attempt is made to attach two elements that are already attached the opposite way (eg theElement becomes theAttachToElement and vice versa), the 1st attachment order is automatically detached in favor of the 2nd attachment order. For example, if carA was attached to carB, now carB is attached to carA. Also, an element cannot be attached to two separate elements at one time. For example, two cars can be attached to one single car, but one single car cannot be attached to two separate cars. If you attempt to do this, the existing attachment will automatically be dropped in favor of the new attachment. For example, if carA is asked to attached to carB then carC, it is only attached to carC.

		@see https://wiki.mtasa.com/wiki/AttachElements
	**/
	static function attachElements():Void

	/**
		This function clears any settings added by setElementVisibleTo and restores an element to its default visibility.  This does not work with all entities - vehicles, players and objects are exempt. This is because these objects are required for accurate sync (they're physical objects). This function is particularily useful for changing the visibility of markers, radar blips and radar areas.

		@see https://wiki.mtasa.com/wiki/ClearElementVisibleTo
	**/
	static function clearElementVisibleTo():Void

	/**
		This function clones (creates an exact copy of) an already existing element. The root node, and player elements, cannot be cloned. If a player element is a child of an element that is cloned, it will be skipped, along with the elements that exist as a child to the player element.Players are not the only elements that cannot be cloned. This list also includes remoteclients, and console elements.

		@see https://wiki.mtasa.com/wiki/CloneElement
	**/
	static function cloneElement():Void

	/**
		This function is used to create a new dummy element in the element tree which do not necessarily represent an entity within the San Andreas world. A common use for this function is for creating custom elements, such as a Flag or a Base.Elements created using this function are placed in the element tree with their parent as the 'dynamic' map element.

		@see https://wiki.mtasa.com/wiki/CreateElement
	**/
	static function createElement():Void

	/**
		This function destroys an element and all elements within it in the hierarchy (its children, the children of those children etc). Player elements cannot be destroyed using this function. A player can only be removed from the hierarchy when they quit or are kicked. The root element also cannot be destroyed, however, passing the root as an argument will wipe all elements from the server, except for the players and clients, which will become direct descendants of the root node, and other elements that cannot be destroyed, such as resource root elements.Players are not the only elements that cannot be deleted. This list also includes remote clients and console elements.

		@see https://wiki.mtasa.com/wiki/DestroyElement
	**/
	static function destroyElement():Void

	/**
		This function detaches attached elements from one another.

		@see https://wiki.mtasa.com/wiki/DetachElements
	**/
	static function detachElements():Void

	/**
		Returns a table of all element data of an element.

		@see https://wiki.mtasa.com/wiki/GetAllElementData
	**/
	static function getAllElementData():Void

	/**
		This function returns a table of all the elements attached to the specified element

		@see https://wiki.mtasa.com/wiki/GetAttachedElements
	**/
	static function getAttachedElements():Void

	/**
		This function returns the alpha (transparency) value for the specified element. This can be a player, ped, object, vehicle or weapon.

		@see https://wiki.mtasa.com/wiki/GetElementAlpha
	**/
	static function getElementAlpha():Void

	/**
		This function returns the offsets of an element that has been attached to another element using attachElements.

		@see https://wiki.mtasa.com/wiki/GetElementAttachedOffsets
	**/
	static function getElementAttachedOffsets():Void

	/**
		This function determines the element that the specified element is attached to.

		@see https://wiki.mtasa.com/wiki/GetElementAttachedTo
	**/
	static function getElementAttachedTo():Void

	/**
		This function indicates if a specific element is set to have collisions disabled. An element without collisions does not interact with the physical environment and remains static.

		@see https://wiki.mtasa.com/wiki/GetElementCollisionsEnabled
	**/
	static function getElementCollisionsEnabled():Void

	/**
		This function returns an element from the specified ID. If more than one element with the same ID exists, only the first one in the order it appears in the XML tree will be returned by this function.

		@see https://wiki.mtasa.com/wiki/GetElementByID
	**/
	static function getElementByID():Void

	/**
		This function returns an element of the specified type with the specified index.

		@see https://wiki.mtasa.com/wiki/GetElementByIndex
	**/
	static function getElementByIndex():Void

	/**
		This function returns one of the child elements of a given parent element. The child element is selected by its index (0 for the first child, 1 for the second and so on).

		@see https://wiki.mtasa.com/wiki/GetElementChild
	**/
	static function getElementChild():Void

	/**
		This function is used to retrieve a list of the child elements of a given parent element. Note that it will only return direct children and not elements that are further down the element tree.

		@see https://wiki.mtasa.com/wiki/GetElementChildren
	**/
	static function getElementChildren():Void

	/**
		This function returns the number of children an element has. Note that only the direct children are counted and not elements that are further down the element tree.

		@see https://wiki.mtasa.com/wiki/GetElementChildrenCount
	**/
	static function getElementChildrenCount():Void

	/**
		Some elements have an associated colshape, for example Marker and Pickup. This function is used to get the associated colshape.

		@see https://wiki.mtasa.com/wiki/GetElementColShape
	**/
	static function getElementColShape():Void

	/**
		This function retrieves element data attached to an element under a certain key.

		@see https://wiki.mtasa.com/wiki/GetElementData
	**/
	static function getElementData():Void

	/**
		This function allows you to retrieve the dimension of any element. The dimension determines what/who the element is visible to.

		@see https://wiki.mtasa.com/wiki/GetElementDimension
	**/
	static function getElementDimension():Void

	/**
		This function returns the current health for the specified element. This can be a player, a ped, a vehicle, or an object.

		@see https://wiki.mtasa.com/wiki/GetElementHealth
	**/
	static function getElementHealth():Void

	/**
		This function gets the ID of an element. This is the "id" attribute of the element and is a string, NOT a number like a model ID, weapons ID or similar.

		@see https://wiki.mtasa.com/wiki/GetElementID
	**/
	static function getElementID():Void

	/**
		This function allows you to retrieve the interior of any element. An interior is the current loaded place, 0 being outside.

		@see https://wiki.mtasa.com/wiki/GetElementInterior
	**/
	static function getElementInterior():Void

	/**
		This function gets an element's transform matrix. This contains 16 float values that multiplied to a point will give you the point transformed. It is most useful for matrix calculations such as calculating offsets. For further information, please refer to a tutorial of matrices in computer graphics programming.

		@see https://wiki.mtasa.com/wiki/GetElementMatrix
	**/
	static function getElementMatrix():Void

	/**
		Returns the model ID of a given element. This can be a player/ped skin, a pickup model, an object model or a vehicle model.

		@see https://wiki.mtasa.com/wiki/GetElementModel
	**/
	static function getElementModel():Void

	/**
		This function is used to determine the parent of an element.

		@see https://wiki.mtasa.com/wiki/GetElementParent
	**/
	static function getElementParent():Void

	/**
		The getElementPosition function allows you to retrieve the position coordinates of an element.  This can be any real world element, including:

		@see https://wiki.mtasa.com/wiki/GetElementPosition
	**/
	static function getElementPosition():Void

	/**
		Retrieve the rotation of elements.

		@see https://wiki.mtasa.com/wiki/GetElementRotation
	**/
	static function getElementRotation():Void

	/**
		This function gets the syncer of an element. The syncer is the player who is in control of the element.

		@see https://wiki.mtasa.com/wiki/GetElementSyncer
	**/
	static function getElementSyncer():Void

	/**
		This function is used to retrieve the type of an element.

		@see https://wiki.mtasa.com/wiki/GetElementType
	**/
	static function getElementType():Void

	/**
		This function returns three floats containing the velocity (movement speeds) along the X, Y, and Z axis respectively. This means that velocity values can be positive and negative for each axis.

		@see https://wiki.mtasa.com/wiki/GetElementVelocity
	**/
	static function getElementVelocity():Void

	/**
		This function allows you to retrieve the zone name of an element (eg. Verdant Bluffs or Ocean Docks)

		@see https://wiki.mtasa.com/wiki/GetElementZoneName
	**/
	static function getElementZoneName():Void

	/**
		This function is used to retrieve a list of all elements of the specified type. This can be useful, as it disregards where in the element tree it is. It can be used with either the built in types (listed below) or with any custom type used in a .map file. For example, if there is an element of type "flag" (e.g. <flag />) in the .map file, the using "flag" as the type argument would find it.

		@see https://wiki.mtasa.com/wiki/GetElementsByType
	**/
	static function getElementsByType():Void

	/**
		This function return the low LOD element that an element is associated with.

		@see https://wiki.mtasa.com/wiki/GetLowLODElement
	**/
	static function getLowLODElement():Void

	/**
		This function returns the root node of the element tree, called root. This node contains every other element: all resource root elements, players and remote clients. It is never destroyed and cannot be destroyed using destroyElement.

		@see https://wiki.mtasa.com/wiki/GetRootElement
	**/
	static function getRootElement():Void

	/**
		This function checks if a value is an element or not.Returns true if the passed value is an element, false otherwise.

		@see https://wiki.mtasa.com/wiki/IsElement
	**/
	static function isElement():Void

	/**
		This functions checks whether or not an element is attached to another element.

		@see https://wiki.mtasa.com/wiki/IsElementAttached
	**/
	static function isElementAttached():Void

	/**
		This functions checks if certain element has call propagation enabled.

		@see https://wiki.mtasa.com/wiki/IsElementCallPropagationEnabled
	**/
	static function isElementCallPropagationEnabled():Void

	/**
		This function checks whether an element is double-sided as set by setElementDoubleSided or not.

		@see https://wiki.mtasa.com/wiki/IsElementDoubleSided
	**/
	static function isElementDoubleSided():Void

	/**
		This function checks if element has been frozen.

		@see https://wiki.mtasa.com/wiki/IsElementFrozen
	**/
	static function isElementFrozen():Void

	/**
		This function checks whether an element is submerged in water.

		@see https://wiki.mtasa.com/wiki/IsElementInWater
	**/
	static function isElementInWater():Void

	/**
		This function reveals if an element is low LOD.

		@see https://wiki.mtasa.com/wiki/IsElementLowLOD
	**/
	static function isElementLowLOD():Void

	/**
		This checks if an element is visible to a player. This does not check if the player can literally see the element, just that they are aware that it exists. Some so-called per-player elements are able to be visible only to some players, as such this checks if this is the case for a particular element/player combination.

		@see https://wiki.mtasa.com/wiki/IsElementVisibleTo
	**/
	static function isElementVisibleTo():Void

	/**
		This function is used to determine if an element is within a marker.

		@see https://wiki.mtasa.com/wiki/IsElementWithinMarker
	**/
	static function isElementWithinMarker():Void

	/**
		This function removes the element data with the given key for that element. The element data removal is synced with all the clients.

		@see https://wiki.mtasa.com/wiki/RemoveElementData
	**/
	static function removeElementData():Void

	/**
		This function sets the alpha (transparency) value for the specified element. This can be a player, ped, object, vehicle or weapon.

		@see https://wiki.mtasa.com/wiki/SetElementAlpha
	**/
	static function setElementAlpha():Void

	/**
		Sets the angular velocity of a specified, supported element (Applies a spin to it).

		@see https://wiki.mtasa.com/wiki/SetElementAngularVelocity
	**/
	static function setElementAngularVelocity():Void

	/**
		Gets the current angular velocity of a specified, supported element.

		@see https://wiki.mtasa.com/wiki/GetElementAngularVelocity
	**/
	static function getElementAngularVelocity():Void

	/**
		This function updates the offsets of an element that has been attached to another element using attachElements.

		@see https://wiki.mtasa.com/wiki/SetElementAttachedOffsets
	**/
	static function setElementAttachedOffsets():Void

	/**
		This function enables/disables call propagation on a certain element. Look at the example for a practical application.

		@see https://wiki.mtasa.com/wiki/SetElementCallPropagationEnabled
	**/
	static function setElementCallPropagationEnabled():Void

	/**
		This function can disable or enable an element's collisions. An element without collisions does not interact with the physical environment and remains static.

		@see https://wiki.mtasa.com/wiki/SetElementCollisionsEnabled
	**/
	static function setElementCollisionsEnabled():Void

	/**
		This function stores element data under a certain key, attached to an element. Element data set using this is then synced with all clients and the server. The data can contain server created elements, but you should avoid passing data that is not able to be synced such as xmlnodes, acls, aclgroups etc.

		@see https://wiki.mtasa.com/wiki/SetElementData
	**/
	static function setElementData():Void

	/**
		This function allows you to set the dimension of any element. The dimension determines what/who the element is visible to.

		@see https://wiki.mtasa.com/wiki/SetElementDimension
	**/
	static function setElementDimension():Void

	/**
		This function allows you to set the double-sidedness of an element's model. When an element's model is double-sided, it's back facing triangles become visible.

		@see https://wiki.mtasa.com/wiki/SetElementDoubleSided
	**/
	static function setElementDoubleSided():Void

	/**
		This function freezes an element (stops it in its position and disables movement) or unfreezes it.

		@see https://wiki.mtasa.com/wiki/SetElementFrozen
	**/
	static function setElementFrozen():Void

	/**
		This function sets the health for the specified element. This can be a ped, object or a vehicle.

		@see https://wiki.mtasa.com/wiki/SetElementHealth
	**/
	static function setElementHealth():Void

	/**
		This function sets the ID of an element to a string. This can be anything from an identifying number, to a name.
You can only change the ID of an element clientside if that element has been created clientside as well.

		@see https://wiki.mtasa.com/wiki/SetElementID
	**/
	static function setElementID():Void

	/**
		This function allows you to set the interior of any element. An interior is the current loaded place, 0 being outside.

		@see https://wiki.mtasa.com/wiki/SetElementInterior
	**/
	static function setElementInterior():Void

	/**
		Sets the model of a given element. This allows you to change the model of a player (or ped), a vehicle or an object.

		@see https://wiki.mtasa.com/wiki/SetElementModel
	**/
	static function setElementModel():Void

	/**
		This function is used for setting an element as the parent of another element.

		@see https://wiki.mtasa.com/wiki/SetElementParent
	**/
	static function setElementParent():Void

	/**
		This function sets the position of an element to the specified coordinates.

		@see https://wiki.mtasa.com/wiki/SetElementPosition
	**/
	static function setElementPosition():Void

	/**
		Sets the rotation of elements according to the world (does not work with players that are on the ground).

		@see https://wiki.mtasa.com/wiki/SetElementRotation
	**/
	static function setElementRotation():Void

	/**
		This function can be used to change the syncer (player) of an element. The syncer is the player who is responsible for informing the server about the state of that element - it's position, orientation and other state information. The function can be also used to remove an element's syncer.

		@see https://wiki.mtasa.com/wiki/SetElementSyncer
	**/
	static function setElementSyncer():Void

	/**
		This function sets the velocity (movement speeds) along each axis, for an element.

		@see https://wiki.mtasa.com/wiki/SetElementVelocity
	**/
	static function setElementVelocity():Void

	/**
		Does the order of setElementVisibleTo calls really not matter? Visibility seems to imply that the order does matter.

		@see https://wiki.mtasa.com/wiki/SetElementVisibleTo
	**/
	static function setElementVisibleTo():Void

	/**
		This function assigns a low LOD element to an element. The low LOD element is displayed when its associated element is not fully visible. If a low LOD element is assigned to several elements, it will be displayed when any of these elements are not fully visible.

		@see https://wiki.mtasa.com/wiki/SetLowLODElement
	**/
	static function setLowLODElement():Void

	/**
		This function allows you to register a custom event. Custom events function exactly like the built-in events. See event system for more information on the event system.Returns true if the event was added successfully, false if the event was already added.

		@see https://wiki.mtasa.com/wiki/AddEvent
	**/
	static function addEvent():Void

	/**
		This function will add an event handler. An event handler is a function that will be called when the event it's attached to is triggered. See event system for more information on how the event system works.

		@see https://wiki.mtasa.com/wiki/AddEventHandler
	**/
	static function addEventHandler():Void

	/**
		This function is used to stop the automatic internal handling of events, for example this can be used to prevent an item being given to a player when they walk over a pickup, by canceling the onPickupUse event.cancelEvent does not have an effect on all events, see the individual event's pages for information on what happens when the event is canceled. cancelEvent does not stop further event handlers from being called, as the order of event handlers being called is undefined in many cases. Instead, you can see if the currently active event has been cancelled using wasEventCancelled.

		@see https://wiki.mtasa.com/wiki/CancelEvent
	**/
	static function cancelEvent():Void

	/**
		Stops a latent event from completingReturns a true if the latent event was successfully cancelled, or false if it was not

		@see https://wiki.mtasa.com/wiki/CancelLatentEvent
	**/
	static function cancelLatentEvent():Void

	/**
		Gets the reason for cancelling an event.None

		@see https://wiki.mtasa.com/wiki/GetCancelReason
	**/
	static function getCancelReason():Void

	/**
		This function gets the attached functions from the event and attached element from current lua script.Returns table with attached functions, false otherwise.

		@see https://wiki.mtasa.com/wiki/GetEventHandlers
	**/
	static function getEventHandlers():Void

	/**
		Gets the currently queued latent events. The last one in the table is always the latest event queued. Each returned handle can be used with getLatentEventStatus or cancelLatentEvent

		@see https://wiki.mtasa.com/wiki/GetLatentEventHandles
	**/
	static function getLatentEventHandles():Void

	/**
		Gets the status of one queued latent event.Returns a table with the following info or false if invalid arguments were passed:

		@see https://wiki.mtasa.com/wiki/GetLatentEventStatus
	**/
	static function getLatentEventStatus():Void

	/**
		This functions removes a handler function from an event, so that the function is not called anymore when the event is triggered. See event system for more information on how the event system works.Returns true if the event handler was removed successfully. Returns false if the specified event handler could not be found or invalid parameters were passed.

		@see https://wiki.mtasa.com/wiki/RemoveEventHandler
	**/
	static function removeEventHandler():Void

	/**
		This function will trigger a named event on a specific element in the element tree. See event system for more information on how the event system works.You can use the value returned from this function to determine if the event was cancelled by one of the event handlers. You should determine what your response (if any) to this should be based on the event's purpose. Generally, cancelling an event should prevent any further code being run that is dependent on whatever triggered that event. For example, if you have an onFlagCapture event, cancelling it would be expected to prevent the flag being able to be captured. Similarly, if you have onPlayerKill as an event you trigger, canceling it would either be expected to prevent the player being killed from dying or at least prevent the player from getting a score for it.

		@see https://wiki.mtasa.com/wiki/TriggerEvent
	**/
	static function triggerEvent():Void

	/**
		This function triggers an event previously registered on a client. This is the primary means of passing information between the server and the client. Clients have a similar triggerServerEvent function that can do the reverse. You can treat this function as if it was an asynchronous function call, using triggerServerEvent to pass back any returned information if necessary.Almost any data types can be passed as expected, including elements and complex nested tables. Non-element MTA data types like xmlNodes or resource pointers will not be able to be passed as they do not necessarily have a valid representation on the client.

		@see https://wiki.mtasa.com/wiki/TriggerClientEvent
	**/
	static function triggerClientEvent():Void

	/**
		This function is the same as triggerClientEvent  except the transmission rate of the data contained in the arguments can be limited
and other network traffic is not blocked while the data is being transferred.Returns true if the event trigger has been sent, false if invalid arguments were specified.

		@see https://wiki.mtasa.com/wiki/TriggerLatentClientEvent
	**/
	static function triggerLatentClientEvent():Void

	/**
		This function checks if the last completed event was cancelled. This is mainly useful for custom events created by scripts.

		@see https://wiki.mtasa.com/wiki/WasEventCancelled
	**/
	static function wasEventCancelled():Void

	/**
		Creates an explosion of a certain type at a specified point in the world. If creator is specified, the explosion will occur only in its dimension.

		@see https://wiki.mtasa.com/wiki/CreateExplosion
	**/
	static function createExplosion():Void

	/**
		Closes a file handle obtained by fileCreate or fileOpen.

		@see https://wiki.mtasa.com/wiki/FileClose
	**/
	static function fileClose():Void

	/**
		This function copies a file.

		@see https://wiki.mtasa.com/wiki/FileCopy
	**/
	static function fileCopy():Void

	/**
		Creates a new file in a directory of a resource. If there already exists a file with the specified name, it is overwritten with an empty file.

		@see https://wiki.mtasa.com/wiki/FileCreate
	**/
	static function fileCreate():Void

	/**
		Deletes the specified file.

		@see https://wiki.mtasa.com/wiki/FileDelete
	**/
	static function fileDelete():Void

	/**
		This functions checks whether a specified file exists inside a resource.

		@see https://wiki.mtasa.com/wiki/FileExists
	**/
	static function fileExists():Void

	/**
		Forces pending disk writes to be executed. fileWrite doesn't directly write to the hard disk but places the data in a temporary buffer; only when there is enough data in the buffer it is actually written to disk. Call this function if you need the data written right now without closing the file. This is useful for log files that might want to be read while the resource is still executing. fileFlush can be called after each log entry is written. Without this, the file may appear empty or outdated to the user.

		@see https://wiki.mtasa.com/wiki/FileFlush
	**/
	static function fileFlush():Void

	/**
		This function retrieves the path of the given file.Returns a string representing the file path, false if invalid file was provided.

		@see https://wiki.mtasa.com/wiki/FileGetPath
	**/
	static function fileGetPath():Void

	/**
		Returns the current read/write position in the given file.

		@see https://wiki.mtasa.com/wiki/FileGetPos
	**/
	static function fileGetPos():Void

	/**
		Returns the total size in bytes of the given file.

		@see https://wiki.mtasa.com/wiki/FileGetSize
	**/
	static function fileGetSize():Void

	/**
		Checks if the file position is at the end of the file.

		@see https://wiki.mtasa.com/wiki/FileIsEOF
	**/
	static function fileIsEOF():Void

	/**
		Opens an existing file for reading and writing.

		@see https://wiki.mtasa.com/wiki/FileOpen
	**/
	static function fileOpen():Void

	/**
		Reads the specified number of bytes from the given file starting at its current read/write position, and returns them as a string.

		@see https://wiki.mtasa.com/wiki/FileRead
	**/
	static function fileRead():Void

	/**
		Renames the specified file.

		@see https://wiki.mtasa.com/wiki/FileRename
	**/
	static function fileRename():Void

	/**
		Sets the current read/write position in the file.

		@see https://wiki.mtasa.com/wiki/FileSetPos
	**/
	static function fileSetPos():Void

	/**
		Writes one or more strings to a given file, starting at the current read/write position. Advances the position over the number of bytes that were written.

		@see https://wiki.mtasa.com/wiki/FileWrite
	**/
	static function fileWrite():Void

	/**
		This function removes all text from the current HTML output.Returns true if the output buffer was cleared successfully, false otherwise.

		@see https://wiki.mtasa.com/wiki/HttpClear
	**/
	static function httpClear():Void

	/**
		This function makes the user's browser show a 'basic authentication' login box. The result of the login is handled automatically by the server. If the user has not logged in satisfactorily, you should just call the httpRequestLogin function again. It is the script's responsibility to judge when the user is logged in satisfactorily - you can use the user variable can be used to check if the user has logged in with an account you are happy with. If the logged in user doesn't meet whatever criteria you have, you can just call httpRequestLogin again and they will be re-promoted for their password.This function works by setting a header ('Authentication') and a return code (403 - Authentication required). As such, nothing happens until you finish the page. The content of the page is generally not displayed unless the login fails.

		@see https://wiki.mtasa.com/wiki/HttpRequestLogin
	**/
	static function httpRequestLogin():Void

	/**
		This function sets the HTTP status code that will be sent for the current HTML page.Returns true if the code was set successfully, false otherwise.

		@see https://wiki.mtasa.com/wiki/HttpSetResponseCode
	**/
	static function httpSetResponseCode():Void

	/**
		This function sets the value for the specified HTTP cookie of the current HTML page.Returns true if the cookie value was set successfully, false otherwise.

		@see https://wiki.mtasa.com/wiki/HttpSetResponseCookie
	**/
	static function httpSetResponseCookie():Void

	/**
		This function sets the value for the specified HTTP response header of the current HTML page.Returns true if the header value was set successfully, false otherwise.

		@see https://wiki.mtasa.com/wiki/HttpSetResponseHeader
	**/
	static function httpSetResponseHeader():Void

	/**
		This function adds text to the output of the current HTTP file of the HTTP interface. The function can only be used on parsed (i.e not marked as raw) HTTP pages. httpWrite can support outputing binary data, if you specify the length of the data you are outtputing. If you do this, you should ensure you set an accurate content-type using httpSetResponseHeader otherwise it may be displayed inconsistently by browsers.The following shortcut syntax is also supported (the space between the <* and the = is optional):

		@see https://wiki.mtasa.com/wiki/HttpWrite
	**/
	static function httpWrite():Void

	/**
		This function will attach a scripting function (handler) to a console command, so that whenever a player or administrator uses the command the function is called.
Note: You cannot use "check", "list" or "test" as a command name.

		@see https://wiki.mtasa.com/wiki/AddCommandHandler
	**/
	static function addCommandHandler():Void

	/**
		Binds a player's key to a handler function or command, which will be called when the key is pressed.

		@see https://wiki.mtasa.com/wiki/BindKey
	**/
	static function bindKey():Void

	/**
		This function will call all the attached functions of an existing console command, for a specified player.

		@see https://wiki.mtasa.com/wiki/ExecuteCommandHandler
	**/
	static function executeCommandHandler():Void

	/**
		This function is used to retrieve a list of all the registered command handlers of a given resource (or of all resources).

		@see https://wiki.mtasa.com/wiki/GetCommandHandlers
	**/
	static function getCommandHandlers():Void

	/**
		This function will check if a player is pressing a particular control. Controls are those that affect GTA. If you wish to get the state of another key, use bindKey and a command function.

		@see https://wiki.mtasa.com/wiki/GetControlState
	**/
	static function getControlState():Void

	/**
		Gets the functions bound to a key. To bind a function to a key use the bindKey function

		@see https://wiki.mtasa.com/wiki/GetFunctionsBoundToKey
	**/
	static function getFunctionsBoundToKey():Void

	/**
		getKeyBoundToFunction allows retrieval of the first key bound to a function.Returns a string of the first key the function was bound to.

		@see https://wiki.mtasa.com/wiki/GetKeyBoundToFunction
	**/
	static function getKeyBoundToFunction():Void

	/**
		Checks whether a GTA control is enabled or disabled for a certain player.

		@see https://wiki.mtasa.com/wiki/IsControlEnabled
	**/
	static function isControlEnabled():Void

	/**
		This function can be used to find out if a key has already been bound.

		@see https://wiki.mtasa.com/wiki/IsKeyBound
	**/
	static function isKeyBound():Void

	/**
		This function removes a command handler, that is one that has been added using addCommandHandler. This function can only remove command handlers that were added by the resource that it is called in.

		@see https://wiki.mtasa.com/wiki/RemoveCommandHandler
	**/
	static function removeCommandHandler():Void

	/**
		Sets a state of a specified player's control, as if they pressed or released it.

		@see https://wiki.mtasa.com/wiki/SetControlState
	**/
	static function setControlState():Void

	/**
		Enables or disables the use of all GTA controls for a specified player.NOTE: When using optional arguments, you might need to supply all arguments before the one you wish to use. For more information on optional arguments, see optional arguments.

		@see https://wiki.mtasa.com/wiki/ToggleAllControls
	**/
	static function toggleAllControls():Void

	/**
		Enables or disables the use of a GTA control for a specific player.This function true if the control was set successfully, false otherwise.

		@see https://wiki.mtasa.com/wiki/ToggleControl
	**/
	static function toggleControl():Void

	/**
		Removes an existing key bind from the specified player.Note: If you do not specify handler, any instances of key being bound will be unbound, whatever function they are bound to.

		@see https://wiki.mtasa.com/wiki/UnbindKey
	**/
	static function unbindKey():Void

	/**
		This function is intended to load data from a loaded XML file into the element tree. This could be used for loading an external map, or part of another map.

		@see https://wiki.mtasa.com/wiki/LoadMapData
	**/
	static function loadMapData():Void

	/**
		This function is used to reset the state of a player.  It is intended to restore a player to his default state as if he had just joined the server, without any scripts affecting him.

		@see https://wiki.mtasa.com/wiki/ResetMapInfo
	**/
	static function resetMapInfo():Void

	/**
		This converts a set of elements in the element tree into XML. This is a format that can then be loaded as a map file. Each element represents a single XML node.

		@see https://wiki.mtasa.com/wiki/SaveMapData
	**/
	static function saveMapData():Void

	/**
		This function creates a marker. A marker is a 3D model in the world that can highlight a particular point or area, often used to instruct players where to go to perform actions such as entering buildings.

		@see https://wiki.mtasa.com/wiki/CreateMarker
	**/
	static function createMarker():Void

	/**
		This function returns the color and transparency for a marker element. Not all marker types support transparency.

		@see https://wiki.mtasa.com/wiki/GetMarkerColor
	**/
	static function getMarkerColor():Void

	/**
		Returns the number of markers that currently exist in the world.None

		@see https://wiki.mtasa.com/wiki/GetMarkerCount
	**/
	static function getMarkerCount():Void

	/**
		This function returns the icon name for a marker.

		@see https://wiki.mtasa.com/wiki/GetMarkerIcon
	**/
	static function getMarkerIcon():Void

	/**
		This function returns a float containing the size of the specified marker.

		@see https://wiki.mtasa.com/wiki/GetMarkerSize
	**/
	static function getMarkerSize():Void

	/**
		This function returns the position of the specified marker's target, the position it points to. This only works for checkpoint markers and ring markers. For checkpoints it returns the position the arrow is pointing to, for ring markers it returns the position the ring is facing. You can set this target with setMarkerTarget.

		@see https://wiki.mtasa.com/wiki/GetMarkerTarget
	**/
	static function getMarkerTarget():Void

	/**
		This function returns a marker's type.

		@see https://wiki.mtasa.com/wiki/GetMarkerType
	**/
	static function getMarkerType():Void

	/**
		This function sets the color of the specified marker by modifying the values for red, green and blue.

		@see https://wiki.mtasa.com/wiki/SetMarkerColor
	**/
	static function setMarkerColor():Void

	/**
		This function allows changing the icon of a checkpoint marker.

		@see https://wiki.mtasa.com/wiki/SetMarkerIcon
	**/
	static function setMarkerIcon():Void

	/**
		This function sets the size of the specified marker.Setting negative value will "flip" the marker, do nothing or make it invisible:

		@see https://wiki.mtasa.com/wiki/SetMarkerSize
	**/
	static function setMarkerSize():Void

	/**
		This function sets the 'target' for a marker. Only the checkpoint and ring marker types can have a target.

		@see https://wiki.mtasa.com/wiki/SetMarkerTarget
	**/
	static function setMarkerTarget():Void

	/**
		This function changes a marker's type. The type controls how the marker is displayed in the game. It's important that you use marker types that users are used to from the single player game. For example, checkpoints are used in races, rings are used for aircraft races, arrows are used for entering buildings etc.

		@see https://wiki.mtasa.com/wiki/SetMarkerType
	**/
	static function setMarkerType():Void

	/**
		Matrices are one of the most powerful features of MTA OOP. We did have a presence of Matrices before with getElementMatrix, but we were given an ugly disgusting table to play with. Now, with the new Matrix class, we can make and magically manipulate Matrices.This is default constructor for the Matrix class and returns a Matrix object. You can instantiate a Matrix object in several ways, as described below.

		@see https://wiki.mtasa.com/wiki/Matrix
	**/
	static function Matrix():Void

	/**
		The Vector2 class is a class introduced in 1.4This is default constructor for the Vector2 class and returns a Vector2 object.

		@see https://wiki.mtasa.com/wiki/Vector/Vector2
	**/
	static function Vector/Vector2():Void

	/**
		The vector3 class represents a three-dimensional vector.This is default constructor for the Vector3 class and returns a Vector3 object.

		@see https://wiki.mtasa.com/wiki/Vector/Vector3
	**/
	static function Vector/Vector3():Void

	/**
		The Vector4 class is a class introduced in 1.4This is default constructor for the Vector4 class and returns a Vector4 object.

		@see https://wiki.mtasa.com/wiki/Vector/Vector4
	**/
	static function Vector/Vector4():Void

	/**
		This function returns all the currently loaded modules of the server.Returns a table of all the currently loaded modules. If no modules are loaded, the table will be empty.

		@see https://wiki.mtasa.com/wiki/GetLoadedModules
	**/
	static function getLoadedModules():Void

	/**
		This function returns information about the specified module.Returns a table containing information about module. These keys are present in the table:

		@see https://wiki.mtasa.com/wiki/GetModuleInfo
	**/
	static function getModuleInfo():Void

	/**
		Creates an object in the GTA world.

		@see https://wiki.mtasa.com/wiki/CreateObject
	**/
	static function createObject():Void

	/**
		This function returns the visible size of an object.

		@see https://wiki.mtasa.com/wiki/GetObjectScale
	**/
	static function getObjectScale():Void

	/**
		This function will smoothly move an object from its current position to a specified rotation and position.

		@see https://wiki.mtasa.com/wiki/MoveObject
	**/
	static function moveObject():Void

	/**
		This function changes the visible size of an object.

		@see https://wiki.mtasa.com/wiki/SetObjectScale
	**/
	static function setObjectScale():Void

	/**
		This will allow you to stop an object that is currently moving.

		@see https://wiki.mtasa.com/wiki/StopObject
	**/
	static function stopObject():Void

	/**
		This function clears the chatbox. It does not clear the console (F8)Returns true if the player's chat was cleared successfully, false otherwise.

		@see https://wiki.mtasa.com/wiki/ClearChatBox
	**/
	static function clearChatBox():Void

	/**
		This outputs the specified text string to the chatbox. It can be specified as a message to certain player(s) or all players.

		@see https://wiki.mtasa.com/wiki/OutputChatBox
	**/
	static function outputChatBox():Void

	/**
		This outputs the specified text string to the console window (accessed with F8 or ~ key). It can be specified as a message to certain player(s) or all players.

		@see https://wiki.mtasa.com/wiki/OutputConsole
	**/
	static function outputConsole():Void

	/**
		This function outputs scripting debug messages, which can be read by enabling the debug textbox. The debug display level can then be set so that info or warning messages get filtered out.

		@see https://wiki.mtasa.com/wiki/OutputDebugString
	**/
	static function outputDebugString():Void

	/**
		This outputs a line of text to the server's log. This could be useful for debugging.

		@see https://wiki.mtasa.com/wiki/OutputServerLog
	**/
	static function outputServerLog():Void

	/**
		This function is used to show or hide the player's chat.Returns true if the player's chat was shown or hidden successfully, false otherwise.

		@see https://wiki.mtasa.com/wiki/ShowChat
	**/
	static function showChat():Void

	/**
		This function is used to set the current clothes on a ped.

		@see https://wiki.mtasa.com/wiki/AddPedClothes
	**/
	static function addPedClothes():Void

	/**
		Creates a Ped in the GTA world.NOTE: When using optional arguments, you might need to supply all arguments before the one you wish to use. For more information on optional arguments, see optional arguments.

		@see https://wiki.mtasa.com/wiki/CreatePed
	**/
	static function createPed():Void

	/**
		This function returns an integer that contains the ammo in a specified ped's weapon. See Weapon Info

		@see https://wiki.mtasa.com/wiki/GetPedAmmoInClip
	**/
	static function getPedAmmoInClip():Void

	/**
		This function returns the current armor of the specified ped.

		@see https://wiki.mtasa.com/wiki/GetPedArmor
	**/
	static function getPedArmor():Void

	/**
		This function is used to get the current clothes texture and model of a certain type on a ped.

		@see https://wiki.mtasa.com/wiki/GetPedClothes
	**/
	static function getPedClothes():Void

	/**
		This function detects the element a ped is standing on. This can be a vehicle or an object.

		@see https://wiki.mtasa.com/wiki/GetPedContactElement
	**/
	static function getPedContactElement():Void

	/**
		Retrieves the fighting style a player/ped is currently using.

		@see https://wiki.mtasa.com/wiki/GetPedFightingStyle
	**/
	static function getPedFightingStyle():Void

	/**
		This function returns the current gravity for the specified ped. The default gravity is 0.008.

		@see https://wiki.mtasa.com/wiki/GetPedGravity
	**/
	static function getPedGravity():Void

	/**
		This function gets the vehicle that the ped is currently in or is trying to enter, if any.

		@see https://wiki.mtasa.com/wiki/GetPedOccupiedVehicle
	**/
	static function getPedOccupiedVehicle():Void

	/**
		This function gets the seat that a specific ped is sitting in in a vehicle.

		@see https://wiki.mtasa.com/wiki/GetPedOccupiedVehicleSeat
	**/
	static function getPedOccupiedVehicleSeat():Void

	/**
		This function returns the value of the specified statistic of a specific ped.

		@see https://wiki.mtasa.com/wiki/GetPedStat
	**/
	static function getPedStat():Void

	/**
		This function is used to get the element a ped is currently targeting.

		@see https://wiki.mtasa.com/wiki/GetPedTarget
	**/
	static function getPedTarget():Void

	/**
		This function returns an integer that contains the total ammo in a specified ped's weapon. See Weapon Info

		@see https://wiki.mtasa.com/wiki/GetPedTotalAmmo
	**/
	static function getPedTotalAmmo():Void

	/**
		Returns the walking style ID of a ped. This ID determines the set of animations that is used for walking, running etc.

		@see https://wiki.mtasa.com/wiki/GetPedWalkingStyle
	**/
	static function getPedWalkingStyle():Void

	/**
		This function tells you which weapon type is in a certain weapon slot of a ped. See Weapon Info

		@see https://wiki.mtasa.com/wiki/GetPedWeapon
	**/
	static function getPedWeapon():Void

	/**
		This function gets a ped's selected weapon slot.

		@see https://wiki.mtasa.com/wiki/GetPedWeaponSlot
	**/
	static function getPedWeaponSlot():Void

	/**
		This function returns all valid ped models.

		@see https://wiki.mtasa.com/wiki/GetValidPedModels
	**/
	static function getValidPedModels():Void

	/**
		This function checks if the specified ped is choking (coughing) or not. This happens as a result of weapons that produce smoke - smoke grenades, fire extinguisher and the spray can.

		@see https://wiki.mtasa.com/wiki/IsPedChoking
	**/
	static function isPedChoking():Void

	/**
		This function checks if the specified ped is dead or not.

		@see https://wiki.mtasa.com/wiki/IsPedDead
	**/
	static function isPedDead():Void

	/**
		This function checks if the ped is in the driveby state.

		@see https://wiki.mtasa.com/wiki/IsPedDoingGangDriveby
	**/
	static function isPedDoingGangDriveby():Void

	/**
		This function checks if the specified ped is ducked (crouched) or not.

		@see https://wiki.mtasa.com/wiki/IsPedDucked
	**/
	static function isPedDucked():Void

	/**
		With this function, you can check if a ped has a head or not.Returns true if the ped is headless, false otherwise.

		@see https://wiki.mtasa.com/wiki/IsPedHeadless
	**/
	static function isPedHeadless():Void

	/**
		Checks whether or not a given ped is currently in a vehicle. This also returns true if they're trying to enter a vehicle.

		@see https://wiki.mtasa.com/wiki/IsPedInVehicle
	**/
	static function isPedInVehicle():Void

	/**
		This function checks if the specified ped is on fire or not.

		@see https://wiki.mtasa.com/wiki/IsPedOnFire
	**/
	static function isPedOnFire():Void

	/**
		This function is used to determine whether or not a ped is on the ground. This is for on-foot usage only.

		@see https://wiki.mtasa.com/wiki/IsPedOnGround
	**/
	static function isPedOnGround():Void

	/**
		Checks whether or not a ped is currently wearing a jetpack.

		@see https://wiki.mtasa.com/wiki/IsPedWearingJetpack
	**/
	static function isPedWearingJetpack():Void

	/**
		This function kills the specified ped.

		@see https://wiki.mtasa.com/wiki/KillPed
	**/
	static function killPed():Void

	/**
		This function makes a pedestrian reload their weapon.

		@see https://wiki.mtasa.com/wiki/ReloadPedWeapon
	**/
	static function reloadPedWeapon():Void

	/**
		This function is used to remove the current clothes of a certain type on a ped. It will remove them if the clothesTexture and clothesModel aren't specified, or if they match the current clothes on that slot.

		@see https://wiki.mtasa.com/wiki/RemovePedClothes
	**/
	static function removePedClothes():Void

	/**
		This function removes a ped from a vehicle immediately. This works for drivers and passengers. Note that this removes the ped from the vehicle and puts him in the exact position where the command was initiated.

		@see https://wiki.mtasa.com/wiki/RemovePedFromVehicle
	**/
	static function removePedFromVehicle():Void

	/**
		Sets the current animation of a player or ped. Not specifying the type of animation will automatically cancel the current one.

		@see https://wiki.mtasa.com/wiki/SetPedAnimation
	**/
	static function setPedAnimation():Void

	/**
		Sets the current animation progress of a player or ped.

		@see https://wiki.mtasa.com/wiki/SetPedAnimationProgress
	**/
	static function setPedAnimationProgress():Void

	/**
		Sets the speed of a currently running animation for a particular player or ped.

		@see https://wiki.mtasa.com/wiki/SetPedAnimationSpeed
	**/
	static function setPedAnimationSpeed():Void

	/**
		This function allows you to set the armor value of a ped.

		@see https://wiki.mtasa.com/wiki/SetPedArmor
	**/
	static function setPedArmor():Void

	/**
		This function can be used to force the ped to do the choking (coughing) animation until he respawns or toggled off using this function. The animation can not be cancelled by a player it's applied to, and he will not loose health.

		@see https://wiki.mtasa.com/wiki/SetPedChoking
	**/
	static function setPedChoking():Void

	/**
		This function sets the driveby state of a ped.

		@see https://wiki.mtasa.com/wiki/SetPedDoingGangDriveby
	**/
	static function setPedDoingGangDriveby():Void

	/**
		Changes a ped's fighting style. Most styles only change the 'special attack' which is done using the Aim and Enter keys.Fighting Styles:

		@see https://wiki.mtasa.com/wiki/SetPedFightingStyle
	**/
	static function setPedFightingStyle():Void

	/**
		This function sets the gravity level of a ped.

		@see https://wiki.mtasa.com/wiki/SetPedGravity
	**/
	static function setPedGravity():Void

	/**
		With this function, you can set if a ped has a head or not.

		@see https://wiki.mtasa.com/wiki/SetPedHeadless
	**/
	static function setPedHeadless():Void

	/**
		This function can be used to set a ped on fire or extinguish a fire on it.

		@see https://wiki.mtasa.com/wiki/SetPedOnFire
	**/
	static function setPedOnFire():Void

	/**
		This function allows you to set the value of a specific statistic for a ped. Visual stats (FAT and BODY_MUSCLE) can only be used on the CJ skin, they have no effect on other skins.

		@see https://wiki.mtasa.com/wiki/SetPedStat
	**/
	static function setPedStat():Void

	/**
		Sets the walking style of a ped. A walking style consists of a set of animations that are used for walking, running etc.

		@see https://wiki.mtasa.com/wiki/SetPedWalkingStyle
	**/
	static function setPedWalkingStyle():Void

	/**
		This function changes the selected weapon slot of a ped.

		@see https://wiki.mtasa.com/wiki/SetPedWeaponSlot
	**/
	static function setPedWeaponSlot():Void

	/**
		This function is used to give or take a jetpack from a ped, it won't work if the ped is in a vehicle.As such, you should either expect it to fail sometimes, or repeatedly try to give a jetpack every second or so until isPedWearingJetpack returns true. Alternatively, you can force the ped into a 'safe' position (e.g. standing on the ground) before giving the jetpack, or use a pickup to handle it.

		@see https://wiki.mtasa.com/wiki/SetPedWearingJetpack
	**/
	static function setPedWearingJetpack():Void

	/**
		This function is used to warp or force a ped into a vehicle.  There are no animations involved when this happens.Available client side from 1.3.1 (It will only work with client side vehicles and peds)

		@see https://wiki.mtasa.com/wiki/WarpPedIntoVehicle
	**/
	static function warpPedIntoVehicle():Void

	/**
		This function creates a pickup element, which is placed in the GTA world and can be picked up to retrieve a health, armour or a weapon.

		@see https://wiki.mtasa.com/wiki/CreatePickup
	**/
	static function createPickup():Void

	/**
		This function retrieves the amount of ammo in a weapon pickup.Returns an integer of the amount of ammo in the pickup, false if the pickup element is invalid, 0 if it's no weapon pickup.

		@see https://wiki.mtasa.com/wiki/GetPickupAmmo
	**/
	static function getPickupAmmo():Void

	/**
		This function retrieves the amount of health or armor given from a pickup.Returns an integer of the amount the pickup is set to, false if it's invalid, 0 if it's no health or amor pickup.

		@see https://wiki.mtasa.com/wiki/GetPickupAmount
	**/
	static function getPickupAmount():Void

	/**
		Returns the time it takes before a pickup respawns after a player picked it up. The time is specified in milliseconds.Returns the respawn time of the pickup if successful, false in case of failure.

		@see https://wiki.mtasa.com/wiki/GetPickupRespawnInterval
	**/
	static function getPickupRespawnInterval():Void

	/**
		This function retrieves the type of a pickup, either a health, armour or weapon pickup.Returns false if the pickup is invalid, or an integer of the type of the pickup, which include:

		@see https://wiki.mtasa.com/wiki/GetPickupType
	**/
	static function getPickupType():Void

	/**
		This function retrieves the weapon ID of a weapon pickup.

		@see https://wiki.mtasa.com/wiki/GetPickupWeapon
	**/
	static function getPickupWeapon():Void

	/**
		This function checks if a pickup is currently spawned (is visible and can be picked up) or not (a player picked it up recently).

		@see https://wiki.mtasa.com/wiki/IsPickupSpawned
	**/
	static function isPickupSpawned():Void

	/**
		Sets the time it takes for a pickup to respawn after a player picked it up.

		@see https://wiki.mtasa.com/wiki/SetPickupRespawnInterval
	**/
	static function setPickupRespawnInterval():Void

	/**
		This function allows changing the type of a pickup to a Weapon, Armour or Health pickup, and allows you to set the health points or the weapon and ammo that the pickup will give.OR

		@see https://wiki.mtasa.com/wiki/SetPickupType
	**/
	static function setPickupType():Void

	/**
		This function is used to simulate the player using a pickupThis example gives a random player 100% armor by using a pickup.

		@see https://wiki.mtasa.com/wiki/UsePickup
	**/
	static function usePickup():Void

	/**
		This function is used to forcefully show a player's radar map.

		@see https://wiki.mtasa.com/wiki/ForcePlayerMap
	**/
	static function forcePlayerMap():Void

	/**
		This function returns a table of all the alive players on the server. Opposite function of getDeadPlayers.

		@see https://wiki.mtasa.com/wiki/GetAlivePlayers
	**/
	static function getAlivePlayers():Void

	/**
		This function returns a table of all currently dead players on the server.

		@see https://wiki.mtasa.com/wiki/GetDeadPlayers
	**/
	static function getDeadPlayers():Void

	/**
		

		@see https://wiki.mtasa.com/wiki/GetPlayerACInfo
	**/
	static function getPlayerACInfo():Void

	/**
		This function retrieves a players ASE announce value under a certain key.

		@see https://wiki.mtasa.com/wiki/GetPlayerAnnounceValue
	**/
	static function getPlayerAnnounceValue():Void

	/**
		This function allows you to check the current blur level of a specified player.

		@see https://wiki.mtasa.com/wiki/GetPlayerBlurLevel
	**/
	static function getPlayerBlurLevel():Void

	/**
		This function returns the number of players currently connected to the server.

		@see https://wiki.mtasa.com/wiki/GetPlayerCount
	**/
	static function getPlayerCount():Void

	/**
		This function returns a player element for the player with the name passed to the function.

		@see https://wiki.mtasa.com/wiki/GetPlayerFromName
	**/
	static function getPlayerFromName():Void

	/**
		This function gets the amount of time in milliseconds that a players position has not changed.

		@see https://wiki.mtasa.com/wiki/GetPlayerIdleTime
	**/
	static function getPlayerIdleTime():Void

	/**
		This function returns a string containing the IP address of the player.

		@see https://wiki.mtasa.com/wiki/GetPlayerIP
	**/
	static function getPlayerIP():Void

	/**
		Returns the amount of money a player currently has.Note: The amount may vary between the server and client, you shouldn't trust the client side value to always be accurate.

		@see https://wiki.mtasa.com/wiki/GetPlayerMoney
	**/
	static function getPlayerMoney():Void

	/**
		This function returns a string containing the name of the specified player.

		@see https://wiki.mtasa.com/wiki/GetPlayerName
	**/
	static function getPlayerName():Void

	/**
		This function gets the current color of a player's name tag as RGB values. These are in the range 0-255.

		@see https://wiki.mtasa.com/wiki/GetPlayerNametagColor
	**/
	static function getPlayerNametagColor():Void

	/**
		This will allow you to retrieve the name tag a player is currently using.

		@see https://wiki.mtasa.com/wiki/GetPlayerNametagText
	**/
	static function getPlayerNametagText():Void

	/**
		This function returns the ping of a specified player. The ping is the number of milliseconds that data takes to travel from the player's client to the server or vice versa.

		@see https://wiki.mtasa.com/wiki/GetPlayerPing
	**/
	static function getPlayerPing():Void

	/**
		This function returns the serial for a specified player.

		@see https://wiki.mtasa.com/wiki/GetPlayerSerial
	**/
	static function getPlayerSerial():Void

	/**
		This function gets the current team a player is on.

		@see https://wiki.mtasa.com/wiki/GetPlayerTeam
	**/
	static function getPlayerTeam():Void

	/**
		This function gets the client version of the specified player as a sortable string. The string is always 15 characters long and is formatted as follows:

		@see https://wiki.mtasa.com/wiki/GetPlayerVersion
	**/
	static function getPlayerVersion():Void

	/**
		This function gets a player's current wanted level. The wanted level is indicated by the amount of stars a player has on the GTA HUD.

		@see https://wiki.mtasa.com/wiki/GetPlayerWantedLevel
	**/
	static function getPlayerWantedLevel():Void

	/**
		This function returns a random player.

		@see https://wiki.mtasa.com/wiki/GetRandomPlayer
	**/
	static function getRandomPlayer():Void

	/**
		This function adds money to a player's current money amount.  To set absolute values, setPlayerMoney can be used.

		@see https://wiki.mtasa.com/wiki/GivePlayerMoney
	**/
	static function givePlayerMoney():Void

	/**
		This function checks if the specified player's radar map has been forced on or not.

		@see https://wiki.mtasa.com/wiki/IsPlayerMapForced
	**/
	static function isPlayerMapForced():Void

	/**
		Use this function to check if a player has been muted.

		@see https://wiki.mtasa.com/wiki/IsPlayerMuted
	**/
	static function isPlayerMuted():Void

	/**
		This function will allow you to determine if a player's name tag is currently showing.

		@see https://wiki.mtasa.com/wiki/IsPlayerNametagShowing
	**/
	static function isPlayerNametagShowing():Void

	/**
		Added to client side.
This function allows you to make the server reveal whether or not voice is currently enabled.

		@see https://wiki.mtasa.com/wiki/IsVoiceEnabled
	**/
	static function isVoiceEnabled():Void

	/**
		This function redirects the player to a specified server.

		@see https://wiki.mtasa.com/wiki/RedirectPlayer
	**/
	static function redirectPlayer():Void

	/**
		This function will force the specified player to resend their AC info, triggering the onPlayerACInfo event again.Returns true if the AC info will be resent, false otherwise.

		@see https://wiki.mtasa.com/wiki/ResendPlayerACInfo
	**/
	static function resendPlayerACInfo():Void

	/**
		This function will force the specified player to resend their mod info, triggering the onPlayerModInfo event again.

		@see https://wiki.mtasa.com/wiki/ResendPlayerModInfo
	**/
	static function resendPlayerModInfo():Void

	/**
		This function allows you to change ASE announce values for any player using a specified key.
As an example this can be used to change the "score" value which will be shown at game-monitor.com's server list.

		@see https://wiki.mtasa.com/wiki/SetPlayerAnnounceValue
	**/
	static function setPlayerAnnounceValue():Void

	/**
		Sets the motion blur level on the clients screen. Accepts a value between 0 and 255.

		@see https://wiki.mtasa.com/wiki/SetPlayerBlurLevel
	**/
	static function setPlayerBlurLevel():Void

	/**
		This function will show or hide a part of the player's HUD.

		@see https://wiki.mtasa.com/wiki/SetPlayerHudComponentVisible
	**/
	static function setPlayerHudComponentVisible():Void

	/**
		Sets a player's money to a certain value, regardless of current player money. It should be noted that setting negative values does not work and in fact gives the player large amounts of money.

		@see https://wiki.mtasa.com/wiki/SetPlayerMoney
	**/
	static function setPlayerMoney():Void

	/**
		Use this function to mute or unmute the player.

		@see https://wiki.mtasa.com/wiki/SetPlayerMuted
	**/
	static function setPlayerMuted():Void

	/**
		This function changes the specified player's name. Note that any change made to a players name with this function is not saved in their settings so the name change only lasts till they disconnect.

		@see https://wiki.mtasa.com/wiki/SetPlayerName
	**/
	static function setPlayerName():Void

	/**
		This allows you to change the RGB color mixture in the name tags of players.OR

		@see https://wiki.mtasa.com/wiki/SetPlayerNametagColor
	**/
	static function setPlayerNametagColor():Void

	/**
		This function allows you to set whether a player's nametag visibility both clientside and serversideUse this to define whether the player's name tag is visible or invisible.

		@see https://wiki.mtasa.com/wiki/SetPlayerNametagShowing
	**/
	static function setPlayerNametagShowing():Void

	/**
		This will change the text of a player's nickname in the world to something besides the nickname he chose. This will not change the player's actual nickname, it only changes the visible aspect inside the world (you will see his original nickname in the scoreboard and will refer to his original name in scripts).

		@see https://wiki.mtasa.com/wiki/SetPlayerNametagText
	**/
	static function setPlayerNametagText():Void

	/**
		This function adds a player to an existing team. The player will automatically be removed from his current team if he's on one.

		@see https://wiki.mtasa.com/wiki/SetPlayerTeam
	**/
	static function setPlayerTeam():Void

	/**
		This function allows you to change who can hear the voice of a player.

		@see https://wiki.mtasa.com/wiki/SetPlayerVoiceBroadcastTo
	**/
	static function setPlayerVoiceBroadcastTo():Void

	/**
		This function allows you to mute voices for a player.

		@see https://wiki.mtasa.com/wiki/SetPlayerVoiceIgnoreFrom
	**/
	static function setPlayerVoiceIgnoreFrom():Void

	/**
		This function is used to set a player's wanted level. The wanted level is indicated by the amount of stars a player has on the GTA HUD.

		@see https://wiki.mtasa.com/wiki/SetPlayerWantedLevel
	**/
	static function setPlayerWantedLevel():Void

	/**
		This function spawns the player at an arbitary point on the map.

		@see https://wiki.mtasa.com/wiki/SpawnPlayer
	**/
	static function spawnPlayer():Void

	/**
		This function subtracts money from a player's current money amount.

		@see https://wiki.mtasa.com/wiki/TakePlayerMoney
	**/
	static function takePlayerMoney():Void

	/**
		This function forces a client to capture the current screen output and send it back to the server. The image will contain the GTA HUD and the output of any dxDraw functions that are not flagged as 'post GUI'. The image specifically excludes the chat box and all GUI (including the client console). The result is received with the event onPlayerScreenShot.

		@see https://wiki.mtasa.com/wiki/TakePlayerScreenShot
	**/
	static function takePlayerScreenShot():Void

	/**
		This function can be used to detonate a players satchels.

		@see https://wiki.mtasa.com/wiki/DetonateSatchels
	**/
	static function detonateSatchels():Void

	/**
		This function can be used to create custom radar areas on the radar.

		@see https://wiki.mtasa.com/wiki/CreateRadarArea
	**/
	static function createRadarArea():Void

	/**
		This function can be used to retrieve the current color of a radar area.

		@see https://wiki.mtasa.com/wiki/GetRadarAreaColor
	**/
	static function getRadarAreaColor():Void

	/**
		This function is used for getting the X and Y size of an existing radar area.

		@see https://wiki.mtasa.com/wiki/GetRadarAreaSize
	**/
	static function getRadarAreaSize():Void

	/**
		This function checks if a 2D position is inside a radar area or not.

		@see https://wiki.mtasa.com/wiki/IsInsideRadarArea
	**/
	static function isInsideRadarArea():Void

	/**
		This function allows detection of whether a radar area is flashing or not.

		@see https://wiki.mtasa.com/wiki/IsRadarAreaFlashing
	**/
	static function isRadarAreaFlashing():Void

	/**
		Sets the color of an existing radar area.

		@see https://wiki.mtasa.com/wiki/SetRadarAreaColor
	**/
	static function setRadarAreaColor():Void

	/**
		This function makes an existing radar area flash in transparency.

		@see https://wiki.mtasa.com/wiki/SetRadarAreaFlashing
	**/
	static function setRadarAreaFlashing():Void

	/**
		This function changes the size of an existing radar area.

		@see https://wiki.mtasa.com/wiki/SetRadarAreaSize
	**/
	static function setRadarAreaSize():Void

	/**
		This function adds a new empty config file to an existing resource.

		@see https://wiki.mtasa.com/wiki/AddResourceConfig
	**/
	static function addResourceConfig():Void

	/**
		This function adds a new empty mapfile to an existing resource.

		@see https://wiki.mtasa.com/wiki/AddResourceMap
	**/
	static function addResourceMap():Void

	/**
		This function is used to call a function from another resource (which must be running).

		@see https://wiki.mtasa.com/wiki/Call
	**/
	static function call():Void

	/**
		This function allows you to call functions that have been exported with HTTP access by other MTA servers. The calls are asynchronous so you do not get an immediate result from the call, instead a callback function you specify is called when the call returns.You can also use this function to access a standard web page on a server you own by specifying the URL. The arguments you specify to callRemote are passed to the web page using HTTP POST as a JSON array. This will always have an array as the root element. The page must return a JSON formated *array* in the page's body with the results of the call (or an empty array if there are no results).

		@see https://wiki.mtasa.com/wiki/CallRemote
	**/
	static function callRemote():Void

	/**
		This function copies a specified resource with a new name.

		@see https://wiki.mtasa.com/wiki/CopyResource
	**/
	static function copyResource():Void

	/**
		This function creates an new, empty resource. This creates a directory matching the name you specify on disk, then creates an empty meta.xml file with a <meta> element in it.

		@see https://wiki.mtasa.com/wiki/CreateResource
	**/
	static function createResource():Void

	/**
		This function deletes a resource from the MTA memory and moves it to the /resources-cache/trash/ directory.

		@see https://wiki.mtasa.com/wiki/DeleteResource
	**/
	static function deleteResource():Void

	/**
		This function allows you to post and receive data from HTTP servers. The calls are asynchronous so you do not get an immediate result from the call, instead a callback function you specify is called when the download completes.In the case when the call fails, a string containing "ERROR" followed by an integer containing the error reason will be passed to the callback function. The reason for failure will be similar to errors found with websites - file not found, server not found and timeouts.

		@see https://wiki.mtasa.com/wiki/FetchRemote
	**/
	static function fetchRemote():Void

	/**
		This function retrieves the ACL request section from the meta.xml file of the given resource.Returns a table with the ACL requests for the given resource, or false if the resource is not valid. A valid resource with no ACL requests will return an empty table.

		@see https://wiki.mtasa.com/wiki/GetResourceACLRequests
	**/
	static function getResourceACLRequests():Void

	/**
		This function is used to return the root node of a configuration file. Config files must be predefined in a resource's meta file.  An alternative way to load XML files is to use xmlLoadFile.Returns the root node of the specified configuration file. If the file is corrupted, not defined in the meta file or doesn't exist, returns false.

		@see https://wiki.mtasa.com/wiki/GetResourceConfig
	**/
	static function getResourceConfig():Void

	/**
		This function retrieves the dynamic element root of a specified resource. The dynamic element root is the parent of elements that are created by scripts (e.g. with createObject) unless they specify a different parent.

		@see https://wiki.mtasa.com/wiki/GetResourceDynamicElementRoot
	**/
	static function getResourceDynamicElementRoot():Void

	/**
		Returns a table containing the names of the functions that a resource exports. It will return the exports of the current resource if there is no argument passed in.Returns a table of function names if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/GetResourceExportedFunctions
	**/
	static function getResourceExportedFunctions():Void

	/**
		This function is used to retrieve a resource from its name. A resource's name is the same as its folder or file archive name on the server (without the extension).

		@see https://wiki.mtasa.com/wiki/GetResourceFromName
	**/
	static function getResourceFromName():Void

	/**
		This function retrieves the value of any attribute in a resource info tag.

		@see https://wiki.mtasa.com/wiki/GetResourceInfo
	**/
	static function getResourceInfo():Void

	/**
		Used to check the last starting time and date of a resourceIf successful, returns the UNIX timestamp when the resource was last started, or the string "never" if the resource has not been started yet, otherwise false. Use in conjunction with getRealTime in order to retrieve detailed information.

		@see https://wiki.mtasa.com/wiki/GetResourceLastStartTime
	**/
	static function getResourceLastStartTime():Void

	/**
		This function retrieves the reason why a resource failed to start.

		@see https://wiki.mtasa.com/wiki/GetResourceLoadFailureReason
	**/
	static function getResourceLoadFailureReason():Void

	/**
		Gets the date and time at which a resource was last loaded in the server.If successful, returns the UNIX timestamp when the resource was loaded, otherwise false. Use in conjunction with getRealTime in order to retrieve detailed information.

		@see https://wiki.mtasa.com/wiki/GetResourceLoadTime
	**/
	static function getResourceLoadTime():Void

	/**
		This function retrieves the root element of a certain map in a specified resource.

		@see https://wiki.mtasa.com/wiki/GetResourceMapRootElement
	**/
	static function getResourceMapRootElement():Void

	/**
		This function gets the name of the specified resource.

		@see https://wiki.mtasa.com/wiki/GetResourceName
	**/
	static function getResourceName():Void

	/**
		This function returns the organizational file path (e.g. [admin]) of a resource.

		@see https://wiki.mtasa.com/wiki/GetResourceOrganizationalPath
	**/
	static function getResourceOrganizationalPath():Void

	/**
		This function retrieves a resource's root element. The resource's root element is the element in the element tree which is the parent of all elements that belong to a particular resource (except for elements specifically created elsewhere). You can attach event handlers to this element to easily capture events that originate from your resource (and global events that originate from the root element).

		@see https://wiki.mtasa.com/wiki/GetResourceRootElement
	**/
	static function getResourceRootElement():Void

	/**
		This function returns the state of a given resource

		@see https://wiki.mtasa.com/wiki/GetResourceState
	**/
	static function getResourceState():Void

	/**
		This function retrieves a table of all the resources that exist on the server.

		@see https://wiki.mtasa.com/wiki/GetResources
	**/
	static function getResources():Void

	/**
		This function retrieves the resource from which the function call was made.

		@see https://wiki.mtasa.com/wiki/GetThisResource
	**/
	static function getThisResource():Void

	/**
		Checks whether a resource is currently archived (running from within a ZIP file).

		@see https://wiki.mtasa.com/wiki/IsResourceArchived
	**/
	static function isResourceArchived():Void

	/**
		This function finds new resources and checks for changes to the current ones.

		@see https://wiki.mtasa.com/wiki/RefreshResources
	**/
	static function refreshResources():Void

	/**
		This function removes a file from the resource.

		@see https://wiki.mtasa.com/wiki/RemoveResourceFile
	**/
	static function removeResourceFile():Void

	/**
		This function renames a resource.

		@see https://wiki.mtasa.com/wiki/RenameResource
	**/
	static function renameResource():Void

	/**
		This function restarts a running resource. Restarting will destroy all the elements that the resource has created (as stopping the resource does).

		@see https://wiki.mtasa.com/wiki/RestartResource
	**/
	static function restartResource():Void

	/**
		This function sets the value of any attribute in a resource info tag.Note: that this is protected under ACL ModifyOtherObjects.

		@see https://wiki.mtasa.com/wiki/SetResourceInfo
	**/
	static function setResourceInfo():Void

	/**
		This function starts a resource either persistently or as a dependency of the current resource. If you start the resource persistently, the resource will run until stopped either using stopResource or by the server admin. A resource started as a dependency will stop when your resource stops, if no other resources have it as a depdendency. This is the same effect as using an include in your meta.xml file.The function also allows you to specify a number of boolean options. These allow you to disable the loading of various aspects of the resource. This is generally useful for editors rather than for actual gamemodes. It could also be used as a way to preview a resource before enabling the scripting aspects, though this could produce unreliable results. There is no way for a resource to tell if it is being run with any of these booleans set.

		@see https://wiki.mtasa.com/wiki/StartResource
	**/
	static function startResource():Void

	/**
		This function stops a running resource.
Note: This function does not stop the resource immediately, so don't expect that it starts stopping until the onResourceStop event for that resource is triggered. This happens after the scripts are done executing for this server frame.

		@see https://wiki.mtasa.com/wiki/StopResource
	**/
	static function stopResource():Void

	/**
		This function changes the access for one ACL request of the given resource.

		@see https://wiki.mtasa.com/wiki/UpdateResourceACLRequest
	**/
	static function updateResourceACLRequest():Void

	/**
		This function retrieves the maximum FPS (Frames per second) that players on the server can run their game at.

		@see https://wiki.mtasa.com/wiki/GetFPSLimit
	**/
	static function getFPSLimit():Void

	/**
		This function returns the maximum number of player slots on the server.Returns the maximum number of players allowed on the server.

		@see https://wiki.mtasa.com/wiki/GetMaxPlayers
	**/
	static function getMaxPlayers():Void

	/**
		This function retrieves the server's HTTP port.An integer corresponding to the server's HTTP port.

		@see https://wiki.mtasa.com/wiki/GetServerHttpPort
	**/
	static function getServerHttpPort():Void

	/**
		This function retrieves the server's name.A string containing the server's name.

		@see https://wiki.mtasa.com/wiki/GetServerName
	**/
	static function getServerName():Void

	/**
		This function returns the current password required to join the server.Returns the current server password as a string if it has a password, if not it returns nil.

		@see https://wiki.mtasa.com/wiki/GetServerPassword
	**/
	static function getServerPassword():Void

	/**
		This function retrieves the server's port.An integer corresponding to the server's port.

		@see https://wiki.mtasa.com/wiki/GetServerPort
	**/
	static function getServerPort():Void

	/**
		This function gives you various version information about MTA and the operating system.

		@see https://wiki.mtasa.com/wiki/GetVersion
	**/
	static function getVersion():Void

	/**
		This function retrieves whether San Andreas game glitches are enabled or not, set by using setGlitchEnabledReturns true if if the glitch was enabled, or false if it is disabled.

		@see https://wiki.mtasa.com/wiki/IsGlitchEnabled
	**/
	static function isGlitchEnabled():Void

	/**
		This function sets the maximum FPS (Frames per second) that players on the server can run their game at.

		@see https://wiki.mtasa.com/wiki/SetFPSLimit
	**/
	static function setFPSLimit():Void

	/**
		This function enables or disables glitches that are found in the original Single Player game that can be used to gain an advantage in multiplayer.Users of the fastmove glitch may additionally want to install this resource to disable crouchsliding.

		@see https://wiki.mtasa.com/wiki/SetGlitchEnabled
	**/
	static function setGlitchEnabled():Void

	/**
		This function sets the maximum number of player slots on the server.Note: This function can not set more than <maxplayers> as defined in mtaserver.conf. (To find out the <maxplayers> value, use getServerConfigSetting("maxplayers"))

		@see https://wiki.mtasa.com/wiki/SetMaxPlayers
	**/
	static function setMaxPlayers():Void

	/**
		This function changes the password required to join the server to the given string.Returns true if the password was successfully changed or removed, false or nil otherwise.

		@see https://wiki.mtasa.com/wiki/SetServerPassword
	**/
	static function setServerPassword():Void

	/**
		This function shuts down the server.

		@see https://wiki.mtasa.com/wiki/Shutdown
	**/
	static function shutdown():Void

	/**
		This function gets a setting's value, or a group of settings' values, from the settings registry.

		@see https://wiki.mtasa.com/wiki/Get
	**/
	static function get():Void

	/**
		This function is used to save arbitrary data under a certain name on the settings registry.It's important to note that set always writes to the settings.xml file, even if get read the value from a resource's meta.xml. This means that the admin can specify settings in the settings.xml that override the resource's defaults, but that the defaults can still be retrieved if need be. As a general principle, resources should not be designed so that the admin is required to modify them, they should be 'black boxes'.

		@see https://wiki.mtasa.com/wiki/Set
	**/
	static function set():Void

	/**
		This function executes an arbitrary SQL query and returns the result rows if there are any. It allows parameter binding for security (SQL injection is rendered impossible).

		@see https://wiki.mtasa.com/wiki/ExecuteSQLQuery
	**/
	static function executeSQLQuery():Void

	/**
		This function opens a connection to a database and returns an element that can be used with dbQuery. To disconnect use destroyElement.

		@see https://wiki.mtasa.com/wiki/DbConnect
	**/
	static function dbConnect():Void

	/**
		This function executes a database query using the supplied connection. No result is returned.

		@see https://wiki.mtasa.com/wiki/DbExec
	**/
	static function dbExec():Void

	/**
		This function frees a database query handle. dbFree only needs to be used if a result has not been obtained with dbPoll

		@see https://wiki.mtasa.com/wiki/DbFree
	**/
	static function dbFree():Void

	/**
		This function checks the progress of a database query.

		@see https://wiki.mtasa.com/wiki/DbPoll
	**/
	static function dbPoll():Void

	/**
		This function escapes arguments in the same way as dbQuery, except dbPrepareString returns the query string instead of processing the query. This allows you to safely build complex query strings from component parts and help prevent (one class of) SQL injection.

		@see https://wiki.mtasa.com/wiki/DbPrepareString
	**/
	static function dbPrepareString():Void

	/**
		This function starts a database query using the supplied connection. Use the returned query handle with dbPoll to get the result, or dbFree if you don't want the result.

		@see https://wiki.mtasa.com/wiki/DbQuery
	**/
	static function dbQuery():Void

	/**
		This function is for returning the number of players in the specified team.

		@see https://wiki.mtasa.com/wiki/CountPlayersInTeam
	**/
	static function countPlayersInTeam():Void

	/**
		This function is for creating a new team, which can be used to group players. Players will not join the team until they are respawned.

		@see https://wiki.mtasa.com/wiki/CreateTeam
	**/
	static function createTeam():Void

	/**
		This function retrieves all the players of the specified team.

		@see https://wiki.mtasa.com/wiki/GetPlayersInTeam
	**/
	static function getPlayersInTeam():Void

	/**
		This function retrieves the color of a team.

		@see https://wiki.mtasa.com/wiki/GetTeamColor
	**/
	static function getTeamColor():Void

	/**
		This function tells you if friendly fire is turned on for the specified team.

		@see https://wiki.mtasa.com/wiki/GetTeamFriendlyFire
	**/
	static function getTeamFriendlyFire():Void

	/**
		This function finds a team element using the provided team name.

		@see https://wiki.mtasa.com/wiki/GetTeamFromName
	**/
	static function getTeamFromName():Void

	/**
		This function gets the team name of a team object.

		@see https://wiki.mtasa.com/wiki/GetTeamName
	**/
	static function getTeamName():Void

	/**
		This function is for setting the color of a specified team. This color is shown, for example, in the team players' nametags.

		@see https://wiki.mtasa.com/wiki/SetTeamColor
	**/
	static function setTeamColor():Void

	/**
		This function sets the friendly fire value for the specified team.

		@see https://wiki.mtasa.com/wiki/SetTeamFriendlyFire
	**/
	static function setTeamFriendlyFire():Void

	/**
		This function is used to set a team's name.

		@see https://wiki.mtasa.com/wiki/SetTeamName
	**/
	static function setTeamName():Void

	/**
		A text display is like a canvas that can contain many items of text. Each display can be seen by multiple observers (players) and each player can see multiple displays.This function has no arguments.

		@see https://wiki.mtasa.com/wiki/TextCreateDisplay
	**/
	static function textCreateDisplay():Void

	/**
		This function creates a text item. A text item represents a single area of text, much like a label does in standard GUI programming. A text item can only be seen by players if it is added to a textdisplay using textDisplayAddText. Each text item can be added to multiple displays, if need be.NOTE: When using optional arguments, you might need to supply all arguments before the one you wish to use. For more information on optional arguments, see optional arguments.

		@see https://wiki.mtasa.com/wiki/TextCreateTextItem
	**/
	static function textCreateTextItem():Void

	/**
		This function destroys a text display and will unlink all the textitems on it. This does not stop the textitems existing, but anyone who was observing the textitems through this display will stop seeing them.This example creates a display then destroys it again straight away.

		@see https://wiki.mtasa.com/wiki/TextDestroyDisplay
	**/
	static function textDestroyDisplay():Void

	/**
		This function destroys a textitem object.This example creates then destroys a textitem.

		@see https://wiki.mtasa.com/wiki/TextDestroyTextItem
	**/
	static function textDestroyTextItem():Void

	/**
		This function adds a player as an observer of a textdisplay. This allows the player to see any textitems that the textdisplay contains.

		@see https://wiki.mtasa.com/wiki/TextDisplayAddObserver
	**/
	static function textDisplayAddObserver():Void

	/**
		This function adds a textitem to a textdisplay. This allows any observers of the textdisplay to see the textitem.

		@see https://wiki.mtasa.com/wiki/TextDisplayAddText
	**/
	static function textDisplayAddText():Void

	/**
		This function can be used to retrieve all the players  currently observing a specified textdisplay.Returns a table of players that are observers of the display or false if invalid textdisplay is passed.

		@see https://wiki.mtasa.com/wiki/TextDisplayGetObservers
	**/
	static function textDisplayGetObservers():Void

	/**
		This function checks if a player can see the specified textdisplay.Return true if textdisplay is showing, or false if not.

		@see https://wiki.mtasa.com/wiki/TextDisplayIsObserver
	**/
	static function textDisplayIsObserver():Void

	/**
		This function removes a player observer of a textdisplay. This stops the player from being able to see textitems that the textdisplay contains.This example creates a new display and a "Hello World" text item for a player.  It then removes it from his screen 5 seconds later

		@see https://wiki.mtasa.com/wiki/TextDisplayRemoveObserver
	**/
	static function textDisplayRemoveObserver():Void

	/**
		This function removes a textitem from a textdisplay. This stops any observers of the textdisplay from being able to see the textitem.This example creates a text display and adds a "Hello World" text item to it.  It then removes that text item 5 seconds later.

		@see https://wiki.mtasa.com/wiki/TextDisplayRemoveText
	**/
	static function textDisplayRemoveText():Void

	/**
		This function allows you to retrieve the color of a text item.Returns four integers in RGBA format, with a maximum value of 255 for each. The values are, in order, red, green, blue, and alpha. Alpha decides transparency where 255 is opaque and 0 is transparent. false is returned if the text item is invalid.

		@see https://wiki.mtasa.com/wiki/TextItemGetColor
	**/
	static function textItemGetColor():Void

	/**
		This function allows retrieval of the position of a text item.Returns two floats of the x and y position on the screen, where the maximum value is 1.0.

		@see https://wiki.mtasa.com/wiki/TextItemGetPosition
	**/
	static function textItemGetPosition():Void

	/**
		This function retrieves the priority of a text item.  Priority defines the rate at whihc a text item is updated

		@see https://wiki.mtasa.com/wiki/TextItemGetPriority
	**/
	static function textItemGetPriority():Void

	/**
		This function allows retrieval of the scale or size of a text item.Returns a floating point of the scale of the text. 1.0 is around 12pt.

		@see https://wiki.mtasa.com/wiki/TextItemGetScale
	**/
	static function textItemGetScale():Void

	/**
		This function returns the current text of the specified textitem.Returns a string containing the text if the function was successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/TextItemGetText
	**/
	static function textItemGetText():Void

	/**
		This function allows the setting of the position of a text item.Returns true if the position was successfully set, false otherwise.

		@see https://wiki.mtasa.com/wiki/TextItemSetPosition
	**/
	static function textItemSetPosition():Void

	/**
		This function sets the priority for a text item.  Priority is the importance of sending updated text to the client. The system is implemented as 3 queues, with the high queue being emptied before the medium queue is processed, and with one update sent per server frame. Hence, if you set all your text items to medium priority it has the same effect as if you set them all to high or low.

		@see https://wiki.mtasa.com/wiki/TextItemSetPriority
	**/
	static function textItemSetPriority():Void

	/**
		This function allows the setting of the scale of a text item.Returns true if the scale was successfully set, false otherwise.

		@see https://wiki.mtasa.com/wiki/TextItemSetScale
	**/
	static function textItemSetScale():Void

	/**
		Overwrites a previously created text item with the specified text.Here, it is being used to update a scoreboard:

		@see https://wiki.mtasa.com/wiki/TextItemSetText
	**/
	static function textItemSetText():Void

	/**
		This function allows tracing of MTA functions and events. It should only be used when debugging scripts as it may degrade script performance.Debug hooks are not recursive, so functions and events triggered inside the hook callback will not be traced.

		@see https://wiki.mtasa.com/wiki/AddDebugHook
	**/
	static function addDebugHook():Void

	/**
		This function returns the decrypted data from base64 representation of the encrypted blockReturns the decrypted data from base64 representation of the encrypted block if the decryption process was successfully completed, false otherwise.

		@see https://wiki.mtasa.com/wiki/Base64Decode
	**/
	static function base64Decode():Void

	/**
		This function returns the base64 representation of the encoded block of dataReturns the base64 representation of the encoded data if the encoding process was successfully completed, false otherwise.

		@see https://wiki.mtasa.com/wiki/Base64Encode
	**/
	static function base64Encode():Void

	/**
		This function performs a bitwise AND-conjunction on two or more (unsigned) 32-bit integers. See Bitwise operation for more details.

		@see https://wiki.mtasa.com/wiki/BitAnd
	**/
	static function bitAnd():Void

	/**
		This function performs a bitwise NOT on an (unsigned) 32-bit integer. See Bitwise operation for more details.

		@see https://wiki.mtasa.com/wiki/BitNot
	**/
	static function bitNot():Void

	/**
		This function performs a bitwise OR-conjunction on two or more (unsigned) 32-bit integers. See Bitwise operation for more details.

		@see https://wiki.mtasa.com/wiki/BitOr
	**/
	static function bitOr():Void

	/**
		This function performs a bitwise XOR-conjunction (exclusive OR) on two or more (unsigned) 32-bit integers. See Bitwise operation for more details.

		@see https://wiki.mtasa.com/wiki/BitXor
	**/
	static function bitXor():Void

	/**
		This function performs an AND-conjunction on two or more (unsigned) 32-bit integers and checks, whether the conjuncted value is zero or not. See Bitwise operation for more details.

		@see https://wiki.mtasa.com/wiki/BitTest
	**/
	static function bitTest():Void

	/**
		This functions performs a bitwise circular left-rotation on the integer value by integer n positions.
See Bitwise operation for more details.

		@see https://wiki.mtasa.com/wiki/BitLRotate
	**/
	static function bitLRotate():Void

	/**
		This functions performs a bitwise circular right-rotation on the integer value by integer n positions.
See Bitwise operation for more details.

		@see https://wiki.mtasa.com/wiki/BitRRotate
	**/
	static function bitRRotate():Void

	/**
		This functions performs a logical left shift on the integer value by integer n positions. In a logical shift, zeros are shifted in to replace the discarded bits.
See Bitwise operation for more details.

		@see https://wiki.mtasa.com/wiki/BitLShift
	**/
	static function bitLShift():Void

	/**
		This functions performs a logical right shift on the integer value by integer n positions. In a logical shift, zeros are shifted in to replace the discarded bits.
See Bitwise operation for more details.

		@see https://wiki.mtasa.com/wiki/BitRShift
	**/
	static function bitRShift():Void

	/**
		This functions performs an arithmetic shift on the integer value by integer n positions. In an arithmetic shift, zeros are shifted in to replace the discarded bits. In a right arithmetic shift, the sign bit is shifted in on the left, thus preserving the sign of the operand.
See Bitwise operation for more details.

		@see https://wiki.mtasa.com/wiki/BitArShift
	**/
	static function bitArShift():Void

	/**
		This function returns the unsigned number formed by the bits field to field + width - 1 (range: 0-31).

		@see https://wiki.mtasa.com/wiki/BitExtract
	**/
	static function bitExtract():Void

	/**
		This function returns the unsigned number formed by var value with replacement specified at bits field to field + width - 1

		@see https://wiki.mtasa.com/wiki/BitReplace
	**/
	static function bitReplace():Void

	/**
		debugSleep freezes the client/server for the specified time. This means that all synchronization, rendering and script execution will stop except HTTP processing invoked by fetchRemote. This function only works, if development mode is enabled by setDevelopmentMode and can be utilised to build a debugger that communicates via HTTP requests with the editor/IDE.

		@see https://wiki.mtasa.com/wiki/DebugSleep
	**/
	static function debugSleep():Void

	/**
		This function decodes an encoded string using the specified algorithm. The counterpart of this function is encodeString.Returns the decoded string if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/DecodeString
	**/
	static function decodeString():Void

	/**
		This function encodes a string using the specified algorithm. The counterpart of this function is decodeString.Returns the encoded string if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/EncodeString
	**/
	static function encodeString():Void

	/**
		This function is available client-side in 1.2 and onwards.This function parses a JSON formatted string into variables. You can use toJSON to encode variables into a JSON string that can be read by this function.

		@see https://wiki.mtasa.com/wiki/FromJSON
	**/
	static function fromJSON():Void

	/**
		This function will extract Red, Green, Blue and Alpha values from a hex string you provide it. These strings follow the same format as used in HTML, with addition of the Alpha values.

		@see https://wiki.mtasa.com/wiki/GetColorFromString
	**/
	static function getColorFromString():Void

	/**
		This function is used to get the development mode of the client. For more information see setDevelopmentMode

		@see https://wiki.mtasa.com/wiki/GetDevelopmentMode
	**/
	static function getDevelopmentMode():Void

	/**
		This function returns the distance between two 2 dimensional points using the pythagorean theorem.

		@see https://wiki.mtasa.com/wiki/GetDistanceBetweenPoints2D
	**/
	static function getDistanceBetweenPoints2D():Void

	/**
		This function returns the distance between two 3 dimensional points using the pythagorean theorem.

		@see https://wiki.mtasa.com/wiki/GetDistanceBetweenPoints3D
	**/
	static function getDistanceBetweenPoints3D():Void

	/**
		Used for custom Lua based interpolation, returns the easing value (animation time to use in your custom interpolation) given a progress and an easing function.
In most cases, either moveObject or interpolateBetween can do the job. getEasingValue is only provided in case you want to do your own custom interpolation based on easing.

		@see https://wiki.mtasa.com/wiki/GetEasingValue
	**/
	static function getEasingValue():Void

	/**
		This function returns network status information.Returns a table, the indexes in the table are the following:

		@see https://wiki.mtasa.com/wiki/GetNetworkStats
	**/
	static function getNetworkStats():Void

	/**
		This function returns a table containing network usage information about inbound and outbound packets.Returns a table with two fields: "in" and "out". Each of these contain a table with two fields: "bits" and "count". Each of these contain a table with 256 numeric fields ranging from 0 to 255, containing the appropriate network usage data for such packet id.

		@see https://wiki.mtasa.com/wiki/GetNetworkUsageData
	**/
	static function getNetworkUsageData():Void

	/**
		This function is for getting the details of a running timer.

		@see https://wiki.mtasa.com/wiki/GetTimerDetails
	**/
	static function getTimerDetails():Void

	/**
		This function returns a table of all active timers that the resource that calls it has created. Alternatively, only the timers with a remaining time less than or equal to a certain value can be retrieved.Returns a table of all the active timers.

		@see https://wiki.mtasa.com/wiki/GetTimers
	**/
	static function getTimers():Void

	/**
		This function splits a string using the given separating character and returns one specified substring.Returns a string containing the token if it exists, false otherwise.

		@see https://wiki.mtasa.com/wiki/Gettok
	**/
	static function gettok():Void

	/**
		This function gets the type of a userdata value, which is not always a element in the element tree.Returns a string containing the specified userdata's type, or false plus an error message if the given value is not userdata.

		@see https://wiki.mtasa.com/wiki/GetUserdataType
	**/
	static function getUserdataType():Void

	/**
		This function returns a hash of the specified string in the specified algorithm.Returns the hash of the data, false if an invalid argument was used.

		@see https://wiki.mtasa.com/wiki/Hash
	**/
	static function hash():Void

	/**
		This function returns human-readable representations of tables and MTA datatypes as a string.

		@see https://wiki.mtasa.com/wiki/Inspect
	**/
	static function inspect():Void

	/**
		Interpolates a 3D Vector between a source value and a target value using either linear interpolation or any other easing function.
It can also be used to interpolate 2D vectors or scalars by only setting some of the x, y, z values and putting 0 to the others.

		@see https://wiki.mtasa.com/wiki/InterpolateBetween
	**/
	static function interpolateBetween():Void

	/**
		This function intelligently outputs debug messages into the Debug Console.  It is similar to outputDebugString, but outputs useful information for any variable type, and does not require use of Lua's tostring.  This includes information about element types, and table structures.  It is especially useful for quick debug tasks.

		@see https://wiki.mtasa.com/wiki/Iprint
	**/
	static function iprint():Void

	/**
		This function checks whether OOP (Object Oriented Programming) is enabled in the current resource or not.Returns true or false if OOP is enabled or not. Returns nil if an error arised.

		@see https://wiki.mtasa.com/wiki/IsOOPEnabled
	**/
	static function isOOPEnabled():Void

	/**
		This function allows you to kill/halt existing timers.

		@see https://wiki.mtasa.com/wiki/KillTimer
	**/
	static function killTimer():Void

	/**
		Calculates the MD5 hash of the specified string and returns its hexadecimal representation.

		@see https://wiki.mtasa.com/wiki/Md5
	**/
	static function md5():Void

	/**
		This function creates a new password hash using a specified hashing algorithm.

		@see https://wiki.mtasa.com/wiki/PasswordHash
	**/
	static function passwordHash():Void

	/**
		This function verifies whether a password matches a password hash.

		@see https://wiki.mtasa.com/wiki/PasswordVerify
	**/
	static function passwordVerify():Void

	/**
		This function stops at the first occurrence of the pattern in the input string and returns the result of the search.Returns true if the pattern was found in the input string, false otherwise.

		@see https://wiki.mtasa.com/wiki/PregFind
	**/
	static function pregFind():Void

	/**
		This function returns all matches.

		@see https://wiki.mtasa.com/wiki/PregMatch
	**/
	static function pregMatch():Void

	/**
		This function performs a regular expression search and replace and returns the replaced string.Returns the replaced string, or bool false otherwise.

		@see https://wiki.mtasa.com/wiki/PregReplace
	**/
	static function pregReplace():Void

	/**
		This function removes hooks added by addDebugHookReturns true if the hook was successfully removed, or false otherwise.

		@see https://wiki.mtasa.com/wiki/RemoveDebugHook
	**/
	static function removeDebugHook():Void

	/**
		This function allows you to reset the elapsed time in existing timers to zero. The function does not reset the 'times to execute' count on timers which have a limited amout of repetitions.

		@see https://wiki.mtasa.com/wiki/ResetTimer
	**/
	static function resetTimer():Void

	/**
		This function is used to set the development mode. Setting development mode allows access to special commands which can assist with script debugging.Client-side development mode commands:

		@see https://wiki.mtasa.com/wiki/SetDevelopmentMode
	**/
	static function setDevelopmentMode():Void

	/**
		This function sets server settings which are stored in the mtaserver.conf file.Returns true if the setting was successfully set, or false otherwise.

		@see https://wiki.mtasa.com/wiki/SetServerConfigSetting
	**/
	static function setServerConfigSetting():Void

	/**
		This function allows you to trigger a function after a number of milliseconds have elapsed. You can call one of your own functions or a built-in function. For example, you could set a timer to spawn a player after a number of seconds have elapsed.Once a timer has finished repeating, it no longer exists.

		@see https://wiki.mtasa.com/wiki/SetTimer
	**/
	static function setTimer():Void

	/**
		Calculates the sha256 hash of the specified string.

		@see https://wiki.mtasa.com/wiki/Sha256
	**/
	static function sha256():Void

	/**
		This function splits a string into substrings. You specify a character that will act as a separating character; this will determine where to split the sub-strings. For example, it can split the string "Hello World" into two strings containing the two words, by spliting using a space as a separator.Note: You can use the function gettok to retrieve a single token from the string at a specific index. This may be faster for one-off lookups, but considerably slower if you are going to check each token in a long string.

		@see https://wiki.mtasa.com/wiki/Split
	**/
	static function split():Void

	/**
		This function decrypts given base64 representation of encrypted data using the Tiny Encryption Algorithm.Returns string containing the decrypted data if the decryption process was successfully completed, false otherwise.

		@see https://wiki.mtasa.com/wiki/TeaDecode
	**/
	static function teaDecode():Void

	/**
		This functions performs the Tiny Encryption Algorithm on the given string and returns the base64 representation of the encrypted string.

		@see https://wiki.mtasa.com/wiki/TeaEncode
	**/
	static function teaEncode():Void

	/**
		This function retrieves the hex number of a specified color, useful for the dx functions.
Added server-side.Returns a single value representing the color.

		@see https://wiki.mtasa.com/wiki/Tocolor
	**/
	static function tocolor():Void

	/**
		This function converts a single value (preferably a Lua table) into a JSON encoded string. You can use this to store the data and then load it again using fromJSON.NOTE: When using optional arguments, you might need to supply all arguments before the one you wish to use. For more information on optional arguments, see optional arguments.

		@see https://wiki.mtasa.com/wiki/ToJSON
	**/
	static function toJSON():Void

	/**
		The function returns the string of the specified UTF code.Returns a string if the function was successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/UtfChar
	**/
	static function utfChar():Void

	/**
		The function returns the UTF codes of the given string.Returns an int if the function was successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/UtfCode
	**/
	static function utfCode():Void

	/**
		The function gets the real length of a string, in characters.Returns an int if the function was successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/UtfLen
	**/
	static function utfLen():Void

	/**
		The function returns the byte position at specified character position.Returns an int if the function was successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/UtfSeek
	**/
	static function utfSeek():Void

	/**
		The function returns a sub string, from the specified positions on a character.Returns a string if the function was successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/UtfSub
	**/
	static function utfSub():Void

	/**
		Returns the codepoints for the i-th through j-th character of the string passed.

		@see https://wiki.mtasa.com/wiki/Utf8.byte
	**/
	static function utf8.byte():Void

	/**
		Generates a string representing the character codepoints as arguments.

		@see https://wiki.mtasa.com/wiki/Utf8.char
	**/
	static function utf8.char():Void

	/**
		Converts the UTF-8 codepoint position to byte-string position.

		@see https://wiki.mtasa.com/wiki/Utf8.charpos
	**/
	static function utf8.charpos():Void

	/**
		Escapes a string to a UTF-8 format string. It supports several escape formats, see the formatting table.

		@see https://wiki.mtasa.com/wiki/Utf8.escape
	**/
	static function utf8.escape():Void

	/**
		Finds the first occurrence of the pattern in the string passed. If an instance of the pattern is found, a pair of values representing the start and the end of the matched string is returned.

		@see https://wiki.mtasa.com/wiki/Utf8.find
	**/
	static function utf8.find():Void

	/**
		Converts a UTF-8 string to folded case (lowercase), which can be used to compare two strings. If input is an integer, it's treat as a codepoint and a convert codepoint (integer) is returned.

		@see https://wiki.mtasa.com/wiki/Utf8.fold
	**/
	static function utf8.fold():Void

	/**
		This function returns a pattern finding iterator for UTF-8 strings. The iterator will search through the string input looking for instances of the pattern you passed. For more information on iterators read the ForTutorial and IteratorsTutorial.

		@see https://wiki.mtasa.com/wiki/Utf8.gmatch
	**/
	static function utf8.gmatch():Void

	/**
		Returns a copy of the original input string with replaced matches from the pattern by the replacement value.

		@see https://wiki.mtasa.com/wiki/Utf8.gsub
	**/
	static function utf8.gsub():Void

	/**
		Inserts a substring into input string. If insert-position is given, the substring will be inserted before the character at this index, otherwise the substring will concatenate to input. The insert position may be negative.

		@see https://wiki.mtasa.com/wiki/Utf8.insert
	**/
	static function utf8.insert():Void

	/**
		Returns the length of the string passed.

		@see https://wiki.mtasa.com/wiki/Utf8.len
	**/
	static function utf8.len():Void

	/**
		Converts a UTF-8 string to folded case (lowercase), which can be used to compare two strings. If input is an integer, it's treat as a codepoint and a convert codepoint (integer) is returned.

		@see https://wiki.mtasa.com/wiki/Utf8.lower
	**/
	static function utf8.lower():Void

	/**
		Extract substrings by matching patterns in the input string. This function can be used to extract specific information from a string.

		@see https://wiki.mtasa.com/wiki/Utf8.match
	**/
	static function utf8.match():Void

	/**
		Compares two strings in lower-case and returns the difference indicator (see table below) as an integer value.

		@see https://wiki.mtasa.com/wiki/Utf8.ncasecmp
	**/
	static function utf8.ncasecmp():Void

	/**
		This is an iteration function to traverse each single codepoint of a UTF-8 string.

		@see https://wiki.mtasa.com/wiki/Utf8.next
	**/
	static function utf8.next():Void

	/**
		This function removes a substring in a UTF-8 string by using a position range.

		@see https://wiki.mtasa.com/wiki/Utf8.remove
	**/
	static function utf8.remove():Void

	/**
		Reverses the input string.

		@see https://wiki.mtasa.com/wiki/Utf8.reverse
	**/
	static function utf8.reverse():Void

	/**
		Returns a substring of the string passed. The substring starts at i. If the third argument j is not given, the substring will end at the end of the string. If the third argument is given, the substring ends at and includes j.

		@see https://wiki.mtasa.com/wiki/Utf8.sub
	**/
	static function utf8.sub():Void

	/**
		Converts a UTF-8 string to title case (uppercase). If input is an integer, it is treated as a codepoint and a converted codepoint (integer) is returned.

		@see https://wiki.mtasa.com/wiki/Utf8.title
	**/
	static function utf8.title():Void

	/**
		Converts a UTF-8 string to title case (uppercase). If input is an integer, it is treated as a codepoint and a converted codepoint (integer) is returned.

		@see https://wiki.mtasa.com/wiki/Utf8.upper
	**/
	static function utf8.upper():Void

	/**
		Calculates the width of UTF-8 strings with special/unprintable characters, which require special width treatment.

		@see https://wiki.mtasa.com/wiki/Utf8.width
	**/
	static function utf8.width():Void

	/**
		Returns the location, offset and width of the character at the given location in the UTF-8 string.

		@see https://wiki.mtasa.com/wiki/Utf8.widthindex
	**/
	static function utf8.widthindex():Void

	/**
		This function adds sirens to a vehicle.

		@see https://wiki.mtasa.com/wiki/AddVehicleSirens
	**/
	static function addVehicleSirens():Void

	/**
		This function adds an upgrade to a vehicle, e.g. nitrous, hydraulics.

		@see https://wiki.mtasa.com/wiki/AddVehicleUpgrade
	**/
	static function addVehicleUpgrade():Void

	/**
		This function attaches a trailer type vehicle to a trailer-towing-type vehicle.

		@see https://wiki.mtasa.com/wiki/AttachTrailerToVehicle
	**/
	static function attachTrailerToVehicle():Void

	/**
		This function will blow up a vehicle. This will cause an explosion and will kill the driver and any passengers inside it.

		@see https://wiki.mtasa.com/wiki/BlowVehicle
	**/
	static function blowVehicle():Void

	/**
		This function creates a vehicle at the specified location.

		@see https://wiki.mtasa.com/wiki/CreateVehicle
	**/
	static function createVehicle():Void

	/**
		This function detaches an already attached trailer from a vehicle.

		@see https://wiki.mtasa.com/wiki/DetachTrailerFromVehicle
	**/
	static function detachTrailerFromVehicle():Void

	/**
		This function will set a vehicle's health to full and fix its damage model. If you wish to only change the vehicle's health, without affecting its damage model, use setElementHealth.

		@see https://wiki.mtasa.com/wiki/FixVehicle
	**/
	static function fixVehicle():Void

	/**
		This function returns a table containing the handling data of the specified vehicle model.Note: the data returned may not reflect the actual handling of a particular vehicle, since this may be overriden by the setVehicleHandling function.

		@see https://wiki.mtasa.com/wiki/GetModelHandling
	**/
	static function getModelHandling():Void

	/**
		This function returns a table of the original vehicle handling. Use getVehicleHandling if you wish to get the current handling of a vehicle, or getModelHandling for a specific vehicle model.

		@see https://wiki.mtasa.com/wiki/GetOriginalHandling
	**/
	static function getOriginalHandling():Void

	/**
		Gets the direction in which a train is driving (clockwise or counterclockwise).

		@see https://wiki.mtasa.com/wiki/GetTrainDirection
	**/
	static function getTrainDirection():Void

	/**
		Gets the position the train is currently on the track

		@see https://wiki.mtasa.com/wiki/GetTrainPosition
	**/
	static function getTrainPosition():Void

	/**
		Gets the speed at which a train is traveling on the rails.

		@see https://wiki.mtasa.com/wiki/GetTrainSpeed
	**/
	static function getTrainSpeed():Void

	/**
		Gets the track of a train

		@see https://wiki.mtasa.com/wiki/GetTrainTrack
	**/
	static function getTrainTrack():Void

	/**
		This function returns the color of the specified vehicle. A vehicle can have up to four colors.

		@see https://wiki.mtasa.com/wiki/GetVehicleColor
	**/
	static function getVehicleColor():Void

	/**
		This function returns a table of all the compatible upgrades (or all for a specified slot, optionally) for a specified vehicle.

		@see https://wiki.mtasa.com/wiki/GetVehicleCompatibleUpgrades
	**/
	static function getVehicleCompatibleUpgrades():Void

	/**
		This function is used to get the player in control of the specified vehicle which includes somebody who is trying to enter the drivers seat.

		@see https://wiki.mtasa.com/wiki/GetVehicleController
	**/
	static function getVehicleController():Void

	/**
		This function tells you how open a door is (the 'open ratio'). Doors include boots/trunks and bonnets on vehicles that have them.

		@see https://wiki.mtasa.com/wiki/GetVehicleDoorOpenRatio
	**/
	static function getVehicleDoorOpenRatio():Void

	/**
		This function returns the current state of the specifed door on the vehicle.

		@see https://wiki.mtasa.com/wiki/GetVehicleDoorState
	**/
	static function getVehicleDoorState():Void

	/**
		This function returns a vehicle's engine state (on or off).

		@see https://wiki.mtasa.com/wiki/GetVehicleEngineState
	**/
	static function getVehicleEngineState():Void

	/**
		This function returns a table of the current vehicle handling data.

		@see https://wiki.mtasa.com/wiki/GetVehicleHandling
	**/
	static function getVehicleHandling():Void

	/**
		This function will get the headlight color of a vehicle.

		@see https://wiki.mtasa.com/wiki/GetVehicleHeadLightColor
	**/
	static function getVehicleHeadLightColor():Void

	/**
		This function is used to check whether a vehicle's landing gear is down or not. Only planes can be used with this function.

		@see https://wiki.mtasa.com/wiki/GetVehicleLandingGearDown
	**/
	static function getVehicleLandingGearDown():Void

	/**
		This function returns the current state of the specified light on the vehicle.

		@see https://wiki.mtasa.com/wiki/GetVehicleLightState
	**/
	static function getVehicleLightState():Void

	/**
		This function returns the maximum number of passengers that a specified vehicle can hold. Only passenger seats are counted, the driver seat is excluded.

		@see https://wiki.mtasa.com/wiki/GetVehicleMaxPassengers
	**/
	static function getVehicleMaxPassengers():Void

	/**
		This function retrieves the model ID of a vehicle as an integer value from its name.

		@see https://wiki.mtasa.com/wiki/GetVehicleModelFromName
	**/
	static function getVehicleModelFromName():Void

	/**
		This function returns a string containing the name of the vehicle

		@see https://wiki.mtasa.com/wiki/GetVehicleName
	**/
	static function getVehicleName():Void

	/**
		Gets the name of a vehicle by its model ID.

		@see https://wiki.mtasa.com/wiki/GetVehicleNameFromModel
	**/
	static function getVehicleNameFromModel():Void

	/**
		This function gets the player sitting/trying to enter the specified vehicle.

		@see https://wiki.mtasa.com/wiki/GetVehicleOccupant
	**/
	static function getVehicleOccupant():Void

	/**
		This function gets all players sitting in the specified vehicle.

		@see https://wiki.mtasa.com/wiki/GetVehicleOccupants
	**/
	static function getVehicleOccupants():Void

	/**
		This function is used to find out the current state of the override-lights setting of a vehicle.

		@see https://wiki.mtasa.com/wiki/GetVehicleOverrideLights
	**/
	static function getVehicleOverrideLights():Void

	/**
		This function gets the current paintjob on the specified vehicle.

		@see https://wiki.mtasa.com/wiki/GetVehiclePaintjob
	**/
	static function getVehiclePaintjob():Void

	/**
		This function returns the current state of a specifed panel on the vehicle. A vehicle can have up to 7 panels.

		@see https://wiki.mtasa.com/wiki/GetVehiclePanelState
	**/
	static function getVehiclePanelState():Void

	/**
		This function is used to retrieve the text on the number plate of a specified vehicle.

		@see https://wiki.mtasa.com/wiki/GetVehiclePlateText
	**/
	static function getVehiclePlateText():Void

	/**
		This function retrieves the respawn coordinates of a vehicle.

		@see https://wiki.mtasa.com/wiki/GetVehicleRespawnPosition
	**/
	static function getVehicleRespawnPosition():Void

	/**
		This function retrieves the respawn rotation of a vehicle.

		@see https://wiki.mtasa.com/wiki/GetVehicleRespawnRotation
	**/
	static function getVehicleRespawnRotation():Void

	/**
		This function get the parameters of a vehicles siren.

		@see https://wiki.mtasa.com/wiki/GetVehicleSirenParams
	**/
	static function getVehicleSirenParams():Void

	/**
		This function gets the properties of a vehicle's sirens.

		@see https://wiki.mtasa.com/wiki/GetVehicleSirens
	**/
	static function getVehicleSirens():Void

	/**
		This function returns whether the sirens are turned on for the specified vehicle.

		@see https://wiki.mtasa.com/wiki/GetVehicleSirensOn
	**/
	static function getVehicleSirensOn():Void

	/**
		This function is used to get the vehicle being towed by another.

		@see https://wiki.mtasa.com/wiki/GetVehicleTowedByVehicle
	**/
	static function getVehicleTowedByVehicle():Void

	/**
		This function is used to get the vehicle that is towing another.

		@see https://wiki.mtasa.com/wiki/GetVehicleTowingVehicle
	**/
	static function getVehicleTowingVehicle():Void

	/**
		This function gets the position of a vehicle's turret, if it has one. Vehicles with turrets include firetrucks and tanks.

		@see https://wiki.mtasa.com/wiki/GetVehicleTurretPosition
	**/
	static function getVehicleTurretPosition():Void

	/**
		This function retrieves the type of a vehicle (such as if it is a car or a boat).

		@see https://wiki.mtasa.com/wiki/GetVehicleType
	**/
	static function getVehicleType():Void

	/**
		This function returns the current upgrade id on the specified vehicle's 'upgrade slot'
An upgrade slot is a certain type of upgrade (eg: exhaust, spoiler), there are 17 slots (0 to 16).

		@see https://wiki.mtasa.com/wiki/GetVehicleUpgradeOnSlot
	**/
	static function getVehicleUpgradeOnSlot():Void

	/**
		This function returns the name of an upgrade slot name (e.g. roof, spoiler).There are two ways of using this function, the parameter can either be the slot ID (0 to 16) or an upgrade ID (1000 to 1193)

		@see https://wiki.mtasa.com/wiki/GetVehicleUpgradeSlotName
	**/
	static function getVehicleUpgradeSlotName():Void

	/**
		This function returns a table of all the upgrades on a specifed vehicle.

		@see https://wiki.mtasa.com/wiki/GetVehicleUpgrades
	**/
	static function getVehicleUpgrades():Void

	/**
		This function gets the variant of a specified vehicle. In GTA SA some vehicles are different for example the labelling on trucks or the contents of a pick-up truck and the varying types of a motor bike. For the default GTA SA variant list see: Vehicle variants

		@see https://wiki.mtasa.com/wiki/GetVehicleVariant
	**/
	static function getVehicleVariant():Void

	/**
		This function returns the current states of all the wheels on the vehicle.No vehicles have more than 4 wheels, if they appear to they will be duplicating other wheels.

		@see https://wiki.mtasa.com/wiki/GetVehicleWheelStates
	**/
	static function getVehicleWheelStates():Void

	/**
		This function scans through all the current vehicles and returns the ones matching the given model.

		@see https://wiki.mtasa.com/wiki/GetVehiclesOfType
	**/
	static function getVehiclesOfType():Void

	/**
		This function will check if a train or tram is derailable.

		@see https://wiki.mtasa.com/wiki/IsTrainDerailable
	**/
	static function isTrainDerailable():Void

	/**
		This function will check if a train or tram is derailed.

		@see https://wiki.mtasa.com/wiki/IsTrainDerailed
	**/
	static function isTrainDerailed():Void

	/**
		This function allows you to determine whether a vehicle is blown or still intact.

		@see https://wiki.mtasa.com/wiki/IsVehicleBlown
	**/
	static function isVehicleBlown():Void

	/**
		This function checks if a vehicle is damage proof (set with setVehicleDamageProof).

		@see https://wiki.mtasa.com/wiki/IsVehicleDamageProof
	**/
	static function isVehicleDamageProof():Void

	/**
		This will tell you if a vehicle's petrol tank is explodable.

		@see https://wiki.mtasa.com/wiki/IsVehicleFuelTankExplodable
	**/
	static function isVehicleFuelTankExplodable():Void

	/**
		This will tell you if a vehicle is locked.

		@see https://wiki.mtasa.com/wiki/IsVehicleLocked
	**/
	static function isVehicleLocked():Void

	/**
		Checks to see if a vehicle has contact with the ground.

		@see https://wiki.mtasa.com/wiki/IsVehicleOnGround
	**/
	static function isVehicleOnGround():Void

	/**
		This function will get the taxi light state of a taxi (vehicle IDs 420 and 438)

		@see https://wiki.mtasa.com/wiki/IsVehicleTaxiLightOn
	**/
	static function isVehicleTaxiLightOn():Void

	/**
		This function removes sirens from a vehicle.Returns true if sirens were successfully removed from the vehicle, false otherwise.

		@see https://wiki.mtasa.com/wiki/RemoveVehicleSirens
	**/
	static function removeVehicleSirens():Void

	/**
		This function removes an already existing upgrade from the specified vehicle, eg: nos, hydraulics. Defined in San Andreas\data\maps\veh_mods\veh_mods.ide.

		@see https://wiki.mtasa.com/wiki/RemoveVehicleUpgrade
	**/
	static function removeVehicleUpgrade():Void

	/**
		Resets the vehicle explosion time. This is the point in time at which the vehicle last exploded: at this time plus the vehicle's respawn delay, the vehicle is respawned. You can use this function to prevent the vehicle from respawning.

		@see https://wiki.mtasa.com/wiki/ResetVehicleExplosionTime
	**/
	static function resetVehicleExplosionTime():Void

	/**
		Resets the vehicle idle time

		@see https://wiki.mtasa.com/wiki/ResetVehicleIdleTime
	**/
	static function resetVehicleIdleTime():Void

	/**
		This function respawns a vehicle according to its set respawn position, set by setVehicleRespawnPosition or the position and rotation it was created on. To spawn a vehicle to a specific location just once, spawnVehicle can be used.

		@see https://wiki.mtasa.com/wiki/RespawnVehicle
	**/
	static function respawnVehicle():Void

	/**
		This function is used to change the handling data of all vehicles of a specified model.

		@see https://wiki.mtasa.com/wiki/SetModelHandling
	**/
	static function setModelHandling():Void

	/**
		This function will set a train or tram as derailable. This is, if it can derail when it goes above the maximum speed.

		@see https://wiki.mtasa.com/wiki/SetTrainDerailable
	**/
	static function setTrainDerailable():Void

	/**
		This function will set a train or tram as derailed.

		@see https://wiki.mtasa.com/wiki/SetTrainDerailed
	**/
	static function setTrainDerailed():Void

	/**
		Sets the direction in which a train or tram drives over the rails (clockwise or counterclockwise).

		@see https://wiki.mtasa.com/wiki/SetTrainDirection
	**/
	static function setTrainDirection():Void

	/**
		Sets the position the train is currently on the track

		@see https://wiki.mtasa.com/wiki/SetTrainPosition
	**/
	static function setTrainPosition():Void

	/**
		Sets the on-track speed of a train.

		@see https://wiki.mtasa.com/wiki/SetTrainSpeed
	**/
	static function setTrainSpeed():Void

	/**
		Sets the track of a train

		@see https://wiki.mtasa.com/wiki/SetTrainTrack
	**/
	static function setTrainTrack():Void

	/**
		This function will set the color of a vehicle. Colors are in RGB format, vehicles can have up to 4 colors. Most vehicles have 2 colors only.

		@see https://wiki.mtasa.com/wiki/SetVehicleColor
	**/
	static function setVehicleColor():Void

	/**
		This functions makes a vehicle damage proof, so it won't take damage from bullets, hits, explosions or fire. A damage proof's vehicle health can still be changed via script.

		@see https://wiki.mtasa.com/wiki/SetVehicleDamageProof
	**/
	static function setVehicleDamageProof():Void

	/**
		This function sets how much a vehicle's door is open. Doors include the boot/trunk and the bonnet of the vehicle.

		@see https://wiki.mtasa.com/wiki/SetVehicleDoorOpenRatio
	**/
	static function setVehicleDoorOpenRatio():Void

	/**
		This function sets the state of the specified door on a vehicle.

		@see https://wiki.mtasa.com/wiki/SetVehicleDoorState
	**/
	static function setVehicleDoorState():Void

	/**
		This function makes a vehicle's doors undamageable, so they won't fall off when they're hit. Note that the vehicle has to be locked using setVehicleLocked for this setting to have any effect.

		@see https://wiki.mtasa.com/wiki/SetVehicleDoorsUndamageable
	**/
	static function setVehicleDoorsUndamageable():Void

	/**
		This function turns a vehicle's engine on or off. Note that the engine will always be turned on when someone enters the driver seat, unless you override that behaviour with scripts.

		@see https://wiki.mtasa.com/wiki/SetVehicleEngineState
	**/
	static function setVehicleEngineState():Void

	/**
		This function changes the 'explodable state' of a vehicle's fuel tank, which toggles the ability to blow the vehicle up by shooting the tank. This function will have no effect on vehicles with tanks that cannot be shot in single player.Returns true if the vehicle's fuel tank explodable state was successfully changed, false otherwise.

		@see https://wiki.mtasa.com/wiki/SetVehicleFuelTankExplodable
	**/
	static function setVehicleFuelTankExplodable():Void

	/**
		This function is used to change the handling data of a vehicle.

		@see https://wiki.mtasa.com/wiki/SetVehicleHandling
	**/
	static function setVehicleHandling():Void

	/**
		This function will set the headlight color of a vehicle. valid Red Green and Blue arguments range from 0-255

		@see https://wiki.mtasa.com/wiki/SetVehicleHeadLightColor
	**/
	static function setVehicleHeadLightColor():Void

	/**
		This function sets the time delay (in milliseconds) the vehicle will remain at its position while empty.

		@see https://wiki.mtasa.com/wiki/SetVehicleIdleRespawnDelay
	**/
	static function setVehicleIdleRespawnDelay():Void

	/**
		This function is used to set the landing gear state of certain vehicles.Returns true if the landing gear was set successfully, false otherwise.

		@see https://wiki.mtasa.com/wiki/SetVehicleLandingGearDown
	**/
	static function setVehicleLandingGearDown():Void

	/**
		This function sets the state of the light on the vehicle.

		@see https://wiki.mtasa.com/wiki/SetVehicleLightState
	**/
	static function setVehicleLightState():Void

	/**
		This function can be used to set a vehicle to be locked or unlocked.  Locking a vehicle restricts access to all doors of a vehicle.

		@see https://wiki.mtasa.com/wiki/SetVehicleLocked
	**/
	static function setVehicleLocked():Void

	/**
		This function changes the light overriding setting on a vehicle.

		@see https://wiki.mtasa.com/wiki/SetVehicleOverrideLights
	**/
	static function setVehicleOverrideLights():Void

	/**
		This function changes the paintjob on the specified vehicle. 
See paintjob for list of supported vehicles.Returns true if the vehicle's paintjob was changed. Otherwise false.

		@see https://wiki.mtasa.com/wiki/SetVehiclePaintjob
	**/
	static function setVehiclePaintjob():Void

	/**
		This function allows you to change the state of one of the six panels vehicle's can have. When executed on the server-side resources, the damage will be synched for all players, whereas the change is only client-side if the function is used in a client resource.

		@see https://wiki.mtasa.com/wiki/SetVehiclePanelState
	**/
	static function setVehiclePanelState():Void

	/**
		This function can be used to set the numberplate text of a car.It now also changes the numberplate text of any vehicle that has visual numberplates.

		@see https://wiki.mtasa.com/wiki/SetVehiclePlateText
	**/
	static function setVehiclePlateText():Void

	/**
		This function sets the time delay (in milliseconds) the vehicle will remain wrecked before respawning.

		@see https://wiki.mtasa.com/wiki/SetVehicleRespawnDelay
	**/
	static function setVehicleRespawnDelay():Void

	/**
		This function sets the position (and rotation) the vehicle will respawn to.

		@see https://wiki.mtasa.com/wiki/SetVehicleRespawnPosition
	**/
	static function setVehicleRespawnPosition():Void

	/**
		This function sets the rotation the vehicle will respawn to.

		@see https://wiki.mtasa.com/wiki/SetVehicleRespawnRotation
	**/
	static function setVehicleRespawnRotation():Void

	/**
		This function changes the properties of a vehicles siren point.

		@see https://wiki.mtasa.com/wiki/SetVehicleSirens
	**/
	static function setVehicleSirens():Void

	/**
		This function changes the state of the sirens on the specified vehicle.

		@see https://wiki.mtasa.com/wiki/SetVehicleSirensOn
	**/
	static function setVehicleSirensOn():Void

	/**
		This function will set the taxi light on in a taxi (vehicle ID's 420 and 438)

		@see https://wiki.mtasa.com/wiki/SetVehicleTaxiLightOn
	**/
	static function setVehicleTaxiLightOn():Void

	/**
		This function sets the position of a vehicle's turret, if it has one. This can be used to influence the turret's rotation, so it doesn't follow the camera. Vehicles with turrets include firetrucks and tanks.

		@see https://wiki.mtasa.com/wiki/SetVehicleTurretPosition
	**/
	static function setVehicleTurretPosition():Void

	/**
		This function sets the variant of a specified vehicle. In GTA SA some vehicles are different for example the labelling on trucks or the contents of a pick-up truck and the varying types of a motor bike. For the default GTA SA variant list see: Vehicle variants

		@see https://wiki.mtasa.com/wiki/SetVehicleVariant
	**/
	static function setVehicleVariant():Void

	/**
		This function sets the state of wheels on the vehicle.Internally, no vehicles have more than 4 wheels. If they appear to, they will be duplicating other wheels.

		@see https://wiki.mtasa.com/wiki/SetVehicleWheelStates
	**/
	static function setVehicleWheelStates():Void

	/**
		Spawns a vehicle at any given position and rotation

		@see https://wiki.mtasa.com/wiki/SpawnVehicle
	**/
	static function spawnVehicle():Void

	/**
		This function toggles whether or not the vehicle will be respawned after blown or idle.

		@see https://wiki.mtasa.com/wiki/ToggleVehicleRespawn
	**/
	static function toggleVehicleRespawn():Void

	/**
		Creates an area of water.

		@see https://wiki.mtasa.com/wiki/CreateWater
	**/
	static function createWater():Void

	/**
		This function returns the water color of the GTA world.Note: The server can only return the water color, if it has actually been set by script.

		@see https://wiki.mtasa.com/wiki/GetWaterColor
	**/
	static function getWaterColor():Void

	/**
		Gets the world position of a vertex (i.e. corner) of a water area. Each water area is either a triangle or quad (rectangle) so each has 3 or 4 corners.

		@see https://wiki.mtasa.com/wiki/GetWaterVertexPosition
	**/
	static function getWaterVertexPosition():Void

	/**
		This function returns the current wave height.

		@see https://wiki.mtasa.com/wiki/GetWaveHeight
	**/
	static function getWaveHeight():Void

	/**
		This function reset the water color of the GTA world to default.

		@see https://wiki.mtasa.com/wiki/ResetWaterColor
	**/
	static function resetWaterColor():Void

	/**
		This function resets the water of the GTA world back to its default level. Water elements are not affected.

		@see https://wiki.mtasa.com/wiki/ResetWaterLevel
	**/
	static function resetWaterLevel():Void

	/**
		This function changes the water color of the GTA world.

		@see https://wiki.mtasa.com/wiki/SetWaterColor
	**/
	static function setWaterColor():Void

	/**
		Sets the height of some or all the water in the game world.

		@see https://wiki.mtasa.com/wiki/SetWaterLevel
	**/
	static function setWaterLevel():Void

	/**
		Sets the world position of a corner point of a water area.

		@see https://wiki.mtasa.com/wiki/SetWaterVertexPosition
	**/
	static function setWaterVertexPosition():Void

	/**
		This function sets the wave height to the desired value, the default is 0.

		@see https://wiki.mtasa.com/wiki/SetWaveHeight
	**/
	static function setWaveHeight():Void

	/**
		This function gets the original weapon property of the specified weapons specified weapon type.

		@see https://wiki.mtasa.com/wiki/GetOriginalWeaponProperty
	**/
	static function getOriginalWeaponProperty():Void

	/**
		This function allows you to identify the weapon slot that a weapon belongs to.Returns an integer representing the given weapon ID's associated weapon slot, false if the ID was invalid.

		@see https://wiki.mtasa.com/wiki/GetSlotFromWeapon
	**/
	static function getSlotFromWeapon():Void

	/**
		This function will obtain the ID of a particular weapon from its name.Returns an int if the name matches that of a weapon, false otherwise.

		@see https://wiki.mtasa.com/wiki/GetWeaponIDFromName
	**/
	static function getWeaponIDFromName():Void

	/**
		This function allows you to retrieve the name of a weapon from an ID.  Note it also allows you to retrieve the name of other methods of death, such as Fall and Rammed.Returns a string of the name of the weapon, false otherwise. Names will be like these: (Ignoring case)

		@see https://wiki.mtasa.com/wiki/GetWeaponNameFromID
	**/
	static function getWeaponNameFromID():Void

	/**
		This function gets a weapon property of the specified custom weapon (clientside only) or specified player-held weapon (both client and server).

		@see https://wiki.mtasa.com/wiki/GetWeaponProperty
	**/
	static function getWeaponProperty():Void

	/**
		giveWeapon gives a specified weapon to a certain player or ped. There is an optional argument to specify ammunition. For example, a melee weapon doesn't need an ammo argument.NOTE: When using optional arguments, you might need to supply all arguments before the one you wish to use. For more information on optional arguments, see optional arguments.

		@see https://wiki.mtasa.com/wiki/GiveWeapon
	**/
	static function giveWeapon():Void

	/**
		Sets the ammo to a certain amount for a specified weapon (if they already have it), regardless of current ammo.

		@see https://wiki.mtasa.com/wiki/SetWeaponAmmo
	**/
	static function setWeaponAmmo():Void

	/**
		This function sets the weapon property of the specified weapons specified weapon type. See lower down the page for documentation related to weapon creation.

		@see https://wiki.mtasa.com/wiki/SetWeaponProperty
	**/
	static function setWeaponProperty():Void

	/**
		This function removes every weapons from a specified ped, rendering it unarmed.Returns true if the function succeeded, false otherwise.

		@see https://wiki.mtasa.com/wiki/TakeAllWeapons
	**/
	static function takeAllWeapons():Void

	/**
		This function removes a specified weapon or ammo from a certain player's inventory.Returns a true if the weapon/ammo was removed successfully, false otherwise.

		@see https://wiki.mtasa.com/wiki/TakeWeapon
	**/
	static function takeWeapon():Void

	/**
		Gets whether the traffic lights are currently locked or not. If the lights are locked, it means they won't change unless you do setTrafficLightState.Returns true the traffic lights are currently locked, false otherwise.

		@see https://wiki.mtasa.com/wiki/AreTrafficLightsLocked
	**/
	static function areTrafficLightsLocked():Void

	/**
		This function returns the maximum velocity at which aircrafts could fly. Using this function server-side will return the server-side value, not necessarily the same that is set client-side.Returns a float being the max velocity that is currently set, depending on which side it is used.

		@see https://wiki.mtasa.com/wiki/GetAircraftMaxVelocity
	**/
	static function getAircraftMaxVelocity():Void

	/**
		This function will tell you if clouds are enabled or disabled.Returns true if the clouds are enabled or false if clouds are disabled.

		@see https://wiki.mtasa.com/wiki/GetCloudsEnabled
	**/
	static function getCloudsEnabled():Void

	/**
		This function will tell you what is the current render distance.

		@see https://wiki.mtasa.com/wiki/GetFarClipDistance
	**/
	static function getFarClipDistance():Void

	/**
		This function will tell you what is the current fog render distance.

		@see https://wiki.mtasa.com/wiki/GetFogDistance
	**/
	static function getFogDistance():Void

	/**
		This function gets the current game speed value.

		@see https://wiki.mtasa.com/wiki/GetGameSpeed
	**/
	static function getGameSpeed():Void

	/**
		This function returns the current gravity level for the context in which it is called (server or client).Returns a float with the current server or client (depending on where you call the function) gravity level.

		@see https://wiki.mtasa.com/wiki/GetGravity
	**/
	static function getGravity():Void

	/**
		This function will return the current heat haze effect settings.Note: The server can only return the heat haze settings if it has actually been set by script.

		@see https://wiki.mtasa.com/wiki/GetHeatHaze
	**/
	static function getHeatHaze():Void

	/**
		This function gets the maximum height at which your jetpack can fly without failing to go higher.Returns a float containing the max jetpack height.

		@see https://wiki.mtasa.com/wiki/GetJetpackMaxHeight
	**/
	static function getJetpackMaxHeight():Void

	/**
		This function checks if a weapon is usable while on a Jetpack.Returns true if the weapon is enabled, else false if the weapon isn't or invalid arguments are passed.

		@see https://wiki.mtasa.com/wiki/GetJetpackWeaponEnabled
	**/
	static function getJetpackWeaponEnabled():Void

	/**
		Tells you how long an ingame minute takes in real-world milliseconds. The default GTA value is 1000.None

		@see https://wiki.mtasa.com/wiki/GetMinuteDuration
	**/
	static function getMinuteDuration():Void

	/**
		This function returns the moon size. Using this function server-side will return the server-side value, not necessarily the same that is set client-side.Returns a integer being the moon size that is currently set, depending on which side it is used.

		@see https://wiki.mtasa.com/wiki/GetMoonSize
	**/
	static function getMoonSize():Void

	/**
		This function is used to get "occlusions enabled" state.Note: Occlusions are used by GTA to enhance performance by hiding objects that are (normally) obscured by certain large buildings. However when removeWorldModel is used they may also have the undesired effect of making parts of the map disappear. Disabling occlusions will fix that.

		@see https://wiki.mtasa.com/wiki/GetOcclusionsEnabled
	**/
	static function getOcclusionsEnabled():Void

	/**
		This function is used to get the current rain level.Note: The server can only return the rain level if it has actually been set by script, otherwise it will return false.

		@see https://wiki.mtasa.com/wiki/GetRainLevel
	**/
	static function getRainLevel():Void

	/**
		This function will return the current sky color.Note: The server can only return the sky color if it has actually been set by script.

		@see https://wiki.mtasa.com/wiki/GetSkyGradient
	**/
	static function getSkyGradient():Void

	/**
		This function is used to get the color of the sun.Returns the color of the sun as six numbers, false if its default.

		@see https://wiki.mtasa.com/wiki/GetSunColor
	**/
	static function getSunColor():Void

	/**
		This function is used to get the size of the sun.Returns the size of the sun as a number, false if the size of the sun is at its default.

		@see https://wiki.mtasa.com/wiki/GetSunSize
	**/
	static function getSunSize():Void

	/**
		This function is used to get the current time in the game. If you want to get the real server time, use getRealTime.Returns two ints that represent hours and minutes.

		@see https://wiki.mtasa.com/wiki/GetTime
	**/
	static function getTime():Void

	/**
		Gets the current traffic light state. This state controls the traffic light colors. For instance, state 1 will cause the north and south traffic lights to be amber, and the ones left and east will turn red.Returns the current state of the traffic lights.

		@see https://wiki.mtasa.com/wiki/GetTrafficLightState
	**/
	static function getTrafficLightState():Void

	/**
		This function returns the current Weather ID.Returns two integers indicating the weather type that is currently active. The first integer says what weather is currently considered to be active. The second integer is the weather id that is being blended into if any, otherwise it is nil.

		@see https://wiki.mtasa.com/wiki/GetWeather
	**/
	static function getWeather():Void

	/**
		This function gets the wind velocity in San Andreas.This example returns the wind velocity to a player if they use the command 'getwindvelocity'.

		@see https://wiki.mtasa.com/wiki/GetWindVelocity
	**/
	static function getWindVelocity():Void

	/**
		This function allows you to retrieve the zone name of a certain location.Note that between versions 1.1 and 1.3.0-3749 the default value for citiesonly was incorrect when called the client side. The work around for clients before 1.3.0-3749 is to always declare a value for citiesonly. Server side getZoneName was unaffected.

		@see https://wiki.mtasa.com/wiki/GetZoneName
	**/
	static function getZoneName():Void

	/**
		This function checks whether or not a specific garage door is open.Returns true if the garage is open, false if it is closed or an invalid garage ID was given.

		@see https://wiki.mtasa.com/wiki/IsGarageOpen
	**/
	static function isGarageOpen():Void

	/**
		This function is used to remove a world object.Returns true if the object was removed, false if invalid arguments were passed.

		@see https://wiki.mtasa.com/wiki/RemoveWorldModel
	**/
	static function removeWorldModel():Void

	/**
		This function resets the far clip distance to its default state.

		@see https://wiki.mtasa.com/wiki/ResetFarClipDistance
	**/
	static function resetFarClipDistance():Void

	/**
		This function resets the fog render distance to its default state.

		@see https://wiki.mtasa.com/wiki/ResetFogDistance
	**/
	static function resetFogDistance():Void

	/**
		This function restores the default heat haze.Returns true if the heat haze was reset correctly, false otherwise.

		@see https://wiki.mtasa.com/wiki/ResetHeatHaze
	**/
	static function resetHeatHaze():Void

	/**
		This function is used to reset the size of the moon to its normal size.Returns true if the size of the moon was reset, false otherwise.

		@see https://wiki.mtasa.com/wiki/ResetMoonSize
	**/
	static function resetMoonSize():Void

	/**
		This function resets the rain level of the current weather to its default.Returns true if the rain level was reset.

		@see https://wiki.mtasa.com/wiki/ResetRainLevel
	**/
	static function resetRainLevel():Void

	/**
		This function allows restoring of a changed sky gradient as a result of setSkyGradient.Returns true if sky color was reset correctly, false otherwise.

		@see https://wiki.mtasa.com/wiki/ResetSkyGradient
	**/
	static function resetSkyGradient():Void

	/**
		This function is used to reset the color of the sun to its normal color.Returns true if the color of the sun was reset, false otherwise.

		@see https://wiki.mtasa.com/wiki/ResetSunColor
	**/
	static function resetSunColor():Void

	/**
		This function is used to reset the size of the sun to its normal size.Returns true if the size of the sun was reset, false otherwise.

		@see https://wiki.mtasa.com/wiki/ResetSunSize
	**/
	static function resetSunSize():Void

	/**
		This function resets the wind velocity in San Andreas to its default state.Returns true if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/ResetWindVelocity
	**/
	static function resetWindVelocity():Void

	/**
		This function allows restoring of all world objects,which were removed with RemoveWorldModel.Returns true if the world objects were restored, false otherwise.

		@see https://wiki.mtasa.com/wiki/RestoreAllWorldModels
	**/
	static function restoreAllWorldModels():Void

	/**
		This function allows restoring of world object,which was removed with RemoveWorldModel.

		@see https://wiki.mtasa.com/wiki/RestoreWorldModel
	**/
	static function restoreWorldModel():Void

	/**
		This function sets the maximum velocity at which aircrafts could fly. Using this function server-side will overwrite the value that was previously set client-side.Returns true if the max velocity was set correctly, false otherwise.

		@see https://wiki.mtasa.com/wiki/SetAircraftMaxVelocity
	**/
	static function setAircraftMaxVelocity():Void

	/**
		This function will enable or disable clouds. This is useful for race maps which are placed high up as clouds can cause low FPS.Returns true if the cloud state was changed succesfully, false if an invalid argument was specified.

		@see https://wiki.mtasa.com/wiki/SetCloudsEnabled
	**/
	static function setCloudsEnabled():Void

	/**
		This function is used to set the distance of render. Areas beyond the specified distance will not be rendered.Returns true if the distance was set correctly, false if invalid arguments were passed.

		@see https://wiki.mtasa.com/wiki/SetFarClipDistance
	**/
	static function setFarClipDistance():Void

	/**
		This function changes the distance at which fog appears. Keep in mind that this function doesn't change the distance of render.

		@see https://wiki.mtasa.com/wiki/SetFogDistance
	**/
	static function setFogDistance():Void

	/**
		This function sets the game speed to the given value.Returns true if the gamespeed was set successfully, false otherwise.
The normal game speed is '1'.

		@see https://wiki.mtasa.com/wiki/SetGameSpeed
	**/
	static function setGameSpeed():Void

	/**
		This function opens or closes the specified garage door in the world.Returns true if successful, false if an invalid garage id was given.

		@see https://wiki.mtasa.com/wiki/SetGarageOpen
	**/
	static function setGarageOpen():Void

	/**
		This function sets the server's gravity level.Note: This does not effect peds/players; to set ped/player gravity use setPedGravity.

		@see https://wiki.mtasa.com/wiki/SetGravity
	**/
	static function setGravity():Void

	/**
		This function changes the heat haze effect.NOTE: When using optional arguments, you might need to supply all arguments before the one you wish to use. For more information on optional arguments, see optional arguments.

		@see https://wiki.mtasa.com/wiki/SetHeatHaze
	**/
	static function setHeatHaze():Void

	/**
		This function disables or enables the ambient sounds played by GTA in most interiors, like restaurants, casinos, clubs, houses, etc.

		@see https://wiki.mtasa.com/wiki/SetInteriorSoundsEnabled
	**/
	static function setInteriorSoundsEnabled():Void

	/**
		This function sets a weapon usable while using the Jetpack.Returns true, else false if invalid arguments are passed.

		@see https://wiki.mtasa.com/wiki/SetJetpackWeaponEnabled
	**/
	static function setJetpackWeaponEnabled():Void

	/**
		Sets the real-world duration of an ingame minute. The GTA default is 1000.Returns true if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/SetMinuteDuration
	**/
	static function setMinuteDuration():Void

	/**
		This function sets the moon size. Using this function server-side will overwrite the value that was previously set client-side.Returns true if the moon size was set correctly, false otherwise.

		@see https://wiki.mtasa.com/wiki/SetMoonSize
	**/
	static function setMoonSize():Void

	/**
		This function is used to enable or disable occlusions. Occlusions are used by GTA to enhance performance by hiding objects that are (normally) obscured by certain large buildings. However when removeWorldModel is used they may also have the undesired effect of making parts of the map disappear. Disabling occlusions will fix that.Returns true if the setting was set correctly, false if invalid arguments were passed.

		@see https://wiki.mtasa.com/wiki/SetOcclusionsEnabled
	**/
	static function setOcclusionsEnabled():Void

	/**
		This function sets the rain level to any weather available in GTA. Use resetRainLevel to undo the changes.Returns true if the rain level was set, false otherwise.

		@see https://wiki.mtasa.com/wiki/SetRainLevel
	**/
	static function setRainLevel():Void

	/**
		This function changes the sky color to a two-color gradient.NOTE: When using optional arguments, you might need to supply all arguments before the one you wish to use. For more information on optional arguments, see optional arguments.

		@see https://wiki.mtasa.com/wiki/SetSkyGradient
	**/
	static function setSkyGradient():Void

	/**
		This function is used to set the color of the sun.Returns true if the color of the sun was set, false otherwise.

		@see https://wiki.mtasa.com/wiki/SetSunColor
	**/
	static function setSunColor():Void

	/**
		This function is used to set the size of the sun.Returns true if the size of the sun was set, false otherwise.

		@see https://wiki.mtasa.com/wiki/SetSunSize
	**/
	static function setSunSize():Void

	/**
		This function sets the current GTA time to the given time.Returns true if the new time was successfully set, false otherwise.

		@see https://wiki.mtasa.com/wiki/SetTime
	**/
	static function setTime():Void

	/**
		Sets the current traffic light state. This state controls the traffic light colors. For instance, state 1 will cause the north and south traffic lights to be amber, and the ones left and east will turn red.Alternatively, you can provide two string parameters (colorNS and colorEW) with the colors for north-south and east-west traffic lights respectively. Valid colors are:

		@see https://wiki.mtasa.com/wiki/SetTrafficLightState
	**/
	static function setTrafficLightState():Void

	/**
		Toggles whether you want the traffic lights to be locked. If the lights are locked, it means they won't change unless you do setTrafficLightState.Returns true if the successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/SetTrafficLightsLocked
	**/
	static function setTrafficLightsLocked():Void

	/**
		This function sets the current weather to the given valid value. To change the weather gradually, see setWeatherBlended.Returns true if the weather was set succesfully, false if an invalid weatherID was specified.

		@see https://wiki.mtasa.com/wiki/SetWeather
	**/
	static function setWeather():Void

	/**
		This function will change the current weather to another in a smooth manner, over the period of 1-2 in-game hours (unlike setWeather, which sets a new weather instantly). To ensure this transition performs as expected, you should not call this function until getWeather indicates that no transition is already being done.Returns true if successful, false if an invalid weatherID is passed.

		@see https://wiki.mtasa.com/wiki/SetWeatherBlended
	**/
	static function setWeatherBlended():Void

	/**
		This function changes the wind velocity. The wind shakes the vegetation and makes particles fly in a direction. The intensity and direction of the effect deppends of the wind velocity in each axis.Returns true if successful, false if bad arguments were passed.

		@see https://wiki.mtasa.com/wiki/SetWindVelocity
	**/
	static function setWindVelocity():Void

	/**
		This function copies all contents of a certain node in a XML document to a new document file, so the copied node becomes the new file's root node.
The new file will not be saved to file system until xmlSaveFile() is called

		@see https://wiki.mtasa.com/wiki/XmlCopyFile
	**/
	static function xmlCopyFile():Void

	/**
		This function creates a new child node under an XML node.

		@see https://wiki.mtasa.com/wiki/XmlCreateChild
	**/
	static function xmlCreateChild():Void

	/**
		This function creates a new XML document, which can later be saved to a file by using xmlSaveFile. This function will overwrite the file specified if it already exists.

		@see https://wiki.mtasa.com/wiki/XmlCreateFile
	**/
	static function xmlCreateFile():Void

	/**
		This function destroys a XML node from the XML node tree.

		@see https://wiki.mtasa.com/wiki/XmlDestroyNode
	**/
	static function xmlDestroyNode():Void

	/**
		This function returns a named child node of an XML node.

		@see https://wiki.mtasa.com/wiki/XmlFindChild
	**/
	static function xmlFindChild():Void

	/**
		This function provides an alternative way to load XML files to getResourceConfig.
This function loads an XML file and returns the node by specifying a specific file path, while getResourceConfig allows for loading an XML file from a resource.

		@see https://wiki.mtasa.com/wiki/XmlLoadFile
	**/
	static function xmlLoadFile():Void

	/**
		This function is used to return an attribute of a node in a configuration file.

		@see https://wiki.mtasa.com/wiki/XmlNodeGetAttribute
	**/
	static function xmlNodeGetAttribute():Void

	/**
		Returns all the attributes of a specific XML node.

		@see https://wiki.mtasa.com/wiki/XmlNodeGetAttributes
	**/
	static function xmlNodeGetAttributes():Void

	/**
		This function returns all children of a particular XML node, or a particular child node.

		@see https://wiki.mtasa.com/wiki/XmlNodeGetChildren
	**/
	static function xmlNodeGetChildren():Void

	/**
		Gets the tag name of the specified XML node.

		@see https://wiki.mtasa.com/wiki/XmlNodeGetName
	**/
	static function xmlNodeGetName():Void

	/**
		Returns the parent node of an xml node.

		@see https://wiki.mtasa.com/wiki/XmlNodeGetParent
	**/
	static function xmlNodeGetParent():Void

	/**
		This function is made to be able to read tag values in XML files (eg. <something>anything</something>).

		@see https://wiki.mtasa.com/wiki/XmlNodeGetValue
	**/
	static function xmlNodeGetValue():Void

	/**
		This function is used to edit an attribute of a node in a configuration file.

		@see https://wiki.mtasa.com/wiki/XmlNodeSetAttribute
	**/
	static function xmlNodeSetAttribute():Void

	/**
		Sets the tag name of the specified XML node.

		@see https://wiki.mtasa.com/wiki/XmlNodeSetName
	**/
	static function xmlNodeSetName():Void

	/**
		This function is made to be able to assign values to tags in XML files (eg. <something>anything</something>).

		@see https://wiki.mtasa.com/wiki/XmlNodeSetValue
	**/
	static function xmlNodeSetValue():Void

	/**
		This function saves a loaded XML file.

		@see https://wiki.mtasa.com/wiki/XmlSaveFile
	**/
	static function xmlSaveFile():Void

	/**
		Unloads an XML document from memory.

		@see https://wiki.mtasa.com/wiki/XmlUnloadFile
	**/
	static function xmlUnloadFile():Void

// output here
}