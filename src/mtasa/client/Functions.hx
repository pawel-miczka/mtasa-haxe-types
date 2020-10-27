package mtasa.client;

import haxe.Constraints.Function;
import mtasa.client.classes.Element;
import haxe.extern.EitherType;
import haxe.extern.Rest;
import mtasa.client.classes.DxFont;
import mtasa.client.classes.DxMaterial;
import mtasa.client.classes.DxRenderTarget;
import mtasa.client.classes.DxScreenSource;
import mtasa.client.classes.DxShader;
import mtasa.client.classes.DxTexture;
import mtasa.client.enums.DxBlendMode;
import mtasa.client.enums.DxFontQuality;
import mtasa.client.enums.DxFontType;
import mtasa.client.enums.DxPrimitiveType;
import mtasa.client.enums.DxTestMode;
import mtasa.client.enums.DxTextureEdge;
import mtasa.client.enums.DxTextureFormat;
import mtasa.client.enums.DxTextureType;
import mtasa.client.enums.PixelsFormat;
import mtasa.client.returns.DxCreateShaderReturn;
import mtasa.client.returns.DxIsAspectRatioAdjustmentEnabledReturn;
import mtasa.client.types.DxStatus;
import mtasa.shared.classes.Vector2;
import mtasa.shared.classes.Vector3;
import mtasa.shared.classes.Vector4;

@:native('_G')
extern class Functions {
	/**
		This function converts pixels from one format to another.

		@param pixels The pixels to convert the format of
		@param newFormat The new format required
		@param quality The quality of the returned pixels if the new format is 'jpeg'

		@return Copy of the pixels in the new format, or false if invalid arguments were passed to the function.

		@see https://wiki.mtasa.com/wiki/DxConvertPixels
	**/
	static function dxConvertPixels(pixels:String, newFormat:PixelsFormat, ?quality:Int = 80):String;

	/**
		This function creates a DX font element that can be used in dxDrawText. Successful font creation is not guaranteed, and may fail due to hardware or memory limitations.

		@param filepath the name of the file containing the font
		@param size size of the font
		@param bold flag to indicate if the font should be bold
		@param quality the font quality

		@return DX font element if successful, false if invalid arguments were passed to the function, or there is insufficient resources available.

		@see https://wiki.mtasa.com/wiki/DxCreateFont
	**/
	static function dxCreateFont(filepath:String, ?size:Int = 9, ?bold:Bool = false, ?quality:DxFontQuality = PROOF):DxFont;

	/**
		This function creates a render target element, which is a special type of texture that can be drawn on with the dx functions. Successful render target creation is not guaranteed, and may fail due to hardware or memory limitations.

		@param width The width of the texture in pixels.
		@param height The height of the texture in pixels.
		@param withAlpha The render target will be created with an alpha channel. 'false' will turn images' alpha channels to black color

		@return Texture element if successful, false if the system is unable to create a render target.

		@see https://wiki.mtasa.com/wiki/DxCreateRenderTarget
	**/
	@:overload(function(size:Vector2, ?withAlpha:Bool = false):DxRenderTarget {})
	static function dxCreateRenderTarget(width:Int, height:Int, ?withAlpha:Bool = false):DxRenderTarget;

	/**
		This function creates a screen source, which is a special type of texture that contains the screen as rendered by GTA

		@param width The width of the texture in pixels.
		@param height The height of the texture in pixels.

		@return Texture element if successful, false if invalid arguments were passed to the function.

		@see https://wiki.mtasa.com/wiki/DxCreateScreenSource
	**/
	static function dxCreateScreenSource(width:Int, height:Int):DxScreenSource;

	/**
		This function creates a shader element that can be used in the dxDraw functions. Successful shader creation is not guaranteed unless the Effect File contains a fallback technique which will work on every PC in the universe.

		@param filePath The filepath of the shader Effect File (.fx) file
		@param rawData data buffer of the shader file
		@param priority If more than one shader is matched to a world texture, the shader with the highest priority will be used. If there is more than one shader with the same highest priority, the most recently created shader is used.
		@param maxDistance If non-zero, the shader will be applied to textures nearer than maxDistance only. This can speed up rendering, but (to look good) may require the shader to fade out it's own effect as the texture reaches maxDistance.
		@param layered When set to true, the shader will be drawn in a separate render pass. Several layered shaders can be drawn on the same world texture. (To avoid Z fighting artifacts, you may have to add DepthBias=-0.0002; to the technique pass, but this might cause visual artifacts when applied on vehicles)
		@param elementTypes A comma seperated list of element types to restrict this shader to.

		@return shader element and technique that will be used

		@see https://wiki.mtasa.com/wiki/DxCreateShader
	**/
	@:overload(function(rawData:String, ?priority:Int = 0, ?maxDistance:Int = 0, ?layered:Bool = false,
		?elementTypes:String = "world,vehicle,object,other"):DxCreateShaderReturn {})
	static function dxCreateShader(filePath:String, ?priority:Int = 0, ?maxDistance:Int = 0, ?layered:Bool = false,
		?elementTypes:String = "world,vehicle,object,other"):DxCreateShaderReturn;

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
	static function dxCreateTexture(filePath:String, ?textureFormat:DxTextureFormat = ARGB, ?mipmaps:Bool = true, ?textureEdge:DxTextureEdge = WRAP):DxTexture;

	/**
		This function draws a circle shape on the screen - rendered for one frame.

		@param posX An integer representing the absolute X position of the circle center, represented by pixels on the screen.
		@param posY An integer representing the absolute Y position of the circle center, represented by pixels on the screen.
		@param radius An integer representing the radius scale of the circle that is being drawn.
		@param startAngle An integer representing the angle of the first point of the circle.
		@param stopAngle An integer representing the angle of the last point of the circle.
		@param color An integer of the hex color, produced using tocolor or 0xAARRGGBB (AA = alpha, RR = red, GG = green, BB = blue).
		@param centerColor An integer of the hex color, produced using tocolor or 0xAARRGGBB (AA = alpha, RR = red, GG = green, BB = blue).
		@param segments An integer ranging from 3-1024 representing how many triangles are used to form the circle, more segments = smoother circle. Note: using lots of segments may cause lag.
		@param ratio Ratio between width and height, e.g: 2 would mean that the width of the circle is 2 times the height.
		@param postGUI A bool representing whether the circle should be drawn on top of or behind any ingame GUI (rendered by CEGUI).

		@return True if the creation of the 2D circle was successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxDrawCircle
	**/
	@:overload(function(position:Vector2, radius:Float, ?startAngle:Float = 0.0, ?stopAngle:Float = 360.0, ?color:Int = 0, ?centerColor:Int = 0,
		?segments:Int = 32, ?ratio:Int = 1, postGUI:Bool = false):Bool {})
	static function dxDrawCircle(posX:Float, posY:Float, radius:Float, ?startAngle:Float = 0.0, ?stopAngle:Float = 360.0, ?color:Int = 0,
		?centerColor:Int = 0, ?segments:Int = 32, ?ratio:Int = 1, postGUI:Bool = false):Bool;

	/**
		Draws an image on the screen for a single frame. In order for the image to stay visible continuously

		@param posX the absolute X coordinate of the top left corner of the image
		@param posY the absolute Y coordinate of the top left corner of the image
		@param width the absolute width of the image
		@param height the absolute height of the image
		@param image Either a material element or a filepath of the image which is going to be drawn.
		@param rotation the rotation, in degrees for the image.
		@param rotationCenterOffsetX the absolute X offset from the image center for which to rotate the image from.
		@param rotationCenterOffsetY the absolute Y offset from the image center for which to rotate the image from.
		@param color Tints the image with a value produced by tocolor or hexadecimal number in format: 0xAARRGGBB (RR = red, GG = green, BB = blue, AA = alpha).
		@param postGUI A bool representing whether the image should be drawn on top of or behind any ingame GUI (rendered by CEGUI).

		@return True if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxDrawImage
	**/
	@:overload(function(position:Vector2, size:Vector2, image:EitherType<DxTexture, String>, ?rotation:Float = 0.0, ?rotationCenterOffsetX:Float = 0.0,
		?rotationCenterOffsetY:Float = 0.0, ?color:Int = 1, ?postGUI:Bool = false):Bool {})
	static function dxDrawImage(posX:Float, posY:Float, width:Float, height:Float, image:EitherType<DxTexture, String>, ?rotation:Float = 0.0,
		?rotationCenterOffsetX:Float = 0.0, ?rotationCenterOffsetY:Float = 0.0, ?color:Int = 1, ?postGUI:Bool = false):Bool;

	/**
		Differing from dxDrawImage, this function only draws a part of an image on the screen for a single frame.

		@param posX the absolute X coordinate of the top left corner of the image
		@param posY the absolute Y coordinate of the top left corner of the image
		@param width the absolute width of the image
		@param height the absolute height of the image
		@param u the absolute X coordinate of the top left corner of the section which should be drawn from image
		@param v the absolute Y coordinate of the top left corner of the section which should be drawn from image
		@param usize the absolute width of the image section
		@param vsize the absolute height of the image section
		@param image Either a material element or a filepath of the image which is going to be drawn.
		@param rotation the rotation, in degrees for the image.
		@param rotationCenterOffsetX the absolute X offset from the image center for which to rotate the image from.
		@param rotationCenterOffsetY the absolute Y offset from the image center for which to rotate the image from.
		@param color the color of the image, a value produced by tocolor or hexadecimal number in format: 0xAARRGGBB (AA = alpha, RR = red, GG = green, BB = blue).
		@param postgui A bool representing whether the image should be drawn on top of or behind any ingame GUI (rendered by CEGUI).

		@return True if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxDrawImageSection
	**/
	@:overload(function(position:Vector2, size:Vector2, u:Float, v:Float, usize:Float, vsize:Float, image:EitherType<DxTexture, String>,
		?rotation:Float = 0.0, ?rotationCenterOffsetX:Float = 0.0, ?rotationCenterOffsetY:Float = 0.0, ?color:Int = 1, ?postGUI:Bool = false):Bool {})
	static function dxDrawImageSection(posX:Float, posY:Float, width:Float, height:Float, u:Float, v:Float, usize:Float, vsize:Float,
		image:EitherType<DxTexture, String>, ?rotation:Float = 0.0, ?rotationCenterOffsetX:Float = 0.0, ?rotationCenterOffsetY:Float = 0.0, ?color:Int = 1,
		?postGUI:Bool = false):Bool;

	/**
		This function draws a 2D line across the screen - rendered for one frame.

		@param startX An integer representing the absolute start X position of the line, represented by pixels on the screen.
		@param startY An integer representing the absolute start Y position of the line, represented by pixels on the screen.
		@param endX An integer representing the absolute end X position of the line, represented by pixels on the screen.
		@param endY An integer representing the absolute end Y position of the line, represented by pixels on the screen.
		@param color An integer of the hex color, produced using tocolor or 0xAARRGGBB (AA = alpha, RR = red, GG = green, BB = blue).
		@param width The width/thickness of the line
		@param postGUI A bool representing whether the line should be drawn on top of or behind any ingame GUI (rendered by CEGUI).

		@return True if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxDrawLine
	**/
	@:overload(function(start:Vector2, end:Vector2, color:Int, ?width:Float = 1.0, ?postGUI:Bool = false):Bool {})
	static function dxDrawLine(startX:Float, startY:Float, endX:Float, endY:Float, color:Int, ?width:Float = 1.0, ?postGUI:Bool = false):Bool;

	/**
		This function draws a 3D line between two points in the 3D world - rendered for one frame.

		@param startX The start X position of the 3D line, representing a coordinate in the GTA world.
		@param startY The start Y position of the 3D line, representing a coordinate in the GTA world.
		@param startZ The start Z position of the 3D line, representing a coordinate in the GTA world.
		@param endX The end X position of the 3D line, representing a coordinate in the GTA world.
		@param endY The end Y position of the 3D line, representing a coordinate in the GTA world.
		@param endZ The end Z position of the 3D line, representing a coordinate in the GTA world.
		@param color An integer of the hex color, produced using tocolor or 0xAARRGGBB (AA = alpha, RR = red, GG = green, BB = blue).
		@param width The width/thickness of the line
		@param postGUI A bool representing whether the line should be drawn on top of or behind any ingame GUI (rendered by CEGUI).

		@return True if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxDrawLine3D
	**/
	@:overload(function(start:Vector3, end:Vector3, ?color:Int = 1, ?width:Float, postGUI:Bool = false):Bool {})
	static function dxDrawLine3D(startX:Float, startY:Float, startZ:Float, endX:Float, endY:Float, endZ:Float, ?color:Int = 1, ?width:Float,
		postGUI:Bool = false):Bool;

	/**
		This function draws a textured 3D line between two points in the 3D world - rendered for one frame.

		@param startX The start X position of the 3D line, representing a coordinate in the GTA world.
		@param startY The start Y position of the 3D line, representing a coordinate in the GTA world.
		@param startZ The start Z position of the 3D line, representing a coordinate in the GTA world.
		@param endX The end X position of the 3D line, representing a coordinate in the GTA world.
		@param endY The end Y position of the 3D line, representing a coordinate in the GTA world.
		@param endZ The end Z position of the 3D line, representing a coordinate in the GTA world.
		@param width The width/thickness of the line in GTA world units. (This is 1/75th of the width used in dxDrawLine3D)
		@param color An integer of the hex color, produced using tocolor or 0xAARRGGBB (AA = alpha, RR = red, GG = green, BB = blue).
		@param postGUI A bool representing whether the line should be drawn on top of or behind any ingame GUI.
		@param faceTowardX The X position the front of the line should face towards. If this is not set, the camera position is used, so the front of the line faces toward the camera.
		@param faceTowardY The Y position the front of the line should face towards. If this is not set, the camera position is used, so the front of the line faces toward the camera.
		@param faceTowardZ The Z position the front of the line should face towards. If this is not set, the camera position is used, so the front of the line faces toward the camera.

		@return True if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxDrawMaterialLine3D
	**/
	@:overload(function(start:Vector3, end:Vector3, material:DxTexture, width:Float, ?color:Int = 1, ?postGUI:Bool = false, ?faceTowardX:Float = 0.0,
		?faceTowardY:Float = 0.0, ?faceTowardZ:Float = 0.0):Bool {})
	static function dxDrawMaterialLine3D(startX:Float, startY:Float, startZ:Float, endX:Float, endY:Float, endZ:Float, material:DxTexture, width:Float,
		?color:Int = 1, ?postGUI:Bool = false, ?faceTowardX:Float = 0.0, ?faceTowardY:Float = 0.0, ?faceTowardZ:Float = 0.0):Bool;

	/**
		This function draws a 2D primitive shape with material applied to it across the screen - rendered for one frame.

		@param primitiveType Type of primitive to be drawn.
		@param image Either a material element or a filepath of the image which is going to be drawn. (.dds images are also supported). Image files should ideally have dimensions that are a power of two, to prevent possible blurring. Use a texture created with dxCreateTexture to speed up drawing.
		@param postGUI A bool representing whether the line should be drawn on top of or behind any ingame GUI (rendered by CEGUI).
		@param vertices Tables representing each primitive vertice, required amount of them is determined by primitive type.

		@return True if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxDrawMaterialPrimitive
	**/
	static function dxDrawMaterialPrimitive(primitiveType:DxPrimitiveType, image:EitherType<DxTexture, String>, postGUI:Bool,
		verticles:Rest<Array<Dynamic>>):Bool; // TODO: test it

	/**
		This function draws a 2D primitive shape across the screen - rendered for one frame.

		@param primitiveType Type of primitive to be drawn.
		@param postGUI A bool representing whether the line should be drawn on top of or behind any ingame GUI (rendered by CEGUI).
		@param vertices Tables representing each primitive vertice, required amount of them is determined by primitive type.

		@return True if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxDrawPrimitive
	**/
	static function dxDrawPrimitive(primitiveType:DxPrimitiveType, postGUI:Bool, verticles:Rest<Array<Dynamic>>):Bool; // TODO: test it

	/**
		This function draws a 3D primitive shape with material applied to it in the 3D world - rendered for one frame.

		@param primitiveType Type of primitive to be drawn.
		@param image Either a material element or a filepath of the image which is going to be drawn. (.dds images are also supported). Image files should ideally have dimensions that are a power of two, to prevent possible blurring. Use a texture created with dxCreateTexture to speed up drawing.
		@param postGUI A bool representing whether the line should be drawn on top of or behind any ingame GUI (rendered by CEGUI).
		@param vertices Tables representing each primitive vertice, required amount of them is determined by primitive type.

		@return True if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxDrawMaterialPrimitive3D
	**/
	static function dxDrawMaterialPrimitive3D(primitiveType:DxPrimitiveType, image:EitherType<DxTexture, String>, postGUI:Bool,
		verticles:Rest<Array<Dynamic>>):Bool; // TODO: test it

	/**
		This function draws a 3D primitive in the 3D world - rendered for one frame.

		@param primitiveType Type of primitive to be drawn.
		@param postGUI A bool representing whether the line should be drawn on top of or behind any ingame GUI (rendered by CEGUI).
		@param vertices Tables representing each primitive vertice, required amount of them is determined by primitive type.

		@return True if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxDrawPrimitive3D
	**/
	static function dxDrawPrimitive3D(primitiveType:DxPrimitiveType, postGUI:Bool, verticles:Rest<Array<Dynamic>>):Bool; // TODO: test it

	/**
		@param startX The start X position of the 3D line, representing a coordinate in the GTA world.
		@param startY The start Y position of the 3D line, representing a coordinate in the GTA world.
		@param startZ The start Z position of the 3D line, representing a coordinate in the GTA world.
		@param endX The end X position of the 3D line, representing a coordinate in the GTA world.
		@param endY The end Y position of the 3D line, representing a coordinate in the GTA world.
		@param endZ The end Z position of the 3D line, representing a coordinate in the GTA world.
		@param u the absolute X coordinate of the top left corner of the section
		@param v the absolute Y coordinate of the top left corner of the section
		@param usize the absolute width of the section
		@param vsize the absolute height of the section
		@param material A material to draw the line with.
		@param width The width/thickness of the line in GTA world units. (This is 1/75th of the width used in dxDrawLine3D)
		@param color An integer of the hex color, produced using tocolor or 0xAARRGGBB (AA = alpha, RR = red, GG = green, BB = blue).
		@param postGUI A bool representing whether the line should be drawn on top of or behind any ingame GUI.
		@param faceTowardX The X position the front of the line should face towards. If this is not set, the camera position is used, so the front of the line faces toward the camera.
		@param faceTowardY The Y position the front of the line should face towards. If this is not set, the camera position is used, so the front of the line faces toward the camera.
		@param faceTowardZ The Z position the front of the line should face towards. If this is not set, the camera position is used, so the front of the line faces toward the camera.

		@return True if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxDrawMaterialSectionLine3D
	**/
	@:overload(function(start:Vector3, end:Vector3, u:Float, v:Float, usize:Float, vsize:Float, material:DxTexture, width:Float, ?color:Int = 1,
		?postGUI:Bool = false, ?faceToward:Vector3):Bool {})
	static function dxDrawMaterialSectionLine3D(startX:Float, startY:Float, startZ:Float, endX:Float, endY:Float, endZ:Float, u:Float, v:Float, usize:Float,
		vsize:Float, material:DxTexture, width:Float, ?color:Int = 1, ?postGUI:Bool = false, ?faceTowardX:Float = 0.0, ?faceTowardY:Float = 0.0,
		?faceTowardZ:Float = 0.0):Bool;

	/**
		This function draws a 2D rectangle across the screen - rendered for one frame.

		@param startX An float representing the absolute origin X position of the rectangle, represented by pixels on the screen.
		@param startY An float representing the absolute origin Y position of the rectangle, represented by pixels on the screen.
		@param width An float representing the width of the rectangle, drawn in a right direction from the origin.
		@param height An float representing the height of the rectangle, drawn in a downwards direction from the origin.
		@param color the hex color of the rectangle, produced using tocolor or 0xAARRGGBB (AA = alpha, RR = red, GG = green, BB = blue).
		@param postGUI A bool representing whether the line should be drawn on top of or behind any ingame GUI.
		@param subPixelPositioning A bool representing whether the rectangle can be positioned sub-pixel-ly.

		@return True if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxDrawRectangle
	**/
	@:overload(function(start:Vector2, size:Vector2, ?color:Int = 1, ?postGUI:Bool = false, ?subPixelPositioning:Bool = false):Bool {})
	static function dxDrawRectangle(startX:Float, startY:Float, width:Float, height:Float, ?color:Int = 1, ?postGUI:Bool = false,
		?subPixelPositioning:Bool = false):Bool;

	/**
		@param text the text to draw
		@param leftX the absolute X coordinate of the top left corner of the text
		@param topY the absolute Y coordinate of the top left corner of the text
		@param rightX the absolute X coordinate of the right side of the text bounding box. Used for text aligning, clipping and word breaking.
		@param bottomY the absolute Y coordinate of the bottom side of the text bounding box. Used for text aligning, clipping and word breaking.
		@param color the color of the text, a value produced by tocolor or 0xAARRGGBB (AA = alpha, RR = red, GG = green, BB = blue).
		@param scale the size of the text.scale: can (optionally) be specified as two floats. i.e. scaleX, scaleY
		@param font Either a custom DX font element or the name of a built-in DX font
		@param alignX horizontal alignment of the text within the bounding box. Can be "left", "center" or "right".
		@param alignY vertical alignment of the text within the bounding box. Can be "top", "center" or "bottom".
		@param clip if set to true, the parts of the text that don't fit within the bounding box will be cut off.
		@param wordBreak if set to true, the text will wrap to a new line whenever it reaches the right side of the bounding box. If false, the text will always be completely on one line.
		@param postGUI A bool representing whether the text should be drawn on top of or behind any ingame GUI (rendered by CEGUI).
		@param colorCoded Set to true to enable embedded #FFFFFF color codes. Note: clip and wordBreak are forced false if this is set.
		@param subPixelPositioning A bool representing whether the text can be positioned sub-pixel-ly. Looks nicer for moving/scaling animations.
		@param rotation Rotation
		@param rotationCenterX Rotation Origin X
		@param rotationCenterY Rotation Origin Y

		@return True if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxDrawText
	**/
	@:overload(function(text:String, leftTopCorner:Vector2, ?rightBottomCorner:Vector2, ?color:Int = 1, ?scale:Float = 1.0,
		?font:EitherType<DxFont, DxFontType>, ?alignX:String, ?alignY:String, ?clip:Bool = false, ?wordBreak:Bool = false, ?postGUI:Bool = false,
		?colorCoded:Bool = false, ?subPixelPositioning:Bool = false, ?rotation:Float, ?rotationCenter:Vector2):Bool {})
	static function dxDrawText(text:String, leftX:Float, topY:Float, ?rightX:Float, ?bottomY:Float, ?color:Int = 1, ?scale:Float = 1.0,
		?font:EitherType<DxFont, DxFontType>, ?alignX:String, ?alignY:String, ?clip:Bool = false, ?wordBreak:Bool = false, ?postGUI:Bool = false,
		?colorCoded:Bool = false, ?subPixelPositioning:Bool = false, ?rotation:Float, ?rotationCenterX:Float, ?rotationCenterY:Float):Bool;

	/**
		This function drawn same sphere as /showcol. It provides 4 levels of iterations which mean density of sphere. Adjust radius to iterations to get optimum density of mesh. About 50 spheres with iterations = 4 can cause fps drop.

		@param x X position in world of sphere.
		@param y Y position in world of sphere.
		@param z Z position in world of sphere.
		@param radius A radius of sphere.
		@param color A color of sphere from tocolor function.
		@param lineWidth A width of line
		@param iterations Number 1, 2, 3 or 4. 1 mean low density, 4 mean high.

		@return True if successful, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxDrawText
	**/
	@:overload(function(position:Vector3, radius:Float, color:Int, lineWidth:Float, iterations:Int):Bool {})
	static function dxDrawWiredSphere(x:Float, y:Float, z:Float, radius:Float, color:Int, lineWidth:Float, iterations:Int):Bool;

	/**
		This function returns the current blend mode for the dxDraw functions. The blend mode is set using dxSetBlendMode

		@return Current blend mode

		@see https://wiki.mtasa.com/wiki/DxGetBlendMode
	**/
	static function dxGetBlendMode():DxBlendMode;

	/**
		This function retrieves the theoretical height of a certain piece of text, if it were to be drawn using dxDrawText.

		@param scale The size of the text.
		@param font Either a custom DX font element or the name of a built-in dx font

		@return Integer of the height of the text.

		@see https://wiki.mtasa.com/wiki/DxGetFontHeight
	**/
	static function dxGetFontHeight(?scale:Float = 1.0, ?font:EitherType<DxFont, DxFontType>):Int;

	/**
		This gets the dimensions of the supplied material element.

		@param material The material element whose size is to be gotten

		@return Vector3

		@see https://wiki.mtasa.com/wiki/DxGetMaterialSize
	**/
	static function dxGetMaterialSize(material:DxMaterial):Vector3;

	/**
		This function gets the color of a single pixel from pixels contained in a string. It only works with 'plain' format pixels.

		@param pixels The pixels to use
		@param x The X coordinate for the pixel
		@param y The Y coordinate for the pixel

		@return Vector4

		@see https://wiki.mtasa.com/wiki/DxGetPixelColor
	**/
	static function dxGetPixelColor(pixels:String, x:Int, y:Int):Vector4;

	/**
		This function gets the dimensions of pixels contained in a string. It works with all pixel formats.

		@param pixels The pixels to get the dimensions of

		@return Vector2

		@see https://wiki.mtasa.com/wiki/DxGetPixelSize
	**/
	static function dxGetPixelsSize(pixels:String):Vector2;

	/**
		This function returns the format of pixels contained in a string.

		@param pixels : The pixels to get the format of

		@return Returns the format of the pixels if successful ('plain' or 'png' or 'jpeg'), false if invalid arguments were passed to the function.

		@see https://wiki.mtasa.com/wiki/DxGetPixelFormat
	**/
	static function dxGetPixelsFormat():PixelsFormat;

	/**
		This function gets information about various internal datum

		@see https://wiki.mtasa.com/wiki/DxGetStatus
	**/
	static function dxGetStatus():DxStatus;

	/**
		This function retrieves the theoretical width and height (in pixels) of a certain piece of text, if it were to be drawn using dxDrawText.

		@param text A string representing the text for which you wish to retrieve with width for.
		@param width The width of the text. Use with wordBreak = true.
		@param scale The size of the text. Can (optionally) be specified as two floats. i.e. scaleX, scaleY
		@param font Either a custom DX font element or the name of a built-in dx font
		@param wordBreak If set to true, the text will wrap to a new line whenever it reaches the right side of the bounding box. If false, the text will always be completely on one line.
		@param colorCoded Should we exclude color codes from the width? (false will include the hex in the length)

		@return size of text

		@see https://wiki.mtasa.com/wiki/DxGetTextSize
	**/
	static function dxGetTextSize(text:String, ?width:Float, ?scale:Float, font:EitherType<DxFont, DxFontType>, ?wordBreak:Bool = false,
		?colorCoded:Bool = false):Vector2;

	/**
		This function retrieves the theoretical width (in pixels) of a certain piece of text, if it were to be drawn using dxDrawText.

		@param text A string representing the text for which you wish to retrieve with width for.
		@param scale The size of the text. Can (optionally) be specified as two floats. i.e. scaleX, scaleY
		@param font Either a custom DX font element or the name of a built-in dx font
		@param colorCoded Should we exclude color codes from the width? (false will include the hex in the length)

		@return width of text

		@see https://wiki.mtasa.com/wiki/DxGetTextWidth
	**/
	static function dxGetTextWidth(text:String, ?scale:Float = 1, ?font:EitherType<DxFont, DxFontType>, ?colorCoded:Bool = false):Int;

	/**
		This function fetches the pixels from a texture element. It can be used with a standard texture, render target or screen source.

		@param surfaceIndex Desired slice to get if the texture is a volume texture, or desired face to get if the texture is a cube map.
		@param texture The texture element to get the pixels from
		@param x Rectangle left position
		@param y Rectangle top position
		@param width Rectangle width
		@param height Rectangle height

		@return 'plain' format pixels string if successful, false if invalid arguments were passed to the function.

		@see https://wiki.mtasa.com/wiki/DxGetTexturePixels
	**/
	static function dxGetTexturePixels(?surfaceIndex:Int = 0, texture:DxTexture, ?x:Int, ?y:Int, ?width:Int, ?height:Int):String;

	/**
		This function gets the current aspect ratio set by dxSetAspectRatioAdjustmentEnabled.

		@return True when enabled by dxSetAspectRatioAdjustmentEnabled, false otherwise and aspect ratio

		@see https://wiki.mtasa.com/wiki/DxIsAspectRatioAdjustmentEnabled
	**/
	static function dxIsAspectRatioAdjustmentEnabled():DxIsAspectRatioAdjustmentEnabledReturn;

	/**
		This function allows for the positioning of dxDraw calls to be automatically adjusted according to the client's aspect ratio setting.

		@param isEnabled Should the adjustment be enabled or disabled.
		@param aspectRatio This should be set to the aspect ratio the dxDraws were originally designed in.

		@return True when it was changed successfully, or false otherwise.

		@see https://wiki.mtasa.com/wiki/DxSetAspectRatioAdjustmentEnabled
	**/
	static function dxSetAspectRatioAdjustmentEnabled(isEnabled:Bool, ?aspectRatio:Float = 4 / 3):Bool;

	/**
		This function sets the current blend mode for the dxDraw functions.

		@param blendMode The blend mode to use

		@return True when it was changed successfully, or false otherwise.

		@see https://wiki.mtasa.com/wiki/DxSetBlendMode
	**/
	static function dxSetBlendMode(blendMode:DxBlendMode):Bool;

	/**
		This function sets the color of a single pixel for pixels contained in a string. It only works with 'plain' format pixels.

		@param pixels The pixels to use
		@param x The X coordinate for the pixel
		@param y The Y coordinate for the pixel
		@param r The red channel for the color (0-255)
		@param g The green channel for the color (0-255)
		@param b The blue channel for the color (0-255)
		@param a The alpha channel for the color (0-255)

		@return True when it was changed successfully, or false otherwise.

		@see https://wiki.mtasa.com/wiki/DxSetPixelsColor
	**/
	static function dxSetPixelColor(pixels:String, x:Int, y:Int, r:Int, g:Int, b:Int, ?a:Int = 255):Bool;

	/**
		This function changes the drawing destination for the dx functions.

		@param renderTarget The render target element whose pixels we want to draw on.
		@param clear If set to true, the render target will also be cleared.

		@return true if the render target was successfully changed, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxSetRenderTarget
	**/
	static function dxSetRenderTarget(?renderTarget:DxRenderTarget, ?clear:Bool = false):Bool;

	/**
		This sets a named parameter for a shader element

		@param shader The shader element whose parameter is to be changed
		@param parameterName The name of parameter
		@param value The value to set, which can be a texture, a bool, a number or a list of numbers

		@return true if the shader element's parameter was successfully changed, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxSetShaderValue
	**/
	static function dxSetShaderValue(shader:DxShader, parameterName:String, value:Dynamic):Bool;

	/**
		This function sets the amount of geometric sub-division to use when drawing a shader element with dxDrawImage.

		@param shader The shader element whose tessellation is to be changed
		@param tessellationX The number of sub-division points along the X axis. Range is 1 to 500.
		@param tessellationY The number of sub-division points along the Y axis. Range is 1 to 500.

		@return true if the shader element's tessellation was successfully changed, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxSetShaderTessellation
	**/
	static function dxSetShaderTessellation(shader:DxShader, tessellationX:Int, tessellationY:Int):Void;

	/**
		This function applies a 3D transformation to a shader element when it is drawn with dxDrawImage.

		@param shader The shader element whose transformation is to be changed
		@param rotationX Rotation angle in degrees around the X axis (Left,right). This will make the shader rotate along its width.
		@param rotationY Rotation angle in degrees around the Y axis (Up,down). This will make the shader rotate along its height.
		@param rotationZ Rotation angle in degrees around the Z axis (In,out). This will make the shader rotate in a similar way to the rotation argument in dxDrawImage.
		@param rotationCenterOffsetX The center of rotation offset X position in screen relative units.
		@param rotationCenterOffsetY The center of rotation offset Y position in screen relative units.
		@param rotationCenterOffsetZ The center of rotation offset Z position in screen relative units.
		@param rotationCenterOffsetOriginIsScreen Set to true if the center of rotation origin should be the center of the screen rather than the center of the image.
		@param perspectiveCenterOffsetX The center of perspective offset X position in screen relative units.
		@param perspectiveCenterOffsetY The center of perspective offset Y position in screen relative units.
		@param perspectiveCenterOffsetOriginIsScreen Set to true if the center of perspective origin should be the center of the screen rather than the center of the image.

		@return true if the shader element's transform was successfully changed, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxSetShaderTransform
	**/
	static function dxSetShaderTransform(shader:DxShader, rotationX:Float, rotationY:Float, rotationZ:Float, ?rotationCenterOffsetX:Float,
		?rotationCenterOffsety:Float, ?rotationCenterOffsetZ:Float, ?rotationCenterOffsetOriginIsScreen:Bool = false, ?perspectiveCenterOffsetX:Float,
		?perspectiveCenterOffsetY:Float, ?perspectiveCenterOffsetOriginIsScreen:Bool):Bool;

	/**
		This function is used for testing scripts written using guiCreateFont, dxCreateFont, dxCreateShader and dxCreateRenderTarget.

		@param testMode The test mode to be set.

		@return true if the test mode was successfully set, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxSetTestMode
	**/
	static function dxSetTestMode(testMode:DxTestMode):Bool;

	/**
		This functions allows you to change the edge handling after creating the texture.

		@param texture The affected texture
		@param textureEdge The texture edge mode.
		@param borderColor If textureEdge is set to border, you are able to define a border color here

		@return true if successfully set, false otherwise

		@see https://wiki.mtasa.com/wiki/DxSetTextureEdge
	**/
	static function dxSetTextureEdge(texture:DxTexture, textureEdge:DxTextureEdge, ?borderColor:Int):Bool;

	/**
		This function sets the pixels of a texture element. It can be used with a standard texture, render target or screen source. Only 'plain' format pixels please.

		@param surfaceIndex Desired slice to set if the texture is a volume texture, or desired face to set if the texture is a cube map.
		@param texture The texture element to set the pixels of
		@param pixels The 'plain' format pixels to use
		@param x Rectangle left position
		@param y Rectangle top position
		@param width Rectangle width
		@param height Rectangle height

		@return true if successfully set, false otherwise

		@see https://wiki.mtasa.com/wiki/DxSetTexturePixels
	**/
	static function dxSetTexturePixels(?surfaceIndex:Int = 0, texture:DxTexture, pixels:String, ?x:Int, ?y:Int, ?width:Int, ?height:Int):Bool;

	/**
		This function updates the contents of a screen source texture with the screen output from GTA

		@param screenSource The screen source element whose pixels we want to fill with the screen capture
		@param resampleNow A bool to indicate if the screen should be captured immediately. The default is false which means the screen from the end of the previous frame is used (better for performance and consistency). Use true for layering fullscreen effects.

		@return true if the screen was successfully captured, false otherwise.

		@see https://wiki.mtasa.com/wiki/DxUpdateScreenSource
	**/
	static function dxUpdateScreenSource(screenSource:DxScreenSource, ?resampleNow:Bool = false):Bool;

	/**
		This function will add an event handler. An event handler is a function that will be called when the event it's attached to is triggered

		@param eventName The name of the event you want to attach the handler function to.
		@param attachedTo The element you wish to attach the handler to. The handler will only be called when the event it is attached to is triggered for this element, or one of its children.
		@param handlerFunction The handler function you wish to call when the event is triggered. This function will be passed all of the event's parameters as arguments, but it isn't required that it takes all of them.
		@param propagate A boolean representing whether the handler will be triggered if the event was propagated down or up the element tree (starting from the source), and not triggered directly on attachedTo
		@param priority A string representing the trigger order priority relative to other event handlers of the same name.

		@return true if the event handler was attached successfully. Returns false if the specified event could not be found or any parameters were invalid.

		@see https://wiki.mtasa.com/wiki/AddEventHandler
	**/
	static function addEventHandler(eventName:String, attachedTo:Element, handlerFunction:Function, ?propagate:Bool = true, ?priority:String = "normal"):Bool;
}
