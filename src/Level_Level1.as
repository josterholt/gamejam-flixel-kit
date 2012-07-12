//Code generated with DAME. http://www.dambots.com

package 
{
	import org.flixel.*;
	public class Level_Level1 extends BaseLevel
	{
		//Embedded media...
		[Embed(source="../maps/mapCSV_Level1_Terrain.csv", mimeType="application/octet-stream")] public var CSV_Level1Terrain:Class;
		[Embed(source="../assets/floor.png")] public var Img_Level1Terrain:Class;

		//Tilemaps
		public var layerLevel1Terrain:FlxTilemap;

		//Sprites


		public function Level_Level1(addToStage:Boolean = true, onAddSpritesCallback:Function = null)
		{
			// Generate maps.
			layerLevel1Terrain = new FlxTilemap;
			layerLevel1Terrain.loadMap( new CSV_Level1Terrain, Img_Level1Terrain, 25,25, FlxTilemap.OFF, 0, 1, 1 );
			layerLevel1Terrain.x = 250.000000;
			layerLevel1Terrain.y = 250.000000;
			layerLevel1Terrain.scrollFactor.x = 1.000000;
			layerLevel1Terrain.scrollFactor.y = 1.000000;

			//Add layers to the master group in correct order.
			masterLayer.add(layerLevel1Terrain);


			if ( addToStage )
			{
				FlxG.state.add(masterLayer);
			}

			mainLayer = layerLevel1Terrain;

			boundsMinX = 250;
			boundsMinY = 250;
			boundsMaxX = 500;
			boundsMaxY = 500;

		}


	}
}
