package mtasa.server.marker;

import mtasa.server.classes.Marker;
import mtasa.shared.Element;

@:multiReturn extern class ColorWithAlpha {
  var red:Int;
  var green:Int;
  var blue:Int;
  var alpha:Int;
}

@:multiReturn extern class Vector3MultiReturn {
  var x:Float;
  var y:Float;
  var z:Float;
}

@:native('_G')
extern class Functions {
/**
		This function creates a marker. A marker is a 3D model in the world that can highlight a particular point or area, often used to instruct players where to go to perform actions such as entering buildings.

		@see https://wiki.mtasa.com/wiki/CreateMarker
	**/
	static function createMarker(x:Float, y:Float, z:Float, ?type:String, ?size:Float = 4.0, ?r:Int = 0, ?g:Int = 0, ?b:Int = 255, ?a:Int = 255, ?visibleTo:Element):Marker;

	/**
		This function returns the color and transparency for a marker element. Not all marker types support transparency.

		@see https://wiki.mtasa.com/wiki/GetMarkerColor
	**/
	static function getMarkerColor(marker:Marker):ColorWithAlpha;

	/**
		Returns the number of markers that currently exist in the world.None

		@see https://wiki.mtasa.com/wiki/GetMarkerCount
	**/
	static function getMarkerCount():Int;

	/**
		This function returns the icon name for a marker.

		@see https://wiki.mtasa.com/wiki/GetMarkerIcon
	**/
	static function getMarkerIcon(marker:Marker):String;

	/**
		This function returns a float containing the size of the specified marker.

		@see https://wiki.mtasa.com/wiki/GetMarkerSize
	**/
	static function getMarkerSize(marker:Marker):Float;

	/**
		This function returns the position of the specified marker's target, the position it points to. This only works for checkpoint markers and ring markers. For checkpoints it returns the position the arrow is pointing to, for ring markers it returns the position the ring is facing. You can set this target with setMarkerTarget.

		@see https://wiki.mtasa.com/wiki/GetMarkerTarget
	**/
	static function getMarkerTarget(marker:Marker):Vector3MultiReturn;

	/**
		This function returns a marker's type.

		@see https://wiki.mtasa.com/wiki/GetMarkerType
	**/
	static function getMarkerType(marker:Marker):String;

	/**
		This function sets the color of the specified marker by modifying the values for red, green and blue.

		@see https://wiki.mtasa.com/wiki/SetMarkerColor
	**/
	static function setMarkerColor(marker:Marker, r:Int, g:Int, b:Int, a:Int):Void;

	/**
		This function allows changing the icon of a checkpoint marker.

		@see https://wiki.mtasa.com/wiki/SetMarkerIcon
	**/
	static function setMarkerIcon(marker:Marker, icon:String):Bool;

	/**
		This function sets the size of the specified marker.Setting negative value will "flip" the marker, do nothing or make it invisible:

		@see https://wiki.mtasa.com/wiki/SetMarkerSize
	**/
	static function setMarkerSize(marker:Marker, size:Float):Bool;

	/**
		This function sets the 'target' for a marker. Only the checkpoint and ring marker types can have a target.

		@see https://wiki.mtasa.com/wiki/SetMarkerTarget
	**/
	static function setMarkerTarget(marker:Marker, x:Float, y:Float, z:Float):Bool;

	/**
		This function changes a marker's type. The type controls how the marker is displayed in the game. It's important that you use marker types that users are used to from the single player game. For example, checkpoints are used in races, rings are used for aircraft races, arrows are used for entering buildings etc.

		@see https://wiki.mtasa.com/wiki/SetMarkerType
	**/
	static function setMarkerType(marker:Marker, type:String):Bool;
}