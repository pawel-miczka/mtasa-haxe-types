package mtasa.client;

import haxe.Constraints.Function;
import mtasa.client.classes.Element;
import haxe.extern.EitherType;
import haxe.extern.Rest;
import mtasa.client.classes.DxFont;
import mtasa.client.classes.DxMaterial;
import mtasa.client.classes.DxRenderTarget;
import mtasa.client.classes.DxScreenSource;
import mtasa.client.classes.DxShader;
import mtasa.client.classes.DxTexture;
import mtasa.client.enums.DxBlendMode;
import mtasa.client.enums.DxFontQuality;
import mtasa.client.enums.DxFontType;
import mtasa.client.enums.DxPrimitiveType;
import mtasa.client.enums.DxTestMode;
import mtasa.client.enums.DxTextureEdge;
import mtasa.client.enums.DxTextureFormat;
import mtasa.client.enums.DxTextureType;
import mtasa.client.enums.PixelsFormat;
import mtasa.client.returns.DxCreateShaderReturn;
import mtasa.client.returns.DxIsAspectRatioAdjustmentEnabledReturn;
import mtasa.client.types.DxStatus;
import mtasa.shared.classes.Vector2;
import mtasa.shared.classes.Vector3;
import mtasa.shared.classes.Vector4;

@:native('_G')
extern class Functions {
	/**
		This function will add an event handler. An event handler is a function that will be called when the event it's attached to is triggered

		@param eventName The name of the event you want to attach the handler function to.
		@param attachedTo The element you wish to attach the handler to. The handler will only be called when the event it is attached to is triggered for this element, or one of its children.
		@param handlerFunction The handler function you wish to call when the event is triggered. This function will be passed all of the event's parameters as arguments, but it isn't required that it takes all of them.
		@param propagate A boolean representing whether the handler will be triggered if the event was propagated down or up the element tree (starting from the source), and not triggered directly on attachedTo
		@param priority A string representing the trigger order priority relative to other event handlers of the same name.

		@return true if the event handler was attached successfully. Returns false if the specified event could not be found or any parameters were invalid.

		@see https://wiki.mtasa.com/wiki/AddEventHandler
	**/
	static function addEventHandler(eventName:String, attachedTo:Element, handlerFunction:Function, ?propagate:Bool = true, ?priority:String = "normal"):Bool;
}
