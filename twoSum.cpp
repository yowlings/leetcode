#include <iostream>
#include <vector>
using namespace std;

vector<int> twoSum(vector<int>&nums,int target)
{
    vector<int> result;
    result.push_back(-1);
    result.push_back(-1);
    for(int i=0;i<nums.size()-1;i++)
    {

        for(int j=i+1;j<nums.size();j++)
        {
            if(nums[i]+nums[j] == target)
            {
                result[0] = i;
                result[1] = j;
                return result;
            }
        }
    }
}

int main()
{
    vector<int> nums;
    nums.push_back(2);
    nums.push_back(7);
    nums.push_back(11);
    nums.push_back(5);
    int target = 16;
    cout << twoSum(nums,target)[0]<<":"<<twoSum(nums,target)[1] << endl;
    return 0;
}
