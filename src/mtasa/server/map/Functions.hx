package mtasa.server.map;

import mtasa.shared.Element;
import mtasa.server.classes.XmlNode;

@:native('_G')
extern class Functions {
  /**
		This function is intended to load data from a loaded XML file into the element tree. This could be used for loading an external map, or part of another map.

		@see https://wiki.mtasa.com/wiki/LoadMapData
	**/
	static function loadMapData(node:XmlNode, parent:Element):Element;

	/**
		This function is used to reset the state of a player.  It is intended to restore a player to his default state as if he had just joined the server, without any scripts affecting him.

		@see https://wiki.mtasa.com/wiki/ResetMapInfo
	**/
	static function resetMapInfo(?player:Player):Bool;

	/**
		This converts a set of elements in the element tree into XML. This is a format that can then be loaded as a map file. Each element represents a single XML node.

		@see https://wiki.mtasa.com/wiki/SaveMapData
	**/
	static function saveMapData(node:XmlNode, baseElement:Element, ?childrenOnly:Bool = false):Bool;
}