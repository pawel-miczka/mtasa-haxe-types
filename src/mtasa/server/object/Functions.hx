package mtasa.server.object;

import mtasa.returns.Vector3Values;
import mtasa.server.classes.Object;

@:native('_G')
extern class Functions {
 /**
		Creates an object in the GTA world.

		@see https://wiki.mtasa.com/wiki/CreateObject
	**/
	static function createObject(modelID:Int, x:Float, y:Float, z:Float, ?rx:Float, ?ry:Float, ?rz:Float, isLowLOD:Bool = false):Object;

	/**
		This function returns the visible size of an object.

		@see https://wiki.mtasa.com/wiki/GetObjectScale
	**/
	static function getObjectScale(object:Object):Vector3Values;

	/**
		This function will smoothly move an object from its current position to a specified rotation and position.

		@see https://wiki.mtasa.com/wiki/MoveObject
	**/
	static function moveObject(object:Object, time:Int, targetX:Float, targetY:Float, targetZ:Float, ?moveRotX:Float, ?moveRotY:Float, ?moveRotZ:Float, ?easingType:String, ?easingPeriod:Float, ?easingAplitude:Float, ?easingOvershoot:Float):Bool;

	/**
		This function changes the visible size of an object.

		@see https://wiki.mtasa.com/wiki/SetObjectScale
	**/
	static function setObjectScale(object:Object, scael:Float, ?scaleY:Float, ?scaleZ:Float):Bool;

	/**
		This will allow you to stop an object that is currently moving.

		@see https://wiki.mtasa.com/wiki/StopObject
	**/
	static function stopObject(object:Object):Bool; 
}