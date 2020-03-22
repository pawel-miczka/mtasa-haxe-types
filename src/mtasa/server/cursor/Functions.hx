package mtasa.server.cursor;

@:native('_G')
extern class Functions {
	/**
		This function is used to determine whether or not a player's cursor is showing. Note: This retrieves the cursor state that has been set using showCursor, and thus doesn't take into account the cursor shown while the chatbox, menu or console are open. Also, keep in mind that while the client is aware of cursor states set from the server, the server doesn't know about cursor states set from the client.

		@see https://wiki.multitheftauto.com/wiki/IsCursorShowing
	**/
	static function isCursorShowing(player:Player):Bool;

	/**
		This function is used to show or hide a player's cursor. Note: Regardless of the cursor state you set using this function, the cursor will always be visible while the menu, the chatbox input line or the console are active, or if another resource has called this function.

		@see https://wiki.multitheftauto.com/wiki/ShowCursor
	**/
	static function showCursor(player:Player, show:Bool, ?toggleControls:Bool):Bool;
}
