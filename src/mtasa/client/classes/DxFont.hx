package mtasa.client.classes;

import mtasa.client.enums.DxFontQuality;

@:native('DxFont')
extern class DxFont {
	/**
		This function creates a DX font element that can be used in dxDrawText. Successful font creation is not guaranteed, and may fail due to hardware or memory limitations.

		@param filepath the name of the file containing the font
		@param size size of the font
		@param bold flag to indicate if the font should be bold
		@param quality the font quality

		@return Returns a DX font element if successful, false if invalid arguments were passed to the function, or there is insufficient resources available.

		@see https://wiki.mtasa.com/wiki/DxCreateFont
	**/
	static function create(filepath:String, ?size:Int = 9, ?bold:Bool = false, ?quality:DxFontQuality = PROOF):DxFont;
}
