import sys.io.File;

class Main
{
	public static var fileData:Array<String> = [];

	static public function main():Void
	{
		parseFileData(3);

		var joinedShit:String = fileData.join("");

		var lengthOfBits = fileData[0].length;
		var heightOfBits = fileData.length;

		var splitShit:Array<Array<Int>> = [];

		splitShit = fileData.map(function(f)
		{
			var funny:Array<Int> = [];
			for (str in f.split(""))
			{
				funny.push(Std.parseInt(str));
			}

			return funny;
		});
		// 3797
		// 298

		var commonBits:Array<Int> = [];
		var uncommonBits:Array<Int> = [];

		for (w in 0...lengthOfBits)
		{
			var counter:Float = 0;

			for (h in 0...heightOfBits)
			{
				trace(splitShit[h][w]);
				counter += Std.int(splitShit[h][w]);
			}

			trace(counter);

			if (counter >= heightOfBits / 2)
			{
				commonBits.push(1);
				uncommonBits.push(0);
			}
			else
			{
				commonBits.push(0);
				uncommonBits.push(1);
			}
		}

		var funnyBinaryFunc = function(bin:String)
		{
			var swagNum:Int = Std.parseInt(bin);
		};

		trace(Std.parseInt('000100'));

		trace(commonBits);
		trace(uncommonBits);
	}

	// day 2
	static public function depthCalculation():Void
	{
		var commands:Array<Dynamic> = fileData.map(function(f)
		{
			return [f.split(' ')[0], f.split(' ')[1]];
		});

		var horiz:Int = 0;
		var depth:Int = 0;
		var aim:Int = 0;

		for (command in commands)
		{
			var dir = command[0];
			var magnitude = Std.parseInt(command[1]);

			switch (dir)
			{
				case 'forward':
					horiz += magnitude;
					depth += aim * magnitude;
				case 'up':
					///depth -= magnitude;
					aim -= magnitude;
				case 'down':
					// depth += magnitude;
					aim += magnitude;
			}
			trace('COMMAND $command');
			trace('horiz is: $horiz -- depth is : $depth -- aim is: $aim');
		}

		trace('DEPTH OF: $depth - HORIZ OF: $horiz');
		trace(depth * horiz);
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
