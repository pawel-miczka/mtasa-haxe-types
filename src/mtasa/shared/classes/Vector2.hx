package mtasa.shared.classes;

@:structInit
@:native('Vector2')
extern class Vector2 {
	public var x:Float;
	public var y:Float;

	@:native('create')
	public function new(x:Float, y:Float);
}
