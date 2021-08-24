//
//  main.swift
//  HRNewYearChaos
//
//  Created by Khushneet Inder Singh on 8/25/21.
//

import Foundation

//https://www.hackerrank.com/challenges/new-year-chaos/problem

func minimumBribes(q: [Int]) -> Void {
	 var bribe = 0
	 var i = 0
	 while i+1 < q.count {
		  if (q[i] - i > 3) {
				bribe = -1
				break
		  }
		  else {
				var j = i
				while j+1 < q.count {
					 if (q[i] > q[j+1]) {
						  bribe += 1
					 }
					 j += 1
				}
		  }
		  i += 1
	 }
	 if (bribe != -1) {
		  print(bribe)
	 }
	 else {
		  print("Too chaotic")
	 }
}

print(minimumBribes(q: [1,2,5,3,7,8,6,4]))
