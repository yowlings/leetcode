#include <iostream>
#include <vector>
using namespace std;

struct ListNode
{
    ListNode* next;
    int val;
    ListNode(int x):val(x),next(NULL){}
};

ListNode* addTwoNumbers(ListNode *l1, ListNode *l2)
{

    ListNode *rp =new ListNode(0);
    ListNode *r =rp;

    int jump=0;
    rp->val = (l1->val+l2->val+jump)%10;
    jump = (l1->val+l2->val+jump)/10;
//    cout<<jump<<endl;

    while (l1->next!=NULL||l2->next!=NULL) {
        l1 = (l1->next!=NULL)?l1->next:new ListNode(0);
        l2 = (l2->next!=NULL)?l2->next:new ListNode(0);
//        ListNode tmp(0);
        rp->next = new ListNode(0);
        rp=rp->next;
        rp->val = (((l1!=NULL)?l1->val:0)+((l2!=NULL)?l2->val:0)+jump)%10;
        jump = (((l1!=NULL)?l1->val:0)+((l2!=NULL)?l2->val:0)+jump)/10;

    }

    if(jump!=0)
    {

        rp->next = new ListNode(0);
        rp->next->val = jump;

    }
    return r;



}
void printListNode(ListNode *node)
{
    while(node!=NULL)
    {
        cout<<node->val<<endl;
        node=node->next;
    }
}
int main()
{
    ListNode l1(9),l2(1),tmp(8);
    l1.next = &tmp;

    ListNode* r = addTwoNumbers(&l1,&l2);
    printListNode(r);



//    cout << twoSum(nums,target)[0]<<":"<<twoSum(nums,target)[1] << endl;
    return 0;
}
