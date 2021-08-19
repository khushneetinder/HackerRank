//
//  main.cpp
//  HRArrayLeftRotation
//
//  Created by Khushneet Inder Singh on 19/04/17.
//  Copyright © 2017 Khushneet Inder Singh. All rights reserved.
//

#include <vector>
#include <iostream>

using namespace std;

vector<int> array_left_rotation(vector<int> a, int count, int steps) {
    vector<int> toBeMoved;
    for(int i = 0; i < steps; ++i) {
        toBeMoved.push_back(a[0]);
        a.erase(a.begin());
    }
    a.insert(a.end(), toBeMoved.begin(), toBeMoved.end());
    return a;
}


int main(){
    int count = 5;
    int steps = 2;
    
    vector<int> a = {1,2,3,4,5};
    vector<int> output = array_left_rotation(a, count, steps);
    for(int i = 0; i < count;i++)
        cout << output[i] << " ";
    cout << endl;
    
    return 0;
}
