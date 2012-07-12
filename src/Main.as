package 
{
	import org.flixel.*;
	public class Main extends FlxGame
	{
		[Frame(factoryClass = "Preloader")]
		public function Main():void 
		{
			super(800, 600, TitleScreen, 1);
		}
	}
	
}