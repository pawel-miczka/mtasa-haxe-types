package mtasa.shared.classes;

@:native('Vector2')
extern class Vector2 {
	var x:Float;
	var y:Float;

	@:native('create')
	public function new(x:Float, y:Float);
}
