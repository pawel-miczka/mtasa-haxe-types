package mtasa.server.acl;

import mtasa.server.classes.ACLGroup;
import mtasa.server.classes.ACL;

@:native('_G')
extern class Functions {
  /**
		This function creates an ACL entry in the Access Control List system with the specified name.

		@see https://wiki.mtasa.com/wiki/AclCreate
	**/
	static function aclCreate(aclName:String):ACL;

	/**
		This function creates a group in the ACL. An ACL group can contain objects like players and resources. They specify who has access to the ACL's in this group.

		@see https://wiki.mtasa.com/wiki/AclCreateGroup
	**/
	static function aclCreateGroup(groupName:String):ACLGroup;

	/**
		This function destroys the ACL passed. The destroyed ACL will no longer be valid.

		@see https://wiki.mtasa.com/wiki/AclDestroy
	**/
	static function aclDestroy(theACL:ACL):Bool;

	/**
		This function destroys the given ACL group. The destroyed ACL group will no longer be valid.

		@see https://wiki.mtasa.com/wiki/AclDestroyGroup
	**/
	static function aclDestroyGroup(aclGroup:ACLGroup):Bool;

	/**
		Get the ACL with the given name. If need to get most of the ACL's, you should consider using aclList to get a table of them all.

		@see https://wiki.mtasa.com/wiki/AclGet
	**/
	static function aclGet(aclName:String):ACL;

	/**
		This function is used to get the ACL group with the given name. If you need most of the groups you should consider using aclGroupList instead to get a table containing them all.

		@see https://wiki.mtasa.com/wiki/AclGetGroup
	**/
	static function aclGetGroup(groupName:String):ACLGroup;

	/**
		Get the name of given ACL.

		@see https://wiki.mtasa.com/wiki/AclGetName
	**/
	static function aclGetName(theACL:ACL):String;

	/**
		This function returns whether the access for the given right is set to true or false in the ACL.

		@see https://wiki.mtasa.com/wiki/AclGetRight
	**/
	static function aclGetRight(theACL:ACL, rightName:String):Bool;

	/**
		This function adds the given ACL to the given ACL group. This makes the resources and players in the given ACL group have access to what's specified in the given ACL. The rights for something in the different ACL's in a group are OR-ed together, which means if one ACL gives access to something, this ACL group will have access to that.

		@see https://wiki.mtasa.com/wiki/AclGroupAddACL
	**/
	static function aclGroupAddACL(aclGroup:ACLGroup):Bool;

	/**
    This function adds an object to the given ACL group. An object can be a player's account, specified as:Or a resource, specified as:
    user.<accountName> or resource.<resourceName>

		@see https://wiki.mtasa.com/wiki/AclGroupAddObject
	**/
	static function aclGroupAddObject(aclGroup:ACLGroup, objectName:String):Bool;

	/**
		This function is used to get the name of the given ACL group.

		@see https://wiki.mtasa.com/wiki/AclGroupGetName
	**/
	static function aclGroupGetName(aclGroup:ACLGroup):String;

	/**
		This function returns a table of all the ACL groups.

		@see https://wiki.mtasa.com/wiki/AclGroupList
	**/
	static function aclGroupList():lua.Table<Int, ACL>;

	/**
		This function returns a table over all the ACL's that exist in a given ACL group.

		@see https://wiki.mtasa.com/wiki/AclGroupListACL
	**/
	static function aclGroupListACL(aclGroup:ACLGroup):lua.Table<Int, ACL>;

	/**
		This function returns a table over all the objects that exist in a given ACL group. These are objects like players and resources.

		@see https://wiki.mtasa.com/wiki/AclGroupListObjects
	**/
	static function aclGroupListObjects(aclGroup:ACLGroup):lua.Table<Int, String>;

	/**
		This function removes the given ACL from the given ACL group.

		@see https://wiki.mtasa.com/wiki/AclGroupRemoveACL
	**/
	static function aclGroupRemoveACL(aclGroup:ACLGroup, theACL:ACL):Bool;

	/**
		This function removes the given object from the given ACL group. The object can be a resource or a player. See aclGroupAddObject for more details.

		@see https://wiki.mtasa.com/wiki/AclGroupRemoveObject
	**/
	static function aclGroupRemoveObject(aclGroup:ACLGroup, objectName:String):Bool;

	/**
		This function returns a list of all the ACLs.

		@see https://wiki.mtasa.com/wiki/AclList
	**/
	static function aclList():lua.Table<Int, ACL>;

	/**
		This function returns a table of all the rights that a given ACL has.

		@see https://wiki.mtasa.com/wiki/AclListRights
	**/
	static function aclListRights(theACL:ACL, allowedType:String):lua.Table<Int, String>;

	/**
		This function reloads the ACL's and the ACL groups from the ACL XML file. All ACL and ACL group elements are invalid after a call to this and should not be used anymore.

		@see https://wiki.mtasa.com/wiki/AclReload
	**/
	static function aclReload():Bool;

	/**
		This function removes the given right (string) from the given ACL.

		@see https://wiki.mtasa.com/wiki/AclRemoveRight
	**/
	static function aclRemoveRight(theACL:ACL, rightName:String):Bool;

	/**
		The ACL XML file is automatically saved whenever the ACL is modified, but the automatic save can be delayed by up to 10 seconds for performance reasons. Calling this function will force an immediate save.

		@see https://wiki.mtasa.com/wiki/AclSave
	**/
	static function aclSave():Bool;

	/**
		This functions changes or adds the given right in the given ACL. The access can be true or false and specifies whether the ACL gives access to the right or not.

		@see https://wiki.mtasa.com/wiki/AclSetRight
	**/
	static function aclSetRight(theACL:ACL, rightName:String, hasAccess:Bool):Bool;

	/**
		This function returns whether or not the given object has access to perform the given action.Scripts frequently wish to limit access to features to particular users. The naïve way to do this would be to check if the player who is attempting to perform an action is in a particular group (usually the Admin group). The main issue with doing this is that the Admin group is not guaranteed to exist. It also doesn't give the server admin any flexibility. He might want to allow his 'moderators' access to the function you're limiting access to, or he may want it disabled entirely.

		@see https://wiki.mtasa.com/wiki/HasObjectPermissionTo
	**/
	static function hasObjectPermissionTo(objectName:String, action:String, ?defaultPermission:Bool):Bool;

	/**
		This function is used to determine if an object is in a group.

		@see https://wiki.mtasa.com/wiki/IsObjectInACLGroup
	**/
	static function isObjectInACLGroup(objectName:String, aclGroup:ACLGroup):Bool;
}