package mtasa.server.classes;

import haxe.extern.EitherType;

@:native('ACL')
extern class ACL {
	var name:String;

	/**
		This function creates an ACL entry in the Access Control List system with the specified name.

		@param name The name of the ACL entry to add.

		@return Created ACL object if successful. Returns false if an ACL of the given name could not be created.

		@see https://wiki.multitheftauto.com/wiki/AclCreate
	**/
	@:native('create')
	public function new(name:String);

	/**
		This function destroys the ACL passed. The destroyed ACL will no longer be valid.

		@return True if successfully destroyed and false if it could not be deleted (ie. it's not valid).

		@see https://wiki.multitheftauto.com/wiki/AclDestroy
	**/
	public function destroy():Bool;

	/**
		Get the ACL with the given name. If need to get most of the ACL's, you should consider using aclList to get a table of them all.

		@param name The name to get the ACL belonging to

		@return ACL with that name if it could be retrieved, false/nil if the ACL does not exist or it fails for some other reason.

		@see https://wiki.multitheftauto.com/wiki/AclGet
	**/
	static function get(name:String):ACL;

	/**
		Get the name of given ACL.

		@return Name of the given ACL as a string if successful. Returns false/nil if unsuccessful, ie the ACL is invalid.

		@see https://wiki.multitheftauto.com/wiki/AclGetName
	**/
  public function getName():String;
  
  /**
		This function returns whether the access for the given right is set to true or false in the ACL.

		@param rightName The right name to return the access value of.

		@return True or false if the ACL gives access or not to the given function. Returns nil if it failed for some reason, e.g. an invalid ACL was specified or the right specified does not exist in the ACL.

		@see https://wiki.multitheftauto.com/wiki/AclGetRight
	**/
  public function getRight(rightName:String):Bool;
  
  /**
		This function returns a list of all the ACLs.

		@return Table of all the ACLs. This table can be empty if no ACLs exist. It can also return false/nil if it failed for some reason.

		@see https://wiki.multitheftauto.com/wiki/AclList
	**/
  static function list():lua.Table<Int, ACL>;
  
  /**
		This function returns a table of all the rights that a given ACL has.

		@param allowedType The allowed right type. Possible values are general, function, resource and command

		@return Table over the rights as strings in the given ACL. This table might be empty. Returns false or nil if theACL is invalid or it fails for some other reason.

		@see https://wiki.multitheftauto.com/wiki/AclListRights
	**/
  public function aclListRights(allowedType:String):lua.Table<Int, String>;
  
  /**
		This function reloads the ACL's and the ACL groups from the ACL XML file. All ACL and ACL group elements are invalid after a call to this and should not be used anymore.

		@return True if the XML was successfully reloaded from the file, false or nil if the XML was invalid, didn't exist or could not be loaded for some other reason.

		@see https://wiki.multitheftauto.com/wiki/AclReload
	**/
  static function reload():Bool;
  
  /**
		This function removes the given right (string) from the given ACL.

		@param rightName The ACL name to remove from the right from

		@return True if the given right was successfully removed from the given ACL, false or nil if it could not be removed for some reason, ie. it didn't exist in the ACL.

		@see https://wiki.multitheftauto.com/wiki/AclRemoveRight
	**/
  public function removeRight(rightName:String):Bool;
  
  /**
		The ACL XML file is automatically saved whenever the ACL is modified, but the automatic save can be delayed by up to 10 seconds for performance reasons. Calling this function will force an immediate save.

		@return True if the ACL was successfully changed, false or nil if it could not be saved for some reason, ie. file in use.

		@see https://wiki.multitheftauto.com/wiki/AclSave
	**/
  static function save():Bool;
  
  /**
		This functions changes or adds the given right in the given ACL. The access can be true or false and specifies whether the ACL gives access to the right or not.

		@param rightName The right to add/change the access property of
		@param hasAccess Whether the access should be set to true or false

		@return True if the access was successfully changed, false or nil if it failed for some reason, ie. invalid ACL or the rightname is invalid.

		@see https://wiki.multitheftauto.com/wiki/AclSetRight
	**/
  static function aclSetRight(rightName:String, hasAccess:Bool):Bool;
  
  /**
		This function returns whether or not the given object has access to perform the given action.
		
		@param object The object to test if has permission to. This can be a client element (ie. a player), a resource or a string in the form "user.<name>" or "resource.<name>".
		@param action The action to test if the given object has access to. Ie. "function.kickPlayer".
		@param defaultPermission The default permission if none is specified in either of the groups the given object is a member of. If this is left to true, the given object will have permissions to perform the action unless the opposite is explicitly specified in the ACL. If false, the action will be denied by default unless explicitly approved by the Access Control List.

		@return True if the given object has permission to perform the given action, false otherwise. Returns nil if the function failed because of bad arguments.

		@see https://wiki.multitheftauto.com/wiki/HasObjectPermissionTo
	**/
	static function hasObjectPermissionTo(object:EitherType<Element, String>, action:String, ?defaultPermission:Bool = true):Bool;
}
