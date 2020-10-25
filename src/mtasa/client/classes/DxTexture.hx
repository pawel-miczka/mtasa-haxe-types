package mtasa.client.classes;

import mtasa.client.enums.DxTextureType;
import mtasa.client.enums.DxTextureEdge;
import mtasa.client.enums.DxTextureFormat;

@:native('DxTexture')
extern class DxTexture extends DxMaterial {
	/**
		This function creates a texture element that can be used in the dxDraw functions.

		@param pixels Pixels containing image data. ('plain', 'jpeg' or 'png' pixels can be used here)
		@param width Desired width, preferably power of two (16, 32, 64 etc.), maximum is 16384
		@param height Desired height, preferably power of two (16, 32, 64 etc.), maximum is 16384
		@param textureFormat A string representing the desired texture format,
		@param textureEdge A string representing the desired texture edge handling
		@param textureType A string representing the desired texture type
		@param depth Desired number of slices when creating a volume texture

		@return Texture if successful, false if invalid arguments were passed to the function.

		@see https://wiki.mtasa.com/wiki/DxCreateTexture
	**/
	@:overload(function(pixels:String, ?textureFormat:DxTextureFormat = ARGB, ?mipmaps:Bool = true, ?textureEdge:DxTextureEdge = WRAP):DxTexture {})
	@:overload(function(width:Int, height:Int, ?textureFormat:DxTextureFormat = ARGB, ?mipmaps:Bool = true, ?textureEdge:DxTextureEdge = WRAP,
		?textureType:DxTextureType = STANDARD, depth:Int = 1):DxTexture {})
	static function create(filePath:String, ?textureFormat:DxTextureFormat = ARGB, ?mipmaps:Bool = true, ?textureEdge:DxTextureEdge = WRAP):DxTexture;
}
