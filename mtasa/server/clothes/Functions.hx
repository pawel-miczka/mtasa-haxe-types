package mtasa.server.clothes;

@:multiReturn extern class ClothesModelTexture {
  var texture:String;
  var model:String;
}

@:multiReturn extern class ClothesTypeIndex {
  var type:Int;
  var index:Int;
}

@:native('_G')
extern class Functions {
  /**
		This function is used to get the name of a body part on a player.

		@see https://wiki.mtasa.com/wiki/GetBodyPartName
	**/
	static function getBodyPartName(bodyPartID:Int):String;

	/**
		This function is used to get the texture and model of clothes by the clothes type and index.
(Scans through the list of clothes for the specific type).This function returns 2 strings, a texture and model respectively, false if invalid arguments were passed to the function.

		@see https://wiki.mtasa.com/wiki/GetClothesByTypeIndex
	**/
	static function getClothesByTypeIndex(clothesType:Int, clothesIndex:Int):ClothesModelTexture;

	/**
		This function is used to get the name of a certain clothes type.This function returns a string (the name of the clothes type) if found, false otherwise.

		@see https://wiki.mtasa.com/wiki/GetClothesTypeName
	**/
	static function getClothesTypeName(clothesType:Int):String;

	/**
		This function is used to get the clothes type and index from the texture and model.
(Scans through the list of clothes for the specific type).

		@see https://wiki.mtasa.com/wiki/GetTypeIndexFromClothes
	**/
	static function getTypeIndexFromClothes(clothesTexture:String, clothesModel:String):ClothesTypeIndex;
}