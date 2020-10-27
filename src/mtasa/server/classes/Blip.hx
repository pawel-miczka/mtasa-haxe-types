package mtasa.server.classes;

import mtasa.server.returns.RGBAColor;
import mtasa.server.enums.RadarBlipIcon;
import mtasa.shared.classes.Vector3;

@:native('Blip')
extern class Blip {
	var color:RGBAColor;
	var icon:RadarBlipIcon;
	var ordering:Int;
	var size:Int;
	var visibleDistance:Float;

	/**
		This function creates a blip element, which is displayed as an icon on the client's radar.

		@param x The x position of the blip, in world coordinates.
		@param y The y position of the blip, in world coordinates.
		@param z The z position of the blip, in world coordinates.
		@param icon The icon that the radar blips should be. Valid values can be seen at Radar Blips
		@param size The size of the radar blip. Only applicable to the Marker icon. Default is 2. Maximum is 25.
		@param r The amount of red in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param g The amount of green in the blip's color (0–255). Only applicable to the Marker icon. Default is 0.
		@param b The amount of blue in the blip's color (0–255). Only applicable to the Marker icon. Default is 0.
		@param a The amount of alpha in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param ordering This defines the blip's Z-level ordering (-32768–32767). Default is 0.
		@param visibleDistance The maximum distance from the camera at which the blip is still visible (0–65535).
		@param visibleTo This defines which elements can see the blip. Defaults to visible to everyone.

		@return blip if it was created successfully, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/CreateBlip
	**/
	@:overload(function(position:Vector3, ?icon:RadarBlipIcon = MARKER, ?size:Int = 2, ?r:Int = 255, ?g:Int = 0, ?b:Int = 0, ?a:Int = 255, ?ordering:Int = 0,
		?visibleDistance:Float = 16383.0, ?visibleTo:Element):Blip {})
	static function create(x:Float, y:Float, z:Float, ?icon:RadarBlipIcon = MARKER, ?size:Int = 2, ?r:Int = 255, ?g:Int = 0, ?b:Int = 0, ?a:Int = 255,
		?ordering:Int = 0, ?visibleDistance:Float = 16383.0, ?visibleTo:Element):Blip;

	/**
		This function creates a blip that is attached to an element. This blip is displayed as an icon on the client's radar and will 'follow' the element that it is attached to around.

		@param elementToAttachTo The element to attach the blip to.
		@param icon The icon that the radar blips should be. Valid values can be seen at Radar Blips
		@param size The size of the radar blip. Only applicable to the Marker icon. Default is 2. Maximum is 25.
		@param r The amount of red in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param g The amount of green in the blip's color (0–255). Only applicable to the Marker icon. Default is 0.
		@param b The amount of blue in the blip's color (0–255). Only applicable to the Marker icon. Default is 0.
		@param a The amount of alpha in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param ordering This defines the blip's Z-level ordering (-32768–32767). Default is 0.
		@param visibleDistance The maximum distance from the camera at which the blip is still visible (0–65535).
		@param visibleTo This defines which elements can see the blip. Defaults to visible to everyone.

		@return blip if it was created successfully, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/CreateBlipAttachedTo
	**/
	static function createAttachedTo(elementToAttachTo:Element, ?icon:Int = 0, ?size:Int = 2, ?r:Int = 255, ?g:Int = 0, ?b:Int = 0, ?a:Int = 255,
		?ordering:Int = 0, ?visibleDistance:Float = 16383.0, ?visibleTo:Element):Bool;

	/**
		This function will tell you what color a blip is.

		@return Returns four integers in RGBA format, with a maximum value of 255 for each. The values are, in order, red, green, blue, and alpha.

		@see https://wiki.multitheftauto.com/wiki/GetBlipColor
	**/
	static function getColor():RGBAColor;

	/**
		This function returns the icon a blip currently has.

		@return int indicating which icon the blip has

		@see https://wiki.multitheftauto.com/wiki/GetBlipIcon
	**/
	static function getIcon():Int;

	/**
		This function gets the Z ordering value of a blip. The Z ordering determines if a blip appears on top of or below other blips. Blips with a higher Z ordering value appear on top of blips with a lower value. The default value for all blips is 0.

		@return Z ordering value of the blip if successful, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/GetBlipOrdering
	**/
	static function getOrdering():Int;

	/**
		This function gets the size of a blip.

		@return int indicating the size of the blip. The default value is 2. The maximum value is 25.

		@see https://wiki.multitheftauto.com/wiki/GetBlipSize
	**/
	static function getSize(blip:Blip):Int;

	/**
		This function will tell you what visible distance a blip has.

		@return one float with the blips visible distance, false if the blip is invalid.

		@see https://wiki.multitheftauto.com/wiki/GetBlipVisibleDistance
	**/
	static function getVisibleDistance():Float;

	/**
		This function will let you change the color of a blip.

		@param red The amount of red in the blip's color (0 - 255).
		@param green The amount of green in the blip's color (0 - 255).
		@param blue The amount of blue in the blip's color (0 - 255).
		@param alpha The amount of alpha in the blip's color (0 - 255). Alpha decides transparancy where 255 is opaque and 0 is transparent.

		@return true if the blip's color was set successfully. Returns false if the blip passed to the function is invalid, or any of the colors are out of the valid range.

		@see https://wiki.multitheftauto.com/wiki/SetBlipColor
	**/
	static function setColor(red:Int, green:Int, blue:Int, alpha:Int):Bool;

	/**
		This function sets the icon for an existing blip element.

		@param icon A number indicating the icon you wish to change it do.

		@return true if the icon was successfully set, false if the element passed was not a valid blip or the icon value was not a valid icon number.

		@see https://wiki.multitheftauto.com/wiki/SetBlipIcon
	**/
	static function setIcon(icon:RadarBlipIcon):Bool;

	/**
		This function sets the Z ordering of a blip. It allows you to make a blip appear on top of or below other blips.

		@param ordering the new Z ordering value.

		@return true if the blip ordering was changed successfully, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/SetBlipOrdering
	**/
	static function setOrdering(ordering:Int):Bool;

	/**
		This function sets the size of a blip's icon.

		@param size The size you wish the icon to be. 2 is the default value. 25 is the maximum value. Value gets clamped between 0 and 25.

		@return true if the blip's size was set successfully. Returns false if the element passed was not a blip or if the icon size passed was invalid.

		@see https://wiki.multitheftauto.com/wiki/SetBlipSize
	**/
	static function setSize(size:Int):Bool;

	/**
		This function will set the visible distance of a blip.

		@param distance The distance you want the blip to be visible for. Value gets clamped between 0 and 65535.

		@return true if successful, false otherwise.

		@see https://wiki.multitheftauto.com/wiki/SetBlipVisibleDistance
	**/
	static function setVisibleDistance(distance:Int):Bool;
}
