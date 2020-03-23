package mtasa.server.input;

import mtasa.server.classes.Resource;
import haxe.extern.Rest;
import haxe.Constraints.Function;

@:native('_G')
extern class Functions {
	/**
		This function will attach a scripting function (handler) to a console command, so that whenever a player or administrator uses the command the function is called.
		Note: You cannot use "check", "list" or "test" as a command name.

		@see https://wiki.mtasa.com/wiki/AddCommandHandler
	**/
	static function addCommandHandler(commandName:String, handlerFunction:(player:Player, commandName:String, arguments:Rest<String>) -> Void, ?restricted:Bool = false, ?caseSensitive:Bool = true):Bool;

	/**
		Binds a player's key to a handler function or command, which will be called when the key is pressed.

		@see https://wiki.mtasa.com/wiki/BindKey
  **/
  @:overload(function(player:Player, key:String, commandName:String):Bool {})
	static function bindKey(player:Player, key:String, keyState:String, handlerFunction:(?keyPresser:Player, ?key:String, ?keyState:String, arguments:Rest<Any>) -> Void, arguments:Rest<Any>):Bool;

	/**
		This function will call all the attached functions of an existing console command, for a specified player.

		@see https://wiki.mtasa.com/wiki/ExecuteCommandHandler
	**/
	static function executeCommandHandler(commandName:String, player:Player, arguments:Rest<Any>):Bool;

	/**
		This function is used to retrieve a list of all the registered command handlers of a given resource (or of all resources).

		@see https://wiki.mtasa.com/wiki/GetCommandHandlers
	**/
	static function getCommandHandlers(?resource:Resource):lua.Table<Int, Resource>; //TODO: resource should be Resource, return should be table with many Resource objects

	/**
		This function will check if a player is pressing a particular control. Controls are those that affect GTA. If you wish to get the state of another key, use bindKey and a command function.

		@see https://wiki.mtasa.com/wiki/GetControlState
	**/
	static function getControlState(player:Player, controlName:String):Bool;

	/**
		Gets the functions bound to a key. To bind a function to a key use the bindKey function

		@see https://wiki.mtasa.com/wiki/GetFunctionsBoundToKey
	**/
	static function getFunctionsBoundToKey(player:Player, key:String, keyState:String):lua.Table<Int, Function>;

	/**
		getKeyBoundToFunction allows retrieval of the first key bound to a function.Returns a string of the first key the function was bound to.

		@see https://wiki.mtasa.com/wiki/GetKeyBoundToFunction
	**/
	static function getKeyBoundToFunction(player:Player, boundFunction:Function):String;

	/**
		Checks whether a GTA control is enabled or disabled for a certain player.

		@see https://wiki.mtasa.com/wiki/IsControlEnabled
	**/
	static function isControlEnabled(player:Player, control:String):Bool;

	/**
		This function can be used to find out if a key has already been bound.

		@see https://wiki.mtasa.com/wiki/IsKeyBound
	**/
	static function isKeyBound(player:Player, key:String, ?keyState:String, ?handler:Function):Bool;

	/**
		This function removes a command handler, that is one that has been added using addCommandHandler. This function can only remove command handlers that were added by the resource that it is called in.

		@see https://wiki.mtasa.com/wiki/RemoveCommandHandler
	**/
	static function removeCommandHandler(commandName:String, ?handler:Function):Bool;

	/**
		Sets a state of a specified player's control, as if they pressed or released it.

		@see https://wiki.mtasa.com/wiki/SetControlState
	**/
	static function setControlState(player:Player, control:String, state:Bool):Bool;

	/**
		Enables or disables the use of all GTA controls for a specified player.NOTE: When using optional arguments, you might need to supply all arguments before the one you wish to use. For more information on optional arguments, see optional arguments.

		@see https://wiki.mtasa.com/wiki/ToggleAllControls
	**/
	static function toggleAllControls(player:Player, enabled:Bool, ?gtaControls:Bool, ?mtaControls:Bool):Bool;

	/**
		Enables or disables the use of a GTA control for a specific player.This function true if the control was set successfully, false otherwise.

		@see https://wiki.mtasa.com/wiki/ToggleControl
	**/
	static function toggleControl(player:Player, control:String, enabled:Bool):Bool;

	/**
		Removes an existing key bind from the specified player.Note: If you do not specify handler, any instances of key being bound will be unbound, whatever function they are bound to.

		@see https://wiki.mtasa.com/wiki/UnbindKey
  **/
  @:overload(function(player:String, key:String, ?keyState:String, ?handler:Function):Bool {})
	static function unbindKey(player:Player, key:String, keyState:String, command:String):Bool;
}
