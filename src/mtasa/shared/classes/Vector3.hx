package mtasa.shared.classes;

@:native('Vector3')
extern class Vector3 {
	var x:Float;
	var y:Float;
	var z:Float;

	@:native('create')
	public function new(x:Float, y:Float, z:Float);
}
