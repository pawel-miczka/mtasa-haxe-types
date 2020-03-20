package mtasa.client;

import mtasa.client.classes.DxRenderTarget;

@:native("_G")
extern class Functions {
	public static function dxDrawRectangle(startX:Float, startY:Float, width:Float, height:Float, ?color:Int = 0, ?postGUI:Bool = false,
		subPixelPositioning:Bool = false):Bool;

	public static function dxDrawText(text:String, leftX:Float, topY:Float, ?rightX:Float, ?bottomY:Float, ?color:Int = 0, ?scaleXY:Float = 1.0,
		?scaleY:Float = 1.0, ?font:Dynamic = "default", ?alignX:String = "left", ?alignY:String = "top", ?clip:Bool = false, ?wordBreak:Bool = false,
		?postGUI:Bool = false, ?colorCoded:Bool = false, ?subPixelPositioning:Bool = false, ?fRotation:Float = 0.0, ?fRotationCenterX:Float = 0.0,
		?fRotationCenterY:Float = 0.0):Bool;

	public static function dxCreateRenderTarget(width:Int, height:Int, ?withAlpha:Bool):DxRenderTarget;

	public static function dxSetRenderTarget(?renderTarget:DxRenderTarget, ?clear:Bool):Bool;

	public static function dxDrawImage(posX:Float, posY:Float, width:Float, height:Float, image:Dynamic):Bool;

	public static function dxDrawLine(startX:Float, startY:Float, endX:Float, endY:Float, color:Int, ?width:Float, ?postGUI:Bool):Bool;

	public static function dxGetTextWidth(text:String, ?scale:Float, ?font:Dynamic, ?bColorCoded:Bool):Float;
}
