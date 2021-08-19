//
//  main.cpp
//  HRRansomNote
//
//  Created by Khushneet Inder Singh on 22/04/17.
//  Copyright © 2017 Khushneet Inder Singh. All rights reserved.
//

#include <map>
#include <set>
#include <list>
#include <cmath>
#include <ctime>
#include <deque>
#include <queue>
#include <stack>
#include <string>
#include <bitset>
#include <cstdio>
#include <limits>
#include <vector>
#include <climits>
#include <cstring>
#include <cstdlib>
#include <fstream>
#include <numeric>
#include <sstream>
#include <iostream>
#include <algorithm>
#include <unordered_map>

using namespace std;

bool ransom_note(vector<string> magazine, vector<string> ransom) {
	bool ret = true;
	std::map<string,int> magazineMap;
	
	if (magazine.size() >= ransom.size()) {
		for (auto & element : magazine) {
			if ( magazineMap.find(element) == magazineMap.end() ) {
				magazineMap[element] = 1;
			} else {
				magazineMap[element] += 1;
			}
		}
		
		for (auto & element : ransom) {
			if ( magazineMap.count(element) > 0 && magazineMap[element] > 0) {
				magazineMap[element] -= 1;
			}
			else {
				// cout << " Does not exists\n";
				ret = false;
				break;
			}
		}
	}
	else {
		ret = false;
	}
	return ret;
}

int main() {
	vector<string> magazine = {"give", "me", "one", "grand", "today", "night"};
	vector<string> ransom = {"give", "one", "grand", "today"};
	if(ransom_note(magazine, ransom))
		cout << "Yes\n";
	else
		cout << "No\n";
	return 0;
}
