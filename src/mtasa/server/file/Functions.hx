package mtasa.server.file;

import haxe.extern.Rest;
import mtasa.server.classes.File;

@:native('_G')
extern class Functions {
  /**
		Closes a file handle obtained by fileCreate or fileOpen.

		@see https://wiki.mtasa.com/wiki/FileClose
	**/
	static function fileClose(file:File):Bool;

	/**
		This function copies a file.

		@see https://wiki.mtasa.com/wiki/FileCopy
	**/
	static function fileCopy(filePath:String, copyToFilePath:String, ?overwrite:Bool = false):Bool;

	/**
		Creates a new file in a directory of a resource. If there already exists a file with the specified name, it is overwritten with an empty file.

		@see https://wiki.mtasa.com/wiki/FileCreate
	**/
	static function fileCreate(filePath:String):File;

	/**
		Deletes the specified file.

		@see https://wiki.mtasa.com/wiki/FileDelete
	**/
	static function fileDelete(filePath:String):String;

	/**
		This functions checks whether a specified file exists inside a resource.

		@see https://wiki.mtasa.com/wiki/FileExists
	**/
	static function fileExists(filePath:String):Bool;

	/**
		Forces pending disk writes to be executed. fileWrite doesn't directly write to the hard disk but places the data in a temporary buffer; only when there is enough data in the buffer it is actually written to disk. Call this function if you need the data written right now without closing the file. This is useful for log files that might want to be read while the resource is still executing. fileFlush can be called after each log entry is written. Without this, the file may appear empty or outdated to the user.

		@see https://wiki.mtasa.com/wiki/FileFlush
	**/
	static function fileFlush(file:File):Bool;

	/**
		This function retrieves the path of the given file.Returns a string representing the file path, false if invalid file was provided.

		@see https://wiki.mtasa.com/wiki/FileGetPath
	**/
	static function fileGetPath(file:File):String;

	/**
		Returns the current read/write position in the given file.

		@see https://wiki.mtasa.com/wiki/FileGetPos
	**/
	static function fileGetPos(file:File):Int;

	/**
		Returns the total size in bytes of the given file.

		@see https://wiki.mtasa.com/wiki/FileGetSize
	**/
	static function fileGetSize(file:File):Int;

	/**
		Checks if the file position is at the end of the file.

		@see https://wiki.mtasa.com/wiki/FileIsEOF
	**/
	static function fileIsEOF(file:File):Bool;

	/**
		Opens an existing file for reading and writing.

		@see https://wiki.mtasa.com/wiki/FileOpen
	**/
	static function fileOpen(file:File, ?readOnly:Bool = false):File;

	/**
		Reads the specified number of bytes from the given file starting at its current read/write position, and returns them as a string.

		@see https://wiki.mtasa.com/wiki/FileRead
	**/
	static function fileRead(file:File, count:Int):String;

	/**
		Renames the specified file.

		@see https://wiki.mtasa.com/wiki/FileRename
	**/
	static function fileRename(filePath:String, newFilePath:String):Bool;

	/**
		Sets the current read/write position in the file.

		@see https://wiki.mtasa.com/wiki/FileSetPos
	**/
	static function fileSetPos(file:File, offset:Int):Int;

	/**
		Writes one or more strings to a given file, starting at the current read/write position. Advances the position over the number of bytes that were written.

		@see https://wiki.mtasa.com/wiki/FileWrite
	**/
	static function fileWrite(file:File, data:Rest<String>):Void;
}