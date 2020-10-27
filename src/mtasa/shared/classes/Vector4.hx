package mtasa.shared.classes;

@:native('Vector4')
extern class Vector4 {
	var x:Float;
	var y:Float;
	var z:Float;
	var w:Float;

	@:native('create')
	public function new(x:Float, y:Float, z:Float, w:Float);
}
