package mtasa.shared;

import haxe.Constraints.Function;

typedef Time = {
  timestamp:Int
}

@:native("_G")
extern class Functions {
	/**
		This function will add an event handler. An event handler is a function that will be called when the event it's attached to is triggered. See event system for more information on how the event system works.

		@see https://wiki.mtasa.com/wiki/AddEventHandler
	**/
  static function addEventHandler(eventName:String, attachedTo:Element, handlerFunction:Function, ?propagate:Bool = true, ?priority:String = "normal"):Void;
  
	static function getRealTime():Time;
	
	static function getTickCount():Int;
}