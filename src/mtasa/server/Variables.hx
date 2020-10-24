package mtasa.server;

import mtasa.server.classes.Element;

typedef RootElement = Element;

@:native('_G')
extern class Variables {
	static var root:RootElement;
}
