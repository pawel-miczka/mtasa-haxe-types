package mtasa.server.settings;

@:native('_G')
extern class Functions {
  /**
		This function gets a setting's value, or a group of settings' values, from the settings registry.

		@param settingName The name of the setting you want to get. See setting names for information on settings names.

		@see https://wiki.mtasa.com/wiki/Get
  **/
  @:overload(function(settingName:String):lua.Table<String, String> {})
	static function get(settingName:String):Dynamic;

	/**
		This function is used to save arbitrary data under a certain name on the settings registry.It's important to note that set always writes to the settings.xml file, even if get read the value from a resource's meta.xml. This means that the admin can specify settings in the settings.xml that override the resource's defaults, but that the defaults can still be retrieved if need be. As a general principle, resources should not be designed so that the admin is required to modify them, they should be 'black boxes'.

		@param settingName The name of the setting you want to set. See setting names for information on settings names.
		@param value The value to set the setting to. This can be any Lua data type, except for functions, most userdata (only resources can't be stored) and threads.

		@see https://wiki.mtasa.com/wiki/Set
	**/
	static function set(settingName:String, value:Dynamic):Bool; 
}