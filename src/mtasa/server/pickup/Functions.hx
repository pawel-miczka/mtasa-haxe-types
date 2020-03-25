package mtasa.server.pickup;

import mtasa.server.classes.Pickup;
import mtasa.enums.PickupType;
import mtasa.enums.WeaponID;

@:native('_G')
extern class Functions {
	/**
		This function creates a pickup element, which is placed in the GTA world and can be picked up to retrieve a health, armour or a weapon.

		@see https://wiki.mtasa.com/wiki/CreatePickup
  **/
  @:overload(function(x:Float, y:Float, z:Float, type:PickupType, weapon:WeaponID, ?respawnTime:Int = 30000, ?ammo:Int = 50):Pickup {})
	static function createPickup(x:Float, y:Float, z:Float, type:PickupType, amount:Int, ?respawnTime:Int = 30000, ?ammo:Int = 50):Pickup; //TODO: add pickup models

	/**
		This function retrieves the amount of ammo in a weapon pickup.Returns an integer of the amount of ammo in the pickup, false if the pickup element is invalid, 0 if it's no weapon pickup.

		@see https://wiki.mtasa.com/wiki/GetPickupAmmo
	**/
	static function getPickupAmmo(pickup:Pickup):Int;

	/**
		This function retrieves the amount of health or armor given from a pickup.Returns an integer of the amount the pickup is set to, false if it's invalid, 0 if it's no health or amor pickup.

		@see https://wiki.mtasa.com/wiki/GetPickupAmount
	**/
	static function getPickupAmount(pickup:Pickup):Int;

	/**
		Returns the time it takes before a pickup respawns after a player picked it up. The time is specified in milliseconds.Returns the respawn time of the pickup if successful, false in case of failure.

		@see https://wiki.mtasa.com/wiki/GetPickupRespawnInterval
	**/
	static function getPickupRespawnInterval(pickup:Pickup):Int;

	/**
		This function retrieves the type of a pickup, either a health, armour or weapon pickup.Returns false if the pickup is invalid, or an integer of the type of the pickup, which include:

		@see https://wiki.mtasa.com/wiki/GetPickupType
	**/
	static function getPickupType(pickup:Pickup):PickupType;

	/**
		This function retrieves the weapon ID of a weapon pickup.

		@see https://wiki.mtasa.com/wiki/GetPickupWeapon
	**/
	static function getPickupWeapon(pickup:Pickup):WeaponID;

	/**
		This function checks if a pickup is currently spawned (is visible and can be picked up) or not (a player picked it up recently).

		@see https://wiki.mtasa.com/wiki/IsPickupSpawned
	**/
	static function isPickupSpawned(pickup:Pickup):Bool;

	/**
		Sets the time it takes for a pickup to respawn after a player picked it up.

		@see https://wiki.mtasa.com/wiki/SetPickupRespawnInterval
	**/
	static function setPickupRespawnInterval(pickup:Pickup, ms:Int):Bool;

	/**
		This function allows changing the type of a pickup to a Weapon, Armour or Health pickup, and allows you to set the health points or the weapon and ammo that the pickup will give.OR

		@see https://wiki.mtasa.com/wiki/SetPickupType
  **/
  @:overload(function(pickup:Pickup, type:Int, weapon:WeaponID):Bool {})
	static function setPickupType(pickup:Pickup, type:Int, amount:Int):Bool; //TODO: add pickup models

	/**
		This function is used to simulate the player using a pickupThis example gives a random player 100% armor by using a pickup.

		@see https://wiki.mtasa.com/wiki/UsePickup
	**/
	static function usePickup(pickup:Pickup, player:Player):Bool;
}
