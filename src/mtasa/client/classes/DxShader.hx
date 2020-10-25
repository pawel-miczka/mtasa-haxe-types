package mtasa.client.classes;

import mtasa.client.returns.DxCreateShaderReturn;

@:native('DxShader')
extern class DxShader extends DxMaterial {
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
	static function create(filePath:String, ?priority:Int = 0, ?maxDistance:Int = 0, ?layered:Bool = false,
		?elementTypes:String = "world,vehicle,object,other"):DxCreateShaderReturn;
}
