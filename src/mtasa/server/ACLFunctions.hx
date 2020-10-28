package mtasa.server;

import mtasa.server.classes.Element;
import haxe.extern.EitherType;
import mtasa.server.classes.ACL;
import mtasa.server.classes.ACLGroup;

@:native('_G')
extern class ACLFunctions {
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
}
