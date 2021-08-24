import UIKit

var str = "Hello, playground"

//https://www.hackerrank.com/challenges/birthday-cake-candles/problem

func birthdayCakeCandles(ar: [Int]) -> Int {
	var tallestCandleSize = 0
	var count = 0
	
	for candle in ar {
		if candle > tallestCandleSize {
			tallestCandleSize = candle
			count = 1
			continue
		}
		if candle == tallestCandleSize {
			count += 1
		}
	}
	
	return count
}

birthdayCakeCandles(ar: [1,2,4,4,4])


//https://www.hackerrank.com/challenges/sock-merchant/problem

func sockMerchant(ar: [Int]) -> Int {
	var dict : [Int:Int] = [:]
	
	var totalCount = 0
	for item in ar {
		if (dict[item] != nil) {
			totalCount += 1
			dict[item] = nil
		} else {
			dict[item] = 1
		}
	}
	
	return totalCount
}

sockMerchant(ar: [10, 20, 20, 10, 10, 30, 50, 10, 20])


//https://www.hackerrank.com/challenges/counting-valleys/problem

func countingValleys(n: Int, s: String) -> Int {
	var steps = 0
	var valeysCount = 0
	var notInValley : Bool = true
	for char in s {
		steps = (char == "U") ? steps+1 : steps-1
		
		if (steps < 0 && notInValley) {
			notInValley = false
			valeysCount += 1
		}
		if (steps == 0) {
			notInValley = true
		}
	}
	return valeysCount
}

countingValleys(n: 8, s: "UDDDUDUU")

//https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem

func jumpingOnClouds(clouds: [Int]) -> Int {
	var jump = 0
	var index = 0
	while (index < clouds.count) {
		if (index+2 < clouds.count && clouds[index+2] == 0) {
			jump += 1
			index += 2
		}
		else {
			if (index+1 < clouds.count && clouds[index+1] == 0) {
				jump += 1
			}
			index += 1
		}
	}
	return jump
}

jumpingOnClouds(clouds: [0,0,1,0,0,1,0])

//https://www.hackerrank.com/challenges/repeated-string/problem

func repeatedString(s: String, n: Int) -> Int {
	let aCount : (String)->Int = { string in
		var count : Int = 0
		for char in string {
			if char == "a" {
				count += 1
			}
		}
		
		return count
	}

	var len = s.count
	
	var count = aCount(s)
	
	let num = n/len
	count *= num
	len = n%len
	
	let index = s.index(s.startIndex, offsetBy: len)
	count += aCount(String(s[..<index]))
	
	return count
}

repeatedString(s: "abcac", n: 11)

