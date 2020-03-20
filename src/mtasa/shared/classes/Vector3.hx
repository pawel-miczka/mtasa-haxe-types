package mtasa.shared.classes;

@:structInit
@:native('Vector3')
extern class Vector3 {
  public var x:Float;
  public var y:Float;
  public var z:Float;

  @:native('create')
  public function new (x:Float, y:Float, z:Float);
}