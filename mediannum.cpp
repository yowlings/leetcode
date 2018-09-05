#include <iostream>
#include <vector>

#define MAX(a,b) a>b?a:b

using namespace std;

double findMedianSortedArrays(vector<int>& nums1, vector<int>& nums2)
{
    int index = 0;
    int n = nums1.size()+nums2.size();


    if(n%2==1)
    {
        double tmp1;
        while(index<=n/2)
        {
            if(!nums1.empty()&&!nums2.empty())
            {
                if(nums1.back()<=nums2.back())
                {
                    tmp1 = nums2.back();
                    nums2.pop_back();
                }
                else
                {
                    tmp1 = nums1.back();
                    nums1.pop_back();
                }
                if(index==n/2)
                {
                    return tmp1;
                }
                index++;
            }
            else if(!nums1.empty())
            {
                if(index==n/2)
                {
                    return nums1.back();
                }
                nums1.pop_back();
                index++;

            }
            else
            {
                if(index==n/2)
                {
                    return nums2.back();
                }
                nums2.pop_back();
                index++;

            }

        }
    }
    else
    {
        double a,b,tmp;
        while(index<n/2+1)
        {
            if(!nums1.empty()&&!nums2.empty())
            {
                if(nums1.back()<=nums2.back())
                {
                    tmp = nums2.back();
                    nums2.pop_back();
                }
                else
                {
                    tmp = nums1.back();
                    nums1.pop_back();
                }

                if(index==n/2-1)
                {
                    a=tmp;
                }
                if(index==n/2)
                {
                    b=tmp;
                }
                index++;
            }
            else if(!nums1.empty())
            {
                if(index==n/2-1)
                {
                    a=nums1.back();
                }
                if(index==n/2)
                {
                    b=nums1.back();
                }
                nums1.pop_back();
                index++;

            }
            else
            {
                if(index==n/2-1)
                {
                    a=nums2.back();
                }
                if(index==n/2)
                {
                    b=nums2.back();
                }
                nums2.pop_back();
                index++;
            }


        }
        return (a+b)/2;



    }



}

int main(int argc, char *argv[])
{
    int a[2] = {1,2};
    vector<int> v1(a,a+2);
    int b[4] = {3,4,5,6};
    vector<int> v2(b,b+3);
    cout<<findMedianSortedArrays(v1,v2)<<endl;

    return 0;
}
