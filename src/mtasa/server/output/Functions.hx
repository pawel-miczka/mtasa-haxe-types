package mtasa.server.output;

import mtasa.shared.Element;

@:native('_G')
extern class Functions {
 /**
		This function clears the chatbox. It does not clear the console (F8)Returns true if the player's chat was cleared successfully, false otherwise.

		@see https://wiki.mtasa.com/wiki/ClearChatBox
	**/
	static function clearChatBox(?clearFor:Element):Bool;

	/**
		This outputs the specified text string to the chatbox. It can be specified as a message to certain player(s) or all players.

		@see https://wiki.mtasa.com/wiki/OutputChatBox
	**/
	static function outputChatBox(text:String, ?visibleTo:Element, ?r:Int = 231, ?g:Int = 217, ?b:Int = 176, ?colorCoded:Bool = false):Bool;

	/**
		This outputs the specified text string to the console window (accessed with F8 or ~ key). It can be specified as a message to certain player(s) or all players.

		@see https://wiki.mtasa.com/wiki/OutputConsole
	**/
	static function outputConsole(text:String, ?visibleTo:Element):Void;

	/**
		This function outputs scripting debug messages, which can be read by enabling the debug textbox. The debug display level can then be set so that info or warning messages get filtered out.

		@see https://wiki.mtasa.com/wiki/OutputDebugString
	**/
	static function outputDebugString(text:String, ?level:Int = 3, ?red:Int = 255, ?green:Int = 255, ?blue:Int = 255):Bool;

	/**
		This outputs a line of text to the server's log. This could be useful for debugging.

		@see https://wiki.mtasa.com/wiki/OutputServerLog
	**/
	static function outputServerLog(text:String):Bool;

	/**
		This function is used to show or hide the player's chat.Returns true if the player's chat was shown or hidden successfully, false otherwise.

		@see https://wiki.mtasa.com/wiki/ShowChat
	**/
	static function showChat(player:Player, show:Bool):Bool; 
}