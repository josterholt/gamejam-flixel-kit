package
{
	import org.flixel.*;
	import org.flixel.plugin.photonstorm.*;

	
	
	public class TitleScreen extends FlxState
	{
		override public function create():void
		{
			
			var startText:FlxText = new FlxText(300, 500, 200);
			startText.text = 'Hit control to begin';
			startText.size = 16;
			add(startText);		}
		
		override public function update():void
		{
			super.update();
			
			if( FlxG.keys.CONTROL == true )
			{
				FlxG.switchState( new PlayState() );
			}
		}	
	}
}