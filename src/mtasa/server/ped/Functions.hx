package mtasa.server.ped;

import lua.Boot;
import mtasa.enums.WeaponSlot;
import mtasa.enums.PedWalkingStyle;
import mtasa.enums.PedStat;
import mtasa.enums.WeaponID;
import mtasa.enums.BodyPart;
import mtasa.enums.FightingStyle;
import mtasa.server.classes.Vehicle;
import mtasa.shared.Element;
import mtasa.returns.PedCloth;
import mtasa.server.classes.Ped;

@:native('_G')
extern class Functions {
  /**
		This function is used to set the current clothes on a ped.

		@see https://wiki.mtasa.com/wiki/AddPedClothes
	**/
	static function addPedClothes(ped:Ped, clothesTexture:String, clothesModel:String, clothesType:Int):Bool;

	/**
		Creates a Ped in the GTA world.NOTE: When using optional arguments, you might need to supply all arguments before the one you wish to use. For more information on optional arguments, see optional arguments.

		@see https://wiki.mtasa.com/wiki/CreatePed
	**/
	static function createPed(modelID:Int, x:Float, y:Float, z:Float, ?rot:Float = 0.0, ?synced:Bool = true):Ped;

	/**
		This function returns an integer that contains the ammo in a specified ped's weapon. See Weapon Info

		@see https://wiki.mtasa.com/wiki/GetPedAmmoInClip
	**/
	static function getPedAmmoInClip(ped:Ped, ?weaponSlot:Int):Int;

	/**
		This function returns the current armor of the specified ped.

		@see https://wiki.mtasa.com/wiki/GetPedArmor
	**/
	static function getPedArmor(ped:Ped):Float;

	/**
		This function is used to get the current clothes texture and model of a certain type on a ped.

		@see https://wiki.mtasa.com/wiki/GetPedClothes
	**/
	static function getPedClothes(ped:Ped, clothesType:Int):PedCloth;

	/**
		This function detects the element a ped is standing on. This can be a vehicle or an object.

		@see https://wiki.mtasa.com/wiki/GetPedContactElement
	**/
	static function getPedContactElement(ped:Ped):Element;

	/**
		Retrieves the fighting style a player/ped is currently using.

		@see https://wiki.mtasa.com/wiki/GetPedFightingStyle
	**/
	static function getPedFightingStyle(ped:Ped):Int;

	/**
		This function returns the current gravity for the specified ped. The default gravity is 0.008.

		@see https://wiki.mtasa.com/wiki/GetPedGravity
	**/
	static function getPedGravity(ped:Ped):Float;

	/**
		This function gets the vehicle that the ped is currently in or is trying to enter, if any.

		@see https://wiki.mtasa.com/wiki/GetPedOccupiedVehicle
	**/
	static function getPedOccupiedVehicle(ped:Ped):Vehicle;

	/**
		This function gets the seat that a specific ped is sitting in in a vehicle.

		@see https://wiki.mtasa.com/wiki/GetPedOccupiedVehicleSeat
	**/
	static function getPedOccupiedVehicleSeat(ped:Ped):Int;

	/**
		This function returns the value of the specified statistic of a specific ped.

		@see https://wiki.mtasa.com/wiki/GetPedStat
  **/
  @:overload(function(ped:Ped, stat:Int):Float {})
	static function getPedStat(ped:Ped, stat:PedStat):Float;

	/**
		This function is used to get the element a ped is currently targeting.

		@see https://wiki.mtasa.com/wiki/GetPedTarget
	**/
	static function getPedTarget(ped:Ped):Element;

	/**
		This function returns an integer that contains the total ammo in a specified ped's weapon. See Weapon Info

		@see https://wiki.mtasa.com/wiki/GetPedTotalAmmo
	**/
	static function getPedTotalAmmo(ped:Ped, ?weaponSlot:Int):Int;

	/**
		Returns the walking style ID of a ped. This ID determines the set of animations that is used for walking, running etc.

		@see https://wiki.mtasa.com/wiki/GetPedWalkingStyle
	**/
	static function getPedWalkingStyle(ped:Ped):PedWalkingStyle;

	/**
		This function tells you which weapon type is in a certain weapon slot of a ped. See Weapon Info

		@see https://wiki.mtasa.com/wiki/GetPedWeapon
	**/
	static function getPedWeapon(ped:Ped, ?weaponSlot:Int):WeaponID;

	/**
		This function gets a ped's selected weapon slot.

		@see https://wiki.mtasa.com/wiki/GetPedWeaponSlot
	**/
	static function getPedWeaponSlot(ped:Ped):WeaponSlot;

	/**
		This function returns all valid ped models.

		@see https://wiki.mtasa.com/wiki/GetValidPedModels
	**/
	static function getValidPedModels():lua.Table<Int, Int>;

	/**
		This function checks if the specified ped is choking (coughing) or not. This happens as a result of weapons that produce smoke - smoke grenades, fire extinguisher and the spray can.

		@see https://wiki.mtasa.com/wiki/IsPedChoking
	**/
	static function isPedChoking(ped:Ped):Bool;

	/**
		This function checks if the specified ped is dead or not.

		@see https://wiki.mtasa.com/wiki/IsPedDead
	**/
	static function isPedDead(ped:Ped):Bool;

	/**
		This function checks if the ped is in the driveby state.

		@see https://wiki.mtasa.com/wiki/IsPedDoingGangDriveby
	**/
	static function isPedDoingGangDriveby(ped:Ped):Bool;

	/**
		This function checks if the specified ped is ducked (crouched) or not.

		@see https://wiki.mtasa.com/wiki/IsPedDucked
	**/
	static function isPedDucked(ped:Ped):Bool;

	/**
		With this function, you can check if a ped has a head or not.Returns true if the ped is headless, false otherwise.

		@see https://wiki.mtasa.com/wiki/IsPedHeadless
	**/
	static function isPedHeadless(ped:Ped):Bool;

	/**
		Checks whether or not a given ped is currently in a vehicle. This also returns true if they're trying to enter a vehicle.

		@see https://wiki.mtasa.com/wiki/IsPedInVehicle
	**/
	static function isPedInVehicle(ped:Ped):Bool;

	/**
		This function checks if the specified ped is on fire or not.

		@see https://wiki.mtasa.com/wiki/IsPedOnFire
	**/
	static function isPedOnFire(ped:Ped):Bool;

	/**
		This function is used to determine whether or not a ped is on the ground. This is for on-foot usage only.

		@see https://wiki.mtasa.com/wiki/IsPedOnGround
	**/
	static function isPedOnGround(ped:Ped):Bool;

	/**
		Checks whether or not a ped is currently wearing a jetpack.

		@see https://wiki.mtasa.com/wiki/IsPedWearingJetpack
	**/
	static function isPedWearingJetpack(ped:Ped):Bool;

	/**
		This function kills the specified ped.

		@see https://wiki.mtasa.com/wiki/KillPed
	**/
	static function killPed(ped:Ped, ?killer:Ped, ?weapon:Int = 255, ?bodyPart:BodyPart, ?stealth:Bool = false):Bool;

	/**
		This function makes a pedestrian reload their weapon.

		@see https://wiki.mtasa.com/wiki/ReloadPedWeapon
	**/
	static function reloadPedWeapon(ped:Ped):Bool;

	/**
		This function is used to remove the current clothes of a certain type on a ped. It will remove them if the clothesTexture and clothesModel aren't specified, or if they match the current clothes on that slot.

		@see https://wiki.mtasa.com/wiki/RemovePedClothes
	**/
	static function removePedClothes(ped:Ped, clothesType:String, ?clothesTexture:String, ?clothesModel:String):Bool;

	/**
		This function removes a ped from a vehicle immediately. This works for drivers and passengers. Note that this removes the ped from the vehicle and puts him in the exact position where the command was initiated.

		@see https://wiki.mtasa.com/wiki/RemovePedFromVehicle
	**/
	static function removePedFromVehicle(ped:Ped):Bool;

	/**
		Sets the current animation of a player or ped. Not specifying the type of animation will automatically cancel the current one.

		@see https://wiki.mtasa.com/wiki/SetPedAnimation
	**/
	static function setPedAnimation(ped:Ped, ?block:String = null, ?anim:String = null, ?time:Int = 1, ?loop:Bool = true, ?updatePosition:Bool = true, ?interruptable:Bool = true, ?freezeLastFrame:Bool = true, ?blendTime:Int = 250, ?retainPedState:Bool = false):Bool;

	/**
		Sets the current animation progress of a player or ped.

		@see https://wiki.mtasa.com/wiki/SetPedAnimationProgress
	**/
	static function setPedAnimationProgress(ped:Ped, ?anim:String, ?progress:Float):Bool;

	/**
		Sets the speed of a currently running animation for a particular player or ped.

		@see https://wiki.mtasa.com/wiki/SetPedAnimationSpeed
	**/
	static function setPedAnimationSpeed(ped:Ped, ?anim:String = "", ?speed:Float = 1.0):Bool;

	/**
		This function allows you to set the armor value of a ped.

		@see https://wiki.mtasa.com/wiki/SetPedArmor
	**/
	static function setPedArmor(ped:Ped, armor:Float):Bool;

	/**
		This function can be used to force the ped to do the choking (coughing) animation until he respawns or toggled off using this function. The animation can not be cancelled by a player it's applied to, and he will not loose health.

		@see https://wiki.mtasa.com/wiki/SetPedChoking
	**/
	static function setPedChoking(ped:Ped, choking:Bool):Bool;

	/**
		This function sets the driveby state of a ped.

		@see https://wiki.mtasa.com/wiki/SetPedDoingGangDriveby
	**/
	static function setPedDoingGangDriveby(ped:Ped, state:Bool):Bool;

	/**
		Changes a ped's fighting style. Most styles only change the 'special attack' which is done using the Aim and Enter keys.Fighting Styles:

		@see https://wiki.mtasa.com/wiki/SetPedFightingStyle
	**/
	static function setPedFightingStyle(ped:Ped, style:FightingStyle):Bool;

	/**
		This function sets the gravity level of a ped.

		@see https://wiki.mtasa.com/wiki/SetPedGravity
	**/
	static function setPedGravity(ped:Ped, gravity:Float):Bool;

	/**
		With this function, you can set if a ped has a head or not.

		@see https://wiki.mtasa.com/wiki/SetPedHeadless
	**/
	static function setPedHeadless(ped:Ped, isHeadless:Bool):Bool;

	/**
		This function can be used to set a ped on fire or extinguish a fire on it.

		@see https://wiki.mtasa.com/wiki/SetPedOnFire
	**/
	static function setPedOnFire(ped:Ped, isOnFire:Bool):Bool;

	/**
		This function allows you to set the value of a specific statistic for a ped. Visual stats (FAT and BODY_MUSCLE) can only be used on the CJ skin, they have no effect on other skins.

		@see https://wiki.mtasa.com/wiki/SetPedStat
	**/
	static function setPedStat(ped:Ped, stat:PedStat, value:Float):Bool;

	/**
		Sets the walking style of a ped. A walking style consists of a set of animations that are used for walking, running etc.

		@see https://wiki.mtasa.com/wiki/SetPedWalkingStyle
	**/
	static function setPedWalkingStyle(ped:Ped, walkingStyle:PedWalkingStyle):Bool;

	/**
		This function changes the selected weapon slot of a ped.

		@see https://wiki.mtasa.com/wiki/SetPedWeaponSlot
	**/
	static function setPedWeaponSlot(ped:Ped, weaponSlot:WeaponSlot):Bool;

	/**
		This function is used to give or take a jetpack from a ped, it won't work if the ped is in a vehicle.As such, you should either expect it to fail sometimes, or repeatedly try to give a jetpack every second or so until isPedWearingJetpack returns true. Alternatively, you can force the ped into a 'safe' position (e.g. standing on the ground) before giving the jetpack, or use a pickup to handle it.

		@see https://wiki.mtasa.com/wiki/SetPedWearingJetpack
	**/
	static function setPedWearingJetpack(ped:Ped, state:Bool):Bool;

	/**
		This function is used to warp or force a ped into a vehicle.  There are no animations involved when this happens.Available client side from 1.3.1 (It will only work with client side vehicles and peds)

		@see https://wiki.mtasa.com/wiki/WarpPedIntoVehicle
	**/
	static function warpPedIntoVehicle(ped:Ped, vehicle:Vehicle, ?seat:Int = 0):Bool;
}