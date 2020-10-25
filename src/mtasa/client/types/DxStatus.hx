package mtasa.client.types;

typedef DxStatus = {
	var TestMode:String;
	var VideoCardName:String;
	var VideoCardRAM:Int;
	var VideoCardPSVersion:Int;
	var VideoCardMaxAnisotropy:Int;
	var VideoCardNumRenderTargets:Int;
	var VideoMemoryFreeForMTA:Int;
	var VideoMemoryUsedByFonts:Int;
	var VideoMemoryUsedByTextures:Int;
	var VideoMemoryUsedByRenderTargets:Int;
	var SettingWindowed:Bool;
	var SettingFullScreenStyle:Int; // TODO: add enum
	var SettingFXQuality:Int;
	var SettingDrawDistance:Int;
	var SettingVolumetricShadows:Bool;
	var SettingStreamingVideoMemoryForGTA:Int;
	var SettingAnisotropicFiltering:Int;
	var SettingAntiAliasing:Int;
	var SettingHeatHaze:Bool;
	var SettingGrassEffect:Bool;
	var Setting32BitColor:Bool;
	var SettingHUDMatchAspectRatio:Bool;
	var SettingAspectRatio:String;
	var SettingFOV:String; // TODO: test it
	var SettingHighDetailVehicles:Bool;
	var SettingHighDetailPeds:Bool;
	var AllowScreenUpload:Bool;
	var DepthBufferFormat:String;
	var UsingDepthBuffer:Bool;
}
