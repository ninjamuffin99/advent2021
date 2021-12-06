import sys.io.File;

class Main
{
	public static var fileData:Array<String> = [];

	static public function main():Void
	{
		parseFileData(1);

		for (files in fileData)
		{
			trace(files);
		}
	}

	static public function parseFileData(day:Int)
	{
		fileData = File.getContent('days/day$day.txt').split("\n");
	}
}
