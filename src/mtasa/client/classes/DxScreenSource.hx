package mtasa.client.classes;

@:native('DxScreenSource')
extern class DxScreenSource {
	/**
		This function creates a screen source, which is a special type of texture that contains the screen as rendered by GTA

		@param width The width of the texture in pixels.
		@param height The height of the texture in pixels.

		@return Texture element if successful, false if invalid arguments were passed to the function.

		@see https://wiki.mtasa.com/wiki/DxCreateScreenSource
	**/
	static function create(width:Int, height:Int):DxScreenSource;
}
