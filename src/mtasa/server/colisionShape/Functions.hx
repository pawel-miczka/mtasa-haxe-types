package mtasa.server.colisionShape;

import mtasa.shared.Element;
import haxe.extern.Rest;
import mtasa.server.classes.ColShape;

@:native('_G')
extern class Functions {
	/**
		This function creates a collision circle. This is a shape that has a position and a radius and infinite height that you can use to detect a player's presence. Events will be triggered when a player enters or leaves it.

		@see https://wiki.mtasa.com/wiki/CreateColCircle
	**/
	static function createColCircle(fX:Float, fY:Float, fZ:Float):ColShape;

	/**
		This function creates a collision cuboid. This is a shape that has a position, width, depth and height. See Wikipedia for a definition of a cuboid. The XYZ of the col starts at the southwest bottom corner of the shape.

		@see https://wiki.mtasa.com/wiki/CreateColCuboid
	**/
	static function createColCuboid(fX:Float, fY:Float, fZ:Float, fWidth:Float, fDepth:Float, fHeight:Float):ColShape;

	/**
		This function creates a collision polygon. See Wikipedia for a definition of a polygon. The first set of X Y of this shape is not part of the colshape bounds, so can set anywhere in the game world, however for performance, place it as close to the centre of the polygon as you can. It should be noted this shape is 2D. There should be at least 3 bound points set.

		@see https://wiki.mtasa.com/wiki/CreateColPolygon
	**/
	static function createColPolygon(fCenterX:Float, fCenterY:Float, fX1:Float, fY1:Float, fX2:Float, fY2:Float, fX3:Float, fY3:Float,
		points:Rest<Float>):ColShape;

	/**
		This function creates a collision rectangle. This is a shape that has a position and a width and a depth. See Rectangle for a definition of a rectangle. XY marks on the south west corner of the colshape.

		@see https://wiki.mtasa.com/wiki/CreateColRectangle
	**/
	static function createColRectangle(fX:Float, fY:Float, fWidth:Float, fHeight:Float):ColShape;

	/**
		This function creates a collision sphere. This is a shape that has a position and a radius. See Wikipedia for a definition of a sphere.

		@see https://wiki.mtasa.com/wiki/CreateColSphere
	**/
	static function createColSphere(fX:Float, fY:Float, fZ:Float, fRadius:Float):ColShape;

	/**
		This function creates a collision tube. This is a shape that has a position and a 2D (X/Y) radius and a height. See Cylinder for a definition of a tube. A tube is similar to a colcircle, except that it has a limited height, this means you can limit the distance above the position defined by (fX, fY, fZ) that the collision is detected.

		@see https://wiki.mtasa.com/wiki/CreateColTube
	**/
	static function createColTube(fX:Float, fY:Float, fZ:Float, fRadius:Float, fHeight:Float):ColShape;

	/**
		This function is used to retrieve the type of an colshape.

		@see https://wiki.mtasa.com/wiki/GetColShapeType
	**/
	static function getColShapeType(shape:ColShape):Int;

	/**
		Some elements have an associated colshape, for example Marker and Pickup. This function is used to get the associated colshape.

		@see https://wiki.mtasa.com/wiki/GetElementColShape
	**/
	static function getElementColShape(element:Element):ColShape;

	/**
		This function is used to retrieve a list of all elements in a colshape, of the specified type.

		@see https://wiki.mtasa.com/wiki/GetElementsWithinColShape
	**/
	static function getElementsWithinColShape(colshape:ColShape, ?elemType:String):lua.Table<Int, Element>;

	/**
		This function is used to determine if an element is within a collision shape. Please note that for legacy reasons, a colshape created on the client does not collide with elements already existing at that location until they first move. Please also note that before 1.0.3, this did not function correctly when moving a colshape.

		@see https://wiki.mtasa.com/wiki/IsElementWithinColShape
	**/
	static function isElementWithinColShape(element:Element, shape:ColShape):Bool;

	/**
		This function checks if a 3D position is inside a colshape or not.

		@see https://wiki.mtasa.com/wiki/IsInsideColShape
	**/
	static function isInsideColShape(shape:ColShape, posX:Float, posY:Float, posZ:Float):Bool;
}
