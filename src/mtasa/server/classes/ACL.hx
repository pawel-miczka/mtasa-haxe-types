package mtasa.server.classes;

import mtasa.shared.Element;
import haxe.extern.EitherType;

@:native('ACL')
extern class ACL {
  public var name:String;

	/**
    This function creates an ACL entry in the Access Control List system with the specified name.
      
    @param aclName The name of the ACL entry to add.

		@see https://wiki.multitheftauto.com/wiki/AclCreate
	**/
  public static function create(aclName:String):ACL;
  
  /**
    This function destroys the ACL passed. The destroyed ACL will no longer be valid.
      
		@see https://wiki.multitheftauto.com/wiki/AclDestroy
	**/
  public function destroy():Bool;

  /**
    Get the ACL with the given name. If need to get most of the ACL's, you should consider using aclList to get a table of them all.
      
    @param aclName The name to get the ACL belonging to.

		@see https://wiki.multitheftauto.com/wiki/AclGet
	**/
  public static function get(aclName:String):ACL;

  /**
    Get the name of given ACL.
      
		@see https://wiki.multitheftauto.com/wiki/AclCreate
	**/
  public function getName():String;

  /**
    This function returns whether the access for the given right is set to true or false in the ACL.

    @param rightName The right name to return the access value of.
      
		@see https://wiki.multitheftauto.com/wiki/AclGetRight
	**/
  public function getRight(rightName:String):Bool;

  /**
    This function returns a list of all the ACLs.

		@see https://wiki.multitheftauto.com/wiki/AclList
	**/
  public function list():lua.Table<Int, ACL>;

  /**
    This function returns a table of all the rights that a given ACL has.

    @param allowedType The allowed right type. Possible values are general, function, resource and command.

		@see https://wiki.multitheftauto.com/wiki/AclListRights
	**/
  public function listRights(allowedType:String):lua.Table<Int, String>;

  /**
    This function reloads the ACL's and the ACL groups from the ACL XML file. All ACL and ACL group elements are invalid after a call to this and should not be used anymore.

    @see https://wiki.multitheftauto.com/wiki/AclReload
  **/
  public static function reload():Bool;

  /**
    This function removes the given right (string) from the given ACL.

    @param rightName The ACL name to remove from the right from

    @see https://wiki.multitheftauto.com/wiki/AclRemoveRight
  **/
  public function removeRight(rightName:String):Bool;

  /**
    The ACL XML file is automatically saved whenever the ACL is modified, but the automatic save can be delayed by up to 10 seconds for performance reasons. Calling this function will force an immediate save.

    @see https://wiki.multitheftauto.com/wiki/AclSave
  **/
  public static function save():Bool;

  /**
    This functions changes or adds the given right in the given ACL. The access can be true or false and specifies whether the ACL gives access to the right or not.

    @param rightName The right to add/change the access property of
    @param hasAccess Whether the access should be set to true or false

    @see https://wiki.multitheftauto.com/wiki/AclSetRight
  **/
  public function setRight(rightName:String, hasAccess:Bool):Bool;

  /**
    This function returns whether or not the given object has access to perform the given action.

    @param theObject The object to test if has permission to. This can be a client element (ie. a player), a resource or a string in the form "user.<name>" or "resource.<name>".
    @param theAction The action to test if the given object has access to. Ie. "function.kickPlayer".
    @param defaultPermission The default permission if none is specified in either of the groups the given object is a member of. If this is left to true, the given object will have permissions to perform the action unless the opposite is explicitly specified in the ACL. If false, the action will be denied by default unless explicitly approved by the Access Control List.

    @see https://wiki.multitheftauto.com/wiki/HasObjectPermissionTo
  **/
  public static function hasObjectPermissionTo(theObject:EitherType<String, Element>, theAction:String, ?defaultPermission:Bool = true):Bool;
}
