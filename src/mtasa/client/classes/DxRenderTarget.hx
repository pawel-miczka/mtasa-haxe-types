package mtasa.client.classes;

@:native('DxRenderTarget')
extern class DxRenderTarget {
	/**
		This function creates a render target element, which is a special type of texture that can be drawn on with the dx functions. Successful render target creation is not guaranteed, and may fail due to hardware or memory limitations.

		@param width The width of the texture in pixels.
		@param height The height of the texture in pixels.
		@param withAlpha The render target will be created with an alpha channel. 'false' will turn images' alpha channels to black color

		@return Texture element if successful, false if the system is unable to create a render target.

		@see https://wiki.mtasa.com/wiki/DxCreateRenderTarget
	**/
	static function create(width:Int, height:Int, ?withAlpha:Bool = false):DxRenderTarget;
}
