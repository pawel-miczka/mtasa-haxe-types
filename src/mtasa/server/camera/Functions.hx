package mtasa.server.camera;

import mtasa.shared.Element;

@:native('_G')
extern class Functions {
	/**
		This function will fade a player's camera to a color or back to normal over a specified time period. This will also affect the sound volume for the player (50% faded = 50% volume, full fade = no sound). For clientside scripts you can perform 2 fade ins or fade outs in a row, but for serverside scripts you must use one then the other.

		@see https://wiki.mtasa.com/wiki/FadeCamera
	**/
	static function fadeCamera(player:Player, fadeIn:Bool, ?timeToFade:Float, ?red:Int, ?green:Int, ?blue:Int):Bool;

	/**
		Returns the interior of the local camera (independent of the interior of the local player).

		@see https://wiki.mtasa.com/wiki/GetCameraInterior
	**/
	static function getCameraInterior(thePlayer:Player):Int;

	/**
		This function gets the position of the camera and the position of the point it is facing.

		@see https://wiki.mtasa.com/wiki/GetCameraMatrix
	**/
	static function getCameraMatrix(thePlayer:Player):Void; // TODO: multireturn

	/**
		This function returns an element that corresponds to the current target of the specified player's camera (i.e. what it is following).

		@see https://wiki.mtasa.com/wiki/GetCameraTarget
	**/
	static function getCameraTarget(thePlayer:Player):Element;

	/**
		Sets the interior of the local camera. Only the interior of the camera is changed, the local player stays in the interior he was in.

		@see https://wiki.mtasa.com/wiki/SetCameraInterior
	**/
	static function setCameraInterior(thePlayer:Player, interior:Int):Bool;

	/**
		This function sets the camera's position and direction. The first three arguments are the point at which the camera lies, the last three are the point the camera faces (or the point it "looks at").Note: Calling this function takes the camera's focus away from the player and sets the camera in a fixed position and rotation. The camera's focus can be brought back to the player using the setCameraTarget function.

		@see https://wiki.mtasa.com/wiki/SetCameraMatrix
	**/
	static function setCameraMatrix(thePlayer:Player, positionX:Float, positionY:Float, positionZ:Float, ?lookAtX:Float, ?lookAtY:Float, ?lookAtZ:Float,
		?roll:Float, ?fov:Float):Bool;

	/**
		This function allows you to set a player's camera to follow other elements instead. Currently supported element type is:

		@see https://wiki.mtasa.com/wiki/SetCameraTarget
	**/
	static function setCameraTarget(player:Player, ?target:Player):Bool;
}
