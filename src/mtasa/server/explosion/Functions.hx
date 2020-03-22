package mtasa.server.explosion;

@:native('_G')
extern class Functions {
	/**
		Creates an explosion of a certain type at a specified point in the world. If creator is specified, the explosion will occur only in its dimension.

		@see https://wiki.mtasa.com/wiki/CreateExplosion
	**/
	static function createExplosion(x:Float, y:Float, z:Float, type:Int, ?creator:Player):Bool;
}
