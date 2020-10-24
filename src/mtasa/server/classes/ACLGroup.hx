package mtasa.server.classes;

@:native('ACLGroup')
extern class ACLGroup {
	var name:String;
	var objects:lua.Table<Int, String>;

	/**
		This function creates a group in the ACL. An ACL group can contain objects like players and resources. They specify who has access to the ACL's in this group.

		@param name The name of the group to create.

		@return Pointer to the created aclgroup if successful. Returns false if failed.

		@see https://wiki.multitheftauto.com/wiki/AclCreateGroup
	**/
	static function create(name:String):ACLGroup;

	/**
		This function destroys the given ACL group. The destroyed ACL group will no longer be valid.

		@return True if the ACL group was successfully deleted, false if it could not be deleted for some reason (ie. invalid argument).

		@see https://wiki.multitheftauto.com/wiki/AclDestroyGroup
	**/
	public function destroy():Bool;

	/**
		This function is used to get the ACL group with the given name. If you need most of the groups you should consider using aclGroupList instead to get a table containing them all.

		@param name The name to get the ACL group from

		@return ACL group if it could be found. Returns false/nil if it did not exist or failed for some reason.

		@see https://wiki.multitheftauto.com/wiki/AclGetGroup
	**/
	static function get(name:String):ACLGroup;

	/**
		This function adds the given ACL to the given ACL group. This makes the resources and players in the given ACL group have access to what's specified in the given ACL. The rights for something in the different ACL's in a group are OR-ed together, which means if one ACL gives access to something, this ACL group will have access to that.

		@param acl The ACL to add to the group

		@return True if the ACL could be successfully added to the ACL group, false/nil if either of the elements are invalid, the ACL is already in that group or if something else goes wrong.

		@see https://wiki.multitheftauto.com/wiki/AclGroupAddACL
	**/
	public function addACL(acl:ACL):Bool;

	/**
		This function adds an object to the given ACL group.

		@param objectName The object string to add to the given ACL.

		@return True if the object was successfully added to the ACL, false if it already existed in the list.

		@see https://wiki.multitheftauto.com/wiki/AclGroupAddObject
	**/
	public function addObject(objectName:String):Bool;

	/**
		This function is used to get the name of the given ACL group.

		@return Name of the given ACL group as a string if successful, otherwise false or nil if the aclGroup is invalid or it fails for some other reason.

		@see https://wiki.multitheftauto.com/wiki/AclGroupGetName
	**/
	public function getName():String;

	/**
		This function returns a table of all the ACL groups.

		@return table of all the ACL groups if successful, returns an empty table if no ACL groups exist. false/nil can be returned if this function fails for some other reason.

		@see https://wiki.multitheftauto.com/wiki/AclGroupList
	**/
	static function list():lua.Table<Int, ACLGroup>;

	/**
		This function returns a table over all the ACL's that exist in a given ACL group.

		@return Table of the ACL elements in the given ACL group. This table might be empty. Returns false or nil if theGroup is invalid or it fails for some other reason.

		@see https://wiki.multitheftauto.com/wiki/AclGroupListACL
	**/
	public function listACL():lua.Table<Int, ACL>;

	/**
		This function returns a table over all the objects that exist in a given ACL group. These are objects like players and resources.

		@param aclGroup The ACL group to get the objects from

		@return Table of strings in the given ACL group. This table might be empty. Returns false or nil if theGroup is invalid or it fails for some other reason.

		@see https://wiki.multitheftauto.com/wiki/AclGroupListObjects
	**/
	public function listObjects():lua.Table<Int, String>;

	/**
		This function removes the given ACL from the given ACL group.

		@param acl The ACL to remove from the given group

		@return true if the ACL was successfully removed from the ACL group, false/nil if it could not be removed for some reason, ie. either of the elements were invalid.

		@see https://wiki.multitheftauto.com/wiki/AclGroupRemoveACL
	**/
	public function removeACL(acl:ACL):Bool;

	/**
		This function removes the given object from the given ACL group. The object can be a resource or a player.

		@param objectName The object to remove from the ACL group

		@return True if the object existed in the ACL and could be remoevd, false if it could not be removed for some reason, ie. it did not exist in the given ACL group.

		@see https://wiki.multitheftauto.com/wiki/AclGroupRemoveObject
	**/
	static function removeObject(objectName:String):Bool;

	/**
		This function is used to determine if an object is in a group.

		@param object the name of the object to check. Examples: "resource.ctf", "user.Jim".

		@return True if the object is in the specified group, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/IsObjectInACLGroup
	**/
	public function doesContainObject(object:String):Bool;
}
