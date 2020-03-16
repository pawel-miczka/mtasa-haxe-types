package mtasa.server.blip;

import mtasa.shared.Element;

@:native('_G')
extern class Functions {
  /**
		This function creates a blip element, which is displayed as an icon on the client's radar.

		@param x The x position of the blip, in world coordinates,
		@param y The y position of the blip, in world coordinates,
		@param z The z position of the blip, in world coordinates,
		@param icon The icon that the radar blips should be.
		@param size The size of the radar blip. Only applicable to the Marker icon. Default is 2. Maximum is 25.
		@param r The amount of red in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param g The amount of green in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param b The amount of blue in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param a The amount of alpha in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param ordering This defines the blip's Z-level ordering (-32768–32767). Default is 0.
		@param visibleDistance The maximum distance from the camera at which the blip is still visible (0–65535).
		@param visibleTo This defines which elements can see the blip. Defaults to visible to everyone.

		@see https://wiki.mtasa.com/wiki/CreateBlip
	**/
	static function createBlip(x:Float, y:Float, z:Float, ?icon:Int, ?size:Int, ?r:Int, ?g:Int, ?b:Int, ?a:Int, ?ordering:Int, ?visibleDistance:Float, ?visibleTo:Element):Blip;

	/**
		This function creates a blip element, which is displayed as an icon on the client's radar.

		@param elementToAttachTo The element to attach the marker to.
		@param x The x position of the blip, in world coordinates,
		@param y The y position of the blip, in world coordinates,
		@param z The z position of the blip, in world coordinates,
		@param icon The icon that the radar blips should be.
		@param size The size of the radar blip. Only applicable to the Marker icon. Default is 2. Maximum is 25.
		@param r The amount of red in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param g The amount of green in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param b The amount of blue in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param a The amount of alpha in the blip's color (0–255). Only applicable to the Marker icon. Default is 255.
		@param ordering This defines the blip's Z-level ordering (-32768–32767). Default is 0.
		@param visibleDistance The maximum distance from the camera at which the blip is still visible (0–65535).
		@param visibleTo This defines which elements can see the blip. Defaults to visible to everyone.

		@see https://wiki.mtasa.com/wiki/CreateBlip
	**/
	static function createBlipAttachedTo(elementToAttachTo:Element, ?icon:Int, ?size:Int, ?r:Int, ?g:Int, ?b:Int, ?a:Int, ?ordering:Int, ?visibleDistance:Float, ?visibleTo:Element):Blip;

	/**
		This function will tell you what color a blip is. This color is only applicable to the default blip icon (,  or ). All other icons will ignore this.

		@param theBlip The blip whose color you wish to get.
		
		@see https://wiki.mtasa.com/wiki/GetBlipColor
	**/
	//TODO: multiple return
	static function getBlipColor(theBlip:Blip):Void;

	/**
		This function returns the icon a blip currently has.

		@param theBlip the blip we're getting the icon number of.

		@see https://wiki.mtasa.com/wiki/GetBlipIcon
	**/
	static function getBlipIcon(theBlip:Blip):Int;

	/**
		This function gets the Z ordering value of a blip. The Z ordering determines if a blip appears on top of or below other blips. Blips with a higher Z ordering value appear on top of blips with a lower value. The default value for all blips is 0.

		@param theBlip the blip to retrieve the Z ordering value of.

		@see https://wiki.mtasa.com/wiki/GetBlipOrdering
	**/
	static function getBlipOrdering(theBlip:Blip):Int;

	/**
		This function gets the size of a blip..

		@param theBlip The blip you wish to get the size of.

		@see https://wiki.mtasa.com/wiki/GetBlipSize
	**/
	static function getBlipSize(theBlip:Blip):Int;

	/**
		This function will tell you what visible distance a blip has.

		@param theBlip The blip whose visible distance you wish to get.

		@see https://wiki.mtasa.com/wiki/GetBlipVisibleDistance
	**/
	static function getBlipVisibleDistance(theBlip:Blip):Float;

	/**
		This function will let you change the color of a blip. This color is only applicable to the default blip icon (,  or ). All other icons will ignore this.
		
		@param theBlip The blip who's color you wish to set.
		@param red The amount of red in the blip's color (0 - 255).
		@param green The amount of green in the blip's color (0 - 255).
		@param blue The amount of blue in the blip's color (0 - 255).
		@param alpha The amount of alpha in the blip's color (0 - 255). Alpha decides transparancy where 255 is opaque and 0 is transparent.

		@see https://wiki.mtasa.com/wiki/SetBlipColor
	**/
	static function setBlipColor(theBlip:Blip, red:Int, green:Int, blue:Int, alpha:Int):Bool;

	/**
		This function sets the icon for an existing blip element.

		@param theBlip The blip you wish to set the icon of.
		@param icon A number indicating the icon you wish to change it do.

		@see https://wiki.mtasa.com/wiki/SetBlipIcon
	**/
	static function setBlipIcon(theBlip:Blip, icon:Int):Bool;

	/**
		This function sets the Z ordering of a blip. It allows you to make a blip appear on top of or below other blips.

		@param theBlip the blip whose Z ordering to change.
		@param ordering the new Z ordering value. Blips with higher values will appear on top of blips with lower values. Possible range: -32767 to 32767. Default: 0.

		@see https://wiki.mtasa.com/wiki/SetBlipOrdering
	**/
	static function setBlipOrdering(theBlip:Blip, ordering:Int):Bool;

	/**
		This function sets the size of a blip's icon.

		@param theBlip The blip you wish to get the size of.
		@param iconSize The size you wish the icon to be. 2 is the default value. 25 is the maximum value. Value gets clamped between 0 and 25.		

		@see https://wiki.mtasa.com/wiki/SetBlipSize
	**/
	static function setBlipSize(theBlip:Blip, iconSize:Int):Bool;

	/**
		This function will set the visible distance of a blip.

		@param theBlip The blip whose visible distance you wish to get.
		@param theDistance The distance you want the blip to be visible for. Value gets clamped between 0 and 65535.

		@see https://wiki.mtasa.com/wiki/SetBlipVisibleDistance
	**/
	static function setBlipVisibleDistance(theBlip:Blip, theDistance:Float):Bool;
}