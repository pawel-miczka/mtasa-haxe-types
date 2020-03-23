package mtasa.server.module;

typedef ModuleInfo = {
  var version:String;
  var author:String;
  var name:String;
}

@:native('_G')
extern class Functions {
  /**
		This function returns all the currently loaded modules of the server.Returns a table of all the currently loaded modules. If no modules are loaded, the table will be empty.

		@see https://wiki.mtasa.com/wiki/GetLoadedModules
	**/
	static function getLoadedModules():lua.Table<Int, String>;

	/**
		This function returns information about the specified module.Returns a table containing information about module. These keys are present in the table:

		@see https://wiki.mtasa.com/wiki/GetModuleInfo
	**/
	static function getModuleInfo(moduleName:String):ModuleInfo;
}