import sys.io.File;

class Main
{
	public static var fileData:Array<String> = [];

	static public function main():Void
	{
		parseFileData(1);
	}

	// day 1 solution
	static public function sonarScan():Void
	{
		var fileShit:Array<Int> = fileData.map(function(f)
		{
			return Std.parseInt(f);
		});

		var prevNumber:Int = 0;
		var increaseCounter:Int = 0;

		var crackHead:Array<Int> = [];

		for (index => files in fileShit)
		{
			var sumOfDumbShit:Int = 0;

			if (index <= fileShit.length - 3)
			{
				sumOfDumbShit += fileShit[index];
				sumOfDumbShit += fileShit[index + 1];
				sumOfDumbShit += fileShit[index + 2];
			}

			crackHead.push(sumOfDumbShit);
		}

		for (crack in crackHead)
		{
			if (prevNumber != 0 && prevNumber < crack)
			{
				increaseCounter++;
				trace('increase depth! $crack');
			}

			prevNumber = crack;
		}

		trace(crackHead);

		trace(increaseCounter);
	}

	static public function parseFileData(day:Int)
	{
		fileData = File.getContent('days/day$day.txt').split("\n");
	}
}
