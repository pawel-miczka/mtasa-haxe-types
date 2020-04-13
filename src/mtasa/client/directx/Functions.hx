package mtasa.client.directx;

import mtasa.client.classes.DxRenderTarget;
import mtasa.shared.classes.Vector2;

@:native('_G')
extern class Functions {
  public static function dxDrawRectangle(position:Vector2, size:Vector2, ?color:Int = 0, ?postGUI:Bool = false, subPixelPositioning:Bool = false):Bool;

  public static function dxDrawText(text:String, lefTopPosition:Vector2, ?rightBottomPosition:Vector2, ?color:Int = 0, ?scaleXY:Float = 1.0, ?scaleY:Float = 1.0, ?font:Dynamic = "default", ?alignX:String = "left", ?alignY:String = "top", ?clip:Bool = false, ?wordBreak:Bool = false, ?postGUI:Bool = false, ?colorCoded:Bool = false, ?subPixelPositioning:Bool = false, ?fRotation:Float = 0.0, ?fRotationCenterX:Float = 0.0, ?fRotationCenterY:Float = 0.0):Bool;

  public static function dxCreateRenderTarget(size:Vector2, ?withAlpha:Bool):DxRenderTarget;

  public static function dxSetRenderTarget(?renderTarget:DxRenderTarget, ?clear:Bool):Bool;

  public static function dxDrawImage(position:Vector2, size:Vector2, image:Dynamic):Bool;

  public static function dxDrawLine(positionPoint:Vector2, endPoint:Vector2, color:Int, ?width:Float, ?postGUI:Bool):Bool;

  public static function dxGetTextWidth(text:String, ?scale:Float, ?font:Dynamic, ?bColorCoded:Bool):Float;
}