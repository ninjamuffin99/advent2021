import sys.io.File;

class Main
{
	static public function main():Void
	{
		var fileStuff:String = File.getContent('days/day1.txt');
		trace(fileStuff);
	}
}
