package  
{
	import flash.display.InteractiveObject;
	import flash.geom.Rectangle;
	
	import org.flixel.*;
	import org.flixel.plugin.photonstorm.*;
	

	public class PlayState extends FlxState
	{
		[Embed(source = "/../assets/player.png")] public var playerImg:Class;

		public var player:FlxSprite;
		public var level:BaseLevel;
		
		public var camera:FlxCamera;
		
		public function PlayState():void
		{
			super();
		}
		
		override public function create():void
		{
			// LEVEL
			level = new Level_Level1(true);

			// PLAYER
			player = new FlxSprite(level.mainLayer.x, level.mainLayer.y);
			player.facing = FlxObject.RIGHT;			
			player.loadGraphic(playerImg, false, true, 50, 50);
			
			if (FlxG.getPlugin(FlxControl) == null)
			{
				FlxG.addPlugin(new FlxControl);
			}			
			FlxG.camera.follow(player, FlxCamera.STYLE_TOPDOWN);
			trace(level.mainLayer.x + ' ' + level.mainLayer.y + ' ' + level.mainLayer.width + ' ' + level.mainLayer.height);
			
			FlxG.worldBounds = new FlxRect(level.mainLayer.x, level.mainLayer.y, level.mainLayer.width, level.mainLayer.height);
			FlxG.camera.setBounds(0, 0, FlxG.width, FlxG.height);
			FlxG.resetCameras();
			FlxG.camera.follow(player, FlxCamera.STYLE_TOPDOWN_TIGHT);

			FlxControl.create(player, FlxControlHandler.MOVEMENT_INSTANT, FlxControlHandler.STOPPING_INSTANT, 1, true, true);
			FlxControl.player1.setCursorControl(true, true, true, true);
			FlxControl.player1.setBounds(level.mainLayer.x, level.mainLayer.y , (level.mainLayer.width - player.width), (level.mainLayer.height - player.height));
			FlxControl.player1.setMovementSpeed(100, 100, 100, 100, 100, 100);			
			add(player);
		}
		
		override public function update():void
		{
			super.update();
			//FlxG.collide(player, level.layerTerrain);
		}		
	}
}