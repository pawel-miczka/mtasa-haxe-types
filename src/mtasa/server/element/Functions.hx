package mtasa.server.element;

import mtasa.server.classes.Marker;
import mtasa.server.classes.ColShape;
import mtasa.shared.Element;

@:multiReturn extern class AttachedElementsOffsets {
	var posX:Float;
	var posY:Float;
	var posZ:Float;
	var rotX:Float;
	var rotY:Float;
	var rotZ:Float;
}

@:multiReturn extern class ElementPosition {
	var x:Float;
	var y:Float;
	var z:Float;
}

@:multiReturn extern class ElementRotation {
	var x:Float;
	var y:Float;
	var z:Float;
}

@:multiReturn extern class ElementVelocity {
	var x:Float;
	var y:Float;
	var z:Float;
}

@:native('_G')
extern class Functions {
	/**
		This function attaches one element to another, so that the first one follows the second whenever it moves.If an attempt is made to attach two elements that are already attached the opposite way (eg theElement becomes theAttachToElement and vice versa), the 1st attachment order is automatically detached in favor of the 2nd attachment order. For example, if carA was attached to carB, now carB is attached to carA. Also, an element cannot be attached to two separate elements at one time. For example, two cars can be attached to one single car, but one single car cannot be attached to two separate cars. If you attempt to do this, the existing attachment will automatically be dropped in favor of the new attachment. For example, if carA is asked to attached to carB then carC, it is only attached to carC.

		@see https://wiki.mtasa.com/wiki/AttachElements
	**/
	static function attachElements(element:Element, attachToElement:Element, ?xPosOffset:Float, ?yPosOffset:Float, ?zPosOffset:Float, ?xRotOffset:Float,
		?xRotOffset:Float, ?xRotOffset:Float, ?zRotOffset:Float):Bool;

	/**
		This function clears any settings added by setElementVisibleTo and restores an element to its default visibility.  This does not work with all entities - vehicles, players and objects are exempt. This is because these objects are required for accurate sync (they're physical objects). This function is particularily useful for changing the visibility of markers, radar blips and radar areas.

		@see https://wiki.mtasa.com/wiki/ClearElementVisibleTo
	**/
	static function clearElementVisibleTo(element:Element):Bool;

	/**
		This function clones (creates an exact copy of) an already existing element. The root node, and player elements, cannot be cloned. If a player element is a child of an element that is cloned, it will be skipped, along with the elements that exist as a child to the player element.Players are not the only elements that cannot be cloned. This list also includes remoteclients, and console elements.

		@see https://wiki.mtasa.com/wiki/CloneElement
	**/
	static function cloneElement(element:Element, ?xPos:Float, ?yPos:Float, ?zPos:Float, ?cloneChildren:Bool):Element;

	/**
		This function is used to create a new dummy element in the element tree which do not necessarily represent an entity within the San Andreas world. A common use for this function is for creating custom elements, such as a Flag or a Base.Elements created using this function are placed in the element tree with their parent as the 'dynamic' map element.

		@see https://wiki.mtasa.com/wiki/CreateElement
	**/
	static function createElement(elementType:String, ?elementID:String):Element;

	/**
		This function destroys an element and all elements within it in the hierarchy (its children, the children of those children etc). Player elements cannot be destroyed using this function. A player can only be removed from the hierarchy when they quit or are kicked. The root element also cannot be destroyed, however, passing the root as an argument will wipe all elements from the server, except for the players and clients, which will become direct descendants of the root node, and other elements that cannot be destroyed, such as resource root elements.Players are not the only elements that cannot be deleted. This list also includes remote clients and console elements.

		@see https://wiki.mtasa.com/wiki/DestroyElement
	**/
	static function destroyElement(element:Element):Bool;

	/**
		This function detaches attached elements from one another.

		@see https://wiki.mtasa.com/wiki/DetachElements
	**/
	static function detachElements(element:Element, ?attachToElement:Element):Bool;

	/**
		Returns a table of all element data of an element.

		@see https://wiki.mtasa.com/wiki/GetAllElementData
	**/
	static function getAllElementData(element:Element):lua.Table<String, String>;

	/**
		This function returns a table of all the elements attached to the specified element

		@see https://wiki.mtasa.com/wiki/GetAttachedElements
	**/
	static function getAttachedElements(element:Element):lua.Table<Int, Element>;

	/**
		This function returns the alpha (transparency) value for the specified element. This can be a player, ped, object, vehicle or weapon.

		@see https://wiki.mtasa.com/wiki/GetElementAlpha
	**/
	static function getElementAlpha(element:Element):Int;

	/**
		This function returns the offsets of an element that has been attached to another element using attachElements.

		@see https://wiki.mtasa.com/wiki/GetElementAttachedOffsets
	**/
	static function getElementAttachedOffsets(element:Element):AttachedElementsOffsets;

	/**
		This function determines the element that the specified element is attached to.

		@see https://wiki.mtasa.com/wiki/GetElementAttachedTo
	**/
	static function getElementAttachedTo(element:Element):Element;

	/**
		This function indicates if a specific element is set to have collisions disabled. An element without collisions does not interact with the physical environment and remains static.

		@see https://wiki.mtasa.com/wiki/GetElementCollisionsEnabled
	**/
	static function getElementCollisionsEnabled(element:Element):Bool;

	/**
		This function returns an element from the specified ID. If more than one element with the same ID exists, only the first one in the order it appears in the XML tree will be returned by this function.

		@see https://wiki.mtasa.com/wiki/GetElementByID
	**/
	static function getElementByID(id:String, ?index:Int):Element;

	/**
		This function returns an element of the specified type with the specified index.

		@see https://wiki.mtasa.com/wiki/GetElementByIndex
	**/
	static function getElementByIndex(type:String, index:Int):Element;

	/**
		This function returns one of the child elements of a given parent element. The child element is selected by its index (0 for the first child, 1 for the second and so on).

		@see https://wiki.mtasa.com/wiki/GetElementChild
	**/
	static function getElementChild(element:Element, index:Int):Element;

	/**
		This function is used to retrieve a list of the child elements of a given parent element. Note that it will only return direct children and not elements that are further down the element tree.

		@see https://wiki.mtasa.com/wiki/GetElementChildren
	**/
	static function getElementChildren(element:Element, ?type:String):lua.Table<Int, Element>;

	/**
		This function returns the number of children an element has. Note that only the direct children are counted and not elements that are further down the element tree.

		@see https://wiki.mtasa.com/wiki/GetElementChildrenCount
	**/
	static function getElementChildrenCount(element:Element):Int;

	/**
		Some elements have an associated colshape, for example Marker and Pickup. This function is used to get the associated colshape.

		@see https://wiki.mtasa.com/wiki/GetElementColShape
	**/
	static function getElementColShape(element:Element):ColShape;

	/**
		This function retrieves element data attached to an element under a certain key.

		@see https://wiki.mtasa.com/wiki/GetElementData
	**/
	static function getElementData(element:Element, key:String, ?inherit:Bool):Any;

	/**
		This function allows you to retrieve the dimension of any element. The dimension determines what/who the element is visible to.

		@see https://wiki.mtasa.com/wiki/GetElementDimension
	**/
	static function getElementDimension(element:Element):Int;

	/**
		This function returns the current health for the specified element. This can be a player, a ped, a vehicle, or an object.

		@see https://wiki.mtasa.com/wiki/GetElementHealth
	**/
	static function getElementHealth(element:Element):Float;

	/**
		This function gets the ID of an element. This is the "id" attribute of the element and is a string, NOT a number like a model ID, weapons ID or similar.

		@see https://wiki.mtasa.com/wiki/GetElementID
	**/
	static function getElementID(element:Element):String;

	/**
		This function allows you to retrieve the interior of any element. An interior is the current loaded place, 0 being outside.

		@see https://wiki.mtasa.com/wiki/GetElementInterior
	**/
	static function getElementInterior(element:Element):Int;

	/**
		This function gets an element's transform matrix. This contains 16 float values that multiplied to a point will give you the point transformed. It is most useful for matrix calculations such as calculating offsets. For further information, please refer to a tutorial of matrices in computer graphics programming.

		@see https://wiki.mtasa.com/wiki/GetElementMatrix
	**/
	static function getElementMatrix(element:Element, ?legacy:Bool):lua.Table<Int, Float>;

	/**
		Returns the model ID of a given element. This can be a player/ped skin, a pickup model, an object model or a vehicle model.

		@see https://wiki.mtasa.com/wiki/GetElementModel
	**/
	static function getElementModel(element:Element):Int;

	/**
		This function is used to determine the parent of an element.

		@see https://wiki.mtasa.com/wiki/GetElementParent
	**/
	static function getElementParent(element:Element):Element;

	/**
		The getElementPosition function allows you to retrieve the position coordinates of an element.  This can be any real world element, including:

		@see https://wiki.mtasa.com/wiki/GetElementPosition
	**/
	static function getElementPosition(element:Element):ElementPosition;

	/**
		Retrieve the rotation of elements.

		@see https://wiki.mtasa.com/wiki/GetElementRotation
	**/
	static function getElementRotation(element:Element):ElementRotation;

	/**
		This function gets the syncer of an element. The syncer is the player who is in control of the element.

		@see https://wiki.mtasa.com/wiki/GetElementSyncer
	**/
	static function getElementSyncer(element:Element):Element;

	/**
		This function is used to retrieve the type of an element.

		@see https://wiki.mtasa.com/wiki/GetElementType
	**/
	static function getElementType(element:Element):String;

	/**
		This function returns three floats containing the velocity (movement speeds) along the X, Y, and Z axis respectively. This means that velocity values can be positive and negative for each axis.

		@see https://wiki.mtasa.com/wiki/GetElementVelocity
	**/
	static function getElementVelocity(element:Element):ElementVelocity;

	/**
		This function allows you to retrieve the zone name of an element (eg. Verdant Bluffs or Ocean Docks)

		@see https://wiki.mtasa.com/wiki/GetElementZoneName
	**/
	static function getElementZoneName(element:Element, ?citiesOnly:Bool):String;

	/**
		This function is used to retrieve a list of all elements of the specified type. This can be useful, as it disregards where in the element tree it is. It can be used with either the built in types (listed below) or with any custom type used in a .map file. For example, if there is an element of type "flag" (e.g. <flag />) in the .map file, the using "flag" as the type argument would find it.

		@see https://wiki.mtasa.com/wiki/GetElementsByType
	**/
	static function getElementsByType(type:String, ?startAt:Element):lua.Table<Int, Element>;

	/**
		This function return the low LOD element that an element is associated with.

		@see https://wiki.mtasa.com/wiki/GetLowLODElement
	**/
	static function getLowLODElement():Void;

	/**
		This function returns the root node of the element tree, called root. This node contains every other element: all resource root elements, players and remote clients. It is never destroyed and cannot be destroyed using destroyElement.

		@see https://wiki.mtasa.com/wiki/GetRootElement
	**/
	static function getRootElement(element:Element):Element;

	/**
		This function checks if a value is an element or not.Returns true if the passed value is an element, false otherwise.

		@see https://wiki.mtasa.com/wiki/IsElement
	**/
	static function isElement(value:Any):Bool;

	/**
		This functions checks whether or not an element is attached to another element.

		@see https://wiki.mtasa.com/wiki/IsElementAttached
	**/
	static function isElementAttached(element:Element):Bool;

	/**
		This functions checks if certain element has call propagation enabled.

		@see https://wiki.mtasa.com/wiki/IsElementCallPropagationEnabled
	**/
	static function isElementCallPropagationEnabled(element:Element):Bool;

	/**
		This function checks whether an element is double-sided as set by setElementDoubleSided or not.

		@see https://wiki.mtasa.com/wiki/IsElementDoubleSided
	**/
	static function isElementDoubleSided(element:Element):Bool;

	/**
		This function checks if element has been frozen.

		@see https://wiki.mtasa.com/wiki/IsElementFrozen
	**/
	static function isElementFrozen(element:Element):Bool;

	/**
		This function checks whether an element is submerged in water.

		@see https://wiki.mtasa.com/wiki/IsElementInWater
	**/
	static function isElementInWater(element:Element):Bool;

	/**
		This function reveals if an element is low LOD.

		@see https://wiki.mtasa.com/wiki/IsElementLowLOD
	**/
	static function isElementLowLOD(element:Element):Bool;

	/**
		This checks if an element is visible to a player. This does not check if the player can literally see the element, just that they are aware that it exists. Some so-called per-player elements are able to be visible only to some players, as such this checks if this is the case for a particular element/player combination.

		@see https://wiki.mtasa.com/wiki/IsElementVisibleTo
	**/
	static function isElementVisibleTo(element:Element, visibleTo:Element):Bool;

	/**
		This function is used to determine if an element is within a marker.

		@see https://wiki.mtasa.com/wiki/IsElementWithinMarker
	**/
	static function isElementWithinMarker(element:Element, marker:Marker):Void;

	/**
		This function removes the element data with the given key for that element. The element data removal is synced with all the clients.

		@see https://wiki.mtasa.com/wiki/RemoveElementData
	**/
	static function removeElementData(element:Element, key:String):Bool;

	/**
		This function sets the alpha (transparency) value for the specified element. This can be a player, ped, object, vehicle or weapon.

		@see https://wiki.mtasa.com/wiki/SetElementAlpha
	**/
	static function setElementAlpha(element:Element, alpha:Int):Bool;

	/**
		Sets the angular velocity of a specified, supported element (Applies a spin to it).

		@see https://wiki.mtasa.com/wiki/SetElementAngularVelocity
	**/
	static function setElementAngularVelocity(element:Element, rx:Float, ry:Float, rz:Float):Bool;

	/**
		Gets the current angular velocity of a specified, supported element.

		@see https://wiki.mtasa.com/wiki/GetElementAngularVelocity
	**/
	static function getElementAngularVelocity(element:Element):ElementVelocity;

	/**
		This function updates the offsets of an element that has been attached to another element using attachElements.

		@see https://wiki.mtasa.com/wiki/SetElementAttachedOffsets
	**/
	static function setElementAttachedOffsets(element:Element, ?xPosOffset:Float, ?yPosOffset:Float, ?zPosOffset:Float, ?xRotOffset:Float, ?xRotOffset:Float,
		?xRotOffset:Float, ?zRotOffset:Float):Bool;

	/**
		This function enables/disables call propagation on a certain element. Look at the example for a practical application.

		@see https://wiki.mtasa.com/wiki/SetElementCallPropagationEnabled
	**/
	static function setElementCallPropagationEnabled(element:Element, enabled:Bool):Bool;

	/**
		This function can disable or enable an element's collisions. An element without collisions does not interact with the physical environment and remains static.

		@see https://wiki.mtasa.com/wiki/SetElementCollisionsEnabled
	**/
	static function setElementCollisionsEnabled(element:Element, enabled:Bool):Bool;

	/**
		This function stores element data under a certain key, attached to an element. Element data set using this is then synced with all clients and the server. The data can contain server created elements, but you should avoid passing data that is not able to be synced such as xmlnodes, acls, aclgroups etc.

		@see https://wiki.mtasa.com/wiki/SetElementData
	**/
	static function setElementData(element:Element, key:String, value:Any, ?synchronize:Bool):Bool;

	/**
		This function allows you to set the dimension of any element. The dimension determines what/who the element is visible to.

		@see https://wiki.mtasa.com/wiki/SetElementDimension
	**/
	static function setElementDimension(element:Element, dimension:Int):Bool;

	/**
		This function allows you to set the double-sidedness of an element's model. When an element's model is double-sided, it's back facing triangles become visible.

		@see https://wiki.mtasa.com/wiki/SetElementDoubleSided
	**/
	static function setElementDoubleSided(element:Element, enable:Bool):Bool;

	/**
		This function freezes an element (stops it in its position and disables movement) or unfreezes it.

		@see https://wiki.mtasa.com/wiki/SetElementFrozen
	**/
	static function setElementFrozen(element:Element, freezeStatus:Bool):Bool;

	/**
		This function sets the health for the specified element. This can be a ped, object or a vehicle.

		@see https://wiki.mtasa.com/wiki/SetElementHealth
	**/
	static function setElementHealth(element:Element, health:Float):Bool;

	/**
		This function sets the ID of an element to a string. This can be anything from an identifying number, to a name.
		You can only change the ID of an element clientside if that element has been created clientside as well.

		@see https://wiki.mtasa.com/wiki/SetElementID
	**/
	static function setElementID(element:Element, name:String):Bool;

	/**
		This function allows you to set the interior of any element. An interior is the current loaded place, 0 being outside.

		@see https://wiki.mtasa.com/wiki/SetElementInterior
	**/
	static function setElementInterior(element:Element, interior:Int, ?x:Float, ?y:Float, ?z:Float):Bool;

	/**
		Sets the model of a given element. This allows you to change the model of a player (or ped), a vehicle or an object.

		@see https://wiki.mtasa.com/wiki/SetElementModel
	**/
	static function setElementModel(element:Element, model:Int):Bool;

	/**
		This function is used for setting an element as the parent of another element.

		@see https://wiki.mtasa.com/wiki/SetElementParent
	**/
	static function setElementParent(element:Element, parent:Element):Bool;

	/**
		This function sets the position of an element to the specified coordinates.

		@see https://wiki.mtasa.com/wiki/SetElementPosition
	**/
	static function setElementPosition(element:Element, x:Float, y:Float, z:Float, ?warp:Bool):Bool;

	/**
		Sets the rotation of elements according to the world (does not work with players that are on the ground).

		@see https://wiki.mtasa.com/wiki/SetElementRotation
	**/
	static function setElementRotation(element:Element, rotX:Float, rotY:Float, rotZ:Float, ?rotOrder:String, ?conformPedRotation:Bool):Bool;

	/**
		This function can be used to change the syncer (player) of an element. The syncer is the player who is responsible for informing the server about the state of that element - it's position, orientation and other state information. The function can be also used to remove an element's syncer.

		@see https://wiki.mtasa.com/wiki/SetElementSyncer
	**/
	static function setElementSyncer(element:Element, player:Player):Bool;

	/**
		This function sets the velocity (movement speeds) along each axis, for an element.

		@see https://wiki.mtasa.com/wiki/SetElementVelocity
	**/
	static function setElementVelocity(element:Element, speedX:Float, speedY:Float, speedZ:Float):Bool;

	/**
		Does the order of setElementVisibleTo calls really not matter? Visibility seems to imply that the order does matter.

		@see https://wiki.mtasa.com/wiki/SetElementVisibleTo
	**/
	static function setElementVisibleTo(element:Element, visibleTo:Element, visible:Bool):Bool;

	/**
		This function assigns a low LOD element to an element. The low LOD element is displayed when its associated element is not fully visible. If a low LOD element is assigned to several elements, it will be displayed when any of these elements are not fully visible.

		@see https://wiki.mtasa.com/wiki/SetLowLODElement
	**/
	static function setLowLODElement(element:Element, lowLODElement:Element):Bool;
}
