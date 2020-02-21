package mtasa.client;

@:native("_G")
extern class Functions {
  public static function dxDrawRectangle(startX:Float, startY:Float, width:Float, height:Float, ?color:Int = 0, ?postGUI:Bool = false, subPixelPositioning:Bool = false):Bool;

  public static function dxDrawText(text:String, leftX:Float, topY:Float, ?rightX:Float, ?bottomY:Float, ?color:Int = 0, ?scaleXY:Float = 1.0, ?scaleY:Float = 1.0, ?font:Dynamic = "default", ?alignX:String = "left", ?alignY:String = "top", ?clip:Bool = false, ?wordBreak:Bool = false, ?postGUI:Bool = false, ?colorCoded:Bool = false, ?subPixelPositioning:Bool = false, ?fRotation:Float = 0.0, ?fRotationCenterX:Float = 0.0, ?fRotationCenterY:Float = 0.0):Bool;
}