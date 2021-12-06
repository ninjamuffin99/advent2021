package src;

import sys.io.File;

class Main
{
	public static function main()
	{
		var fileStuff:String = File.getContent('days/day1.txt');

		trace(fileStuff);
	}
}
