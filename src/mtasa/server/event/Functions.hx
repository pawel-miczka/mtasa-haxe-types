package mtasa.server.event;

import haxe.extern.Rest;
import haxe.Constraints.Function;
import mtasa.shared.Element;

typedef LatentEventStatus = {
	?tickStart:Int,
	?tickEnd:Int,
	?totalSize:Int,
	?percetComplete:Int
}

@:native('_G')
extern class Functions {
	/**
		This function allows you to register a custom event. Custom events function exactly like the built-in events. See event system for more information on the event system.Returns true if the event was added successfully, false if the event was already added.

		@see https://wiki.mtasa.com/wiki/AddEvent
	**/
	static function addEvent(eventName:String, ?allowRemoteTrigger:Bool):Bool;

	/**
		This function is used to stop the automatic internal handling of events, for example this can be used to prevent an item being given to a player when they walk over a pickup, by canceling the onPickupUse event.cancelEvent does not have an effect on all events, see the individual event's pages for information on what happens when the event is canceled. cancelEvent does not stop further event handlers from being called, as the order of event handlers being called is undefined in many cases. Instead, you can see if the currently active event has been cancelled using wasEventCancelled.

		@see https://wiki.mtasa.com/wiki/CancelEvent
	**/
	static function cancelEvent(?cancel:Bool, ?reason:String):Bool;

	/**
		This function will add an event handler. An event handler is a function that will be called when the event it's attached to is triggered. See event system for more information on how the event system works.

		@see https://wiki.mtasa.com/wiki/AddEventHandler
	**/
	static function addEventHandler(eventName:String, attachedTo:Element, handlerFunction:Function, ?propagate:Bool = true, ?priority:String = "normal"):Bool;

	/**
		Stops a latent event from completingReturns a true if the latent event was successfully cancelled, or false if it was not

		@see https://wiki.mtasa.com/wiki/CancelLatentEvent
	**/
	static function cancelLatentEvent(player:Player, handle:Int):Bool;

	/**
		Gets the reason for cancelling an event.None

		@see https://wiki.mtasa.com/wiki/GetCancelReason
	**/
	static function getCancelReason():String;

	/**
		This function gets the attached functions from the event and attached element from current lua script.Returns table with attached functions, false otherwise.

		@see https://wiki.mtasa.com/wiki/GetEventHandlers
	**/
	static function getEventHandlers(eventName:String, attachedTo:Element):lua.Table<Int, Function>;

	/**
		Gets the currently queued latent events. The last one in the table is always the latest event queued. Each returned handle can be used with getLatentEventStatus or cancelLatentEvent

		@see https://wiki.mtasa.com/wiki/GetLatentEventHandles
	**/
	static function getLatentEventHandles(player:Player):lua.Table<Int, Int>;

	/**
		Gets the status of one queued latent event.Returns a table with the following info or false if invalid arguments were passed:

		@see https://wiki.mtasa.com/wiki/GetLatentEventStatus
	**/
	static function getLatentEventStatus(player:Player, handle:Int):LatentEventStatus;

	/**
		This functions removes a handler function from an event, so that the function is not called anymore when the event is triggered. See event system for more information on how the event system works.Returns true if the event handler was removed successfully. Returns false if the specified event handler could not be found or invalid parameters were passed.

		@see https://wiki.mtasa.com/wiki/RemoveEventHandler
	**/
	static function removeEventHandler(eventName:String, attachedTo:Element, attachedFunction:Function):Bool;

	/**
		This function will trigger a named event on a specific element in the element tree. See event system for more information on how the event system works.You can use the value returned from this function to determine if the event was cancelled by one of the event handlers. You should determine what your response (if any) to this should be based on the event's purpose. Generally, cancelling an event should prevent any further code being run that is dependent on whatever triggered that event. For example, if you have an onFlagCapture event, cancelling it would be expected to prevent the flag being able to be captured. Similarly, if you have onPlayerKill as an event you trigger, canceling it would either be expected to prevent the player being killed from dying or at least prevent the player from getting a score for it.

		@see https://wiki.mtasa.com/wiki/TriggerEvent
	**/
	static function triggerEvent(eventName:String, baseElement:Element, arguments:Rest<Any>):Bool;

	/**
		This function triggers an event previously registered on a client. This is the primary means of passing information between the server and the client. Clients have a similar triggerServerEvent function that can do the reverse. You can treat this function as if it was an asynchronous function call, using triggerServerEvent to pass back any returned information if necessary.Almost any data types can be passed as expected, including elements and complex nested tables. Non-element MTA data types like xmlNodes or resource pointers will not be able to be passed as they do not necessarily have a valid representation on the client.

		@see https://wiki.mtasa.com/wiki/TriggerClientEvent
	**/
	static function triggerClientEvent(?sendTo:Element, name:String, sourceElement:Element,
		arguments:Rest<Any>):Bool; // TODO: add support for table of elements

	/**
		This function is the same as triggerClientEvent  except the transmission rate of the data contained in the arguments can be limited
		and other network traffic is not blocked while the data is being transferred.Returns true if the event trigger has been sent, false if invalid arguments were specified.

		@see https://wiki.mtasa.com/wiki/TriggerLatentClientEvent
	**/
	static function triggerLatentClientEvent(?sendTo:Element, name:String, ?bandwidth:Int, ?persist:Bool, element:Element,
		arguments:Rest<Any>):Bool; // TODO: add support for table of elements

	/**
		This function checks if the last completed event was cancelled. This is mainly useful for custom events created by scripts.

		@see https://wiki.mtasa.com/wiki/WasEventCancelled
	**/
	static function wasEventCancelled():Bool;
}
