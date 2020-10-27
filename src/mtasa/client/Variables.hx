package mtasa.client;

import mtasa.client.classes.Resource;
import mtasa.client.classes.Element;

typedef RootElement = Element;

@:native('_G')
extern class Variables {
	static var root:RootElement;
	static var source:Element;
	static var sourceResource:Resource;
	static var sourceResourceRoot:RootElement;
	static var client:Element;
	static var eventName:String;
}
