package mtasa.client.classes;

import mtasa.shared.classes.Vector3;

@:native('Vehicle')
extern class Vehicle {
	@:native('create')
	public function new(model:Int, position:Vector3, ?rotation:Vector3, ?numberplate:String, ?variant1:Int, ?variant2:Int);
}
