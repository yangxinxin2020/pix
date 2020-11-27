// stdafx.h : 標準のシステム インクルード ファイルのインクルード ファイル、または
// 参照回数が多く、かつあまり変更されない、プロジェクト専用のインクルード ファイル
// を記述します。
//
#pragma once
#include "targetver.h"
#include <stdio.h>
#include <tchar.h>
class MyClass
{
public:
	MyClass(char * pData = nullptr);
	MyClass(const MyClass& str);


	~MyClass(void);


private:
	char* m_pDate;
};

MyClass& MyClass::operator=(const MyClass &str)
{
	if(this  = &str)
		return *this;
	delete []m_pData;
	m_pData = NULL;
	m_pData = new char[strlen(str.m_pData)+1];
	strcpy(m_pData,str.m_pData);
	return * this;

};

// TODO: プログラムに必要な追加ヘッダーをここで参照してください。
MyClass& MyClass::operator =(cosnt MyClass &Str)
{
	if(this != &str)
	{
		MyClass strTemp(str);
		char* pTemp = strTemp.m_pData;
		strTemp.m_pData = m_pDate；
		m_pDate = pTemp；
	}
	return * this;
}

/**************************************************
数组
1	2	8	9
2	4	9	12
4	7	10	13
6	8	11	15
***************************************************/
//bool Find(int* mitrix，int rows,int colums,int number)
//{
//	boot found  = false;
//	if(mitrix != NULL && rows >0 && columns>0)
//	{
//		int row = 0;
//		int column = columns-1;
//		while (row<rows && column >=0)
//		{//按照行存储
//			if(mitrix[row*columns+column] == number)
//			{
//				found  =true;
//				break;
//			}
//			else if(matrix[row * columns +column] > number)
//			{
//				--column;
//			}
//			else
//				++row;
//		}
//	}
//}
bool Find(int *mit,int rs，int cs,int num)
{
	static_assert (mit != NULL);
	bool find  = false;
	int i=0;
	int j = cs-1;
	while (i<rs && j>=0)
	{
		if(mit[i*cs+j]==num)
		{
			find = true;
			break;
		}
		else if(mit[i*cs +j]>num)
		{
			--j;
		}
		else
			++i;
	}
}
/**************************************************
"We are Happy"--->"We%20are%20Happy"
            p1					  p2
***************************************************/
/**length为字符数组string的总容量***/
void replace(char  string[],int lenght)
{
	if(string = NULL && lenght <=0)
	{
		return;
	}
	int originlength=0;
	int numblack = 0;
	int i = 0;
	while (string[i] != '\0')
	{
		++originlength;
		if(string[i] = ' ')
			++numblack;

		++i;
	}
	int newlength = originlength + numblack*2;
	if (newlength >lenght)
		return;
	int indexofOriginal = originlength;
	int indexofNew  = newlength;
	while (indexofOriginal >=0 && indexofNew >indexofOriginal)
	{
		if (string[indexofOriginal]==' ')//遇到空格时将indexofNew往前移三个，然后接着indexofOriginal继续往前移动
		{
			string[indexofNew--] = '0';
			string[indexofNew--] = '2';
			string[indexofNew --]= '%';
		}
		else
		{
			string[indexofNew --] = string[indexofOriginal];
		}
		--indexofOriginal;
	}
}
/*************************************************
1 4 6 10 
2 4 6 7
合并
算法思想：将其从后往前移动
*************************************************/
////1\创建新的数组
void  Sort(int a[],int b[],int c[],int num1,int num2)
{
	int i=0;
	int j=0;
	while (i<num1 && j<num2)
	{
		if(a[i]<b[j])
		{
			c[i+j] = a[i];
		}
		c[i+j] = b[j];
	}
	while (i< num1)
	{
		c[i+j] = a[i];
		++i;
	}
	while (j<num2)
	{
		c[i+j] = b[j];
		++j;
	}
}
////2\不创建新的数组
void Sort1(int a[],int b[],int num1,int num2,int m,int n)
{
	int i = m-1;
	int j = n-1;
	int max = m+n-1;
	while (i>=0 && j>=0)
	{
		if (a[i]>b[j])
		{
			a[max] = a[i];
			--i;
			--max;
			continue;
		}
		else
		{
			a[max] = b[j];
			--j;
			--max;
		}
	}
	while (j>=0)
	{
		a[max] = b[j];
		--j;
		--max;
	}
}
/*******************************************************
链表：链表的定义
struct ListNode
{
	int m_nValue;
	ListNode *m_pNext;
};
*******************************************************/
struct ListNode
{
	int m_nValue;
	ListNode *m_pNext;
};
/////链表的末尾添加一个节点
void AddToTial(ListNode **pHead,int value)
{
	ListNode* pNew = new ListNode();
	pNew->m_nValue  = value;
	pNew->m_pNext  = NULL;
	if(*pHead == NULL)
	{
		*pHead = pNew;
	}
	else
	{
		ListNode* pNode  = *pHead;
		while (pNode->m_pNext != NULL)
		{
			pNode = pNode->m_pNext;
		}
		pNode->m_pNext = pNew;
	}
}
/////链表的末尾删除一个节点
////pHead  a	b	c	d	e	f	g	h NULL
void RemoveNode(ListNode **pHead,int value)
{
	if (pHead == NULL || *pHead ==NULL)
	{//头结点为空,返回
		return;
	}
	ListNode* pToBeDeleted =NULL;
	if ((*pHead)->m_nValue == value)
	{//删除头结点后，将新的头结点换为pHead->m_pNext
		pToBeDeleted =*pHead;
		*pHead = (*pHead)->m_pNext;
	}else
	{
		ListNode* pNode = *pHead;
		while (pNode->m_pNext != NULL && pNode->m_pNext->m_nValue != value)
		{//找到删除的值的前一个位置  pNode  element of deleted
			pNode = pNode->m_pNext;
		}
		if (pNode->m_pNext != NULL && pNode->m_pNext->m_nValue == value)
		{//pNode  element  element_next
		//   |      NULL         |
			pToBeDeleted = pNode->m_pNext;//将删除的指针指向要删除的节点
			pNode->m_pNext = pNode->m_pNext->m_pNext;
		}
	}
	if (pToBeDeleted !=NULL)
	{	//将节点删除，指向空，预防空指针野指针
		delete pToBeDeleted;
		pToBeDeleted = NULL;
	}
}
///////////////////////////////////////////////////////////////////////////////
//从尾到头打印单链表：将输入存入到栈中
///////////////////////////////////////////////////////////////////////////////
void PrintListReverse(ListNode* pHead)
{
	std::stack<ListNode> ndoes;
	ListNode* pNode = pHead;
	while (pHead != NULL)
	{
		nodes.push(pNode);
		pNode = pNode->m_pNext;
	}
	if (! nodes.empty)
	{
		pNode = nodes.Top();
		printf("%d\t",pNode->m_vaule);
		nodes.pop();
	}
}
void PrintList(ListNode* pHead)
{
	std::stack<ListNode> nodes;
	ListNode* pNode = pHead;
	while (pHead !=NULL)
	{
		nodes.push(pNode);
		pNode = pNode->m_pNext;
	}
	if (！ nodes.empty)
	{
		pNode = nodes.Top();
		printf("%d\t"，pNode->m_value);
		nodes.pop();
	}
	
}
void Print(ListNode *pHead)
{
	if(pHead != NULL)
	{
		if (pHead->m_pNext != NULL)
		{
			PrintListReverse(pHead->m_pNext);
		}
		printf("%d\t",pHead->m_nValue);
	}
}
/////////////////////////////////////////////////////////////
/**树**、
三种遍历：前序遍历 中序遍历 后序遍历
*
       10
	6     14
  4  8  12  16
/////////////////////////////////////////////////////////////
/*
前序遍历：10 6 4 8  14 12 16
中序遍历：4  6 8 10 12 14 16
后序遍历：4  8 6 12 16 14 10
宽度优先遍历：10 6 14 4 8 12 16
二叉搜索树在O(Logn)单位时间内根据数值在二叉树中找到一个值
重构二叉树：题目 输入某二叉树的前序遍历和中序遍历的结果，请重构二叉树
二叉树节点的定义如下
*/
struct BinaryTreeNode
{
	int				 m_nValue;
	BinaryTreeNode*	 m_pLeft;
	BinaryTreeNode*	 m_pRight;
};
//前序遍历：1 2 4 7 3 5 6 8 中序遍历4 7 2 1 5 3 8 6
/*********************************
        1
	 2     3 
   4    5    6  
    7      8   
**********************************/
void SortAge(int ages[],int length)
{
	if(ages == NULL || length <=0)
		return;
	const int oldestAge = 99;
	int timesOfAge[oldestAge+1];
	for (int i = 0; i < oldestAge; i++)
	{
		timesOfAge[i]=0;
	}
	for (int i = 0; i < oldestAge; i++)
	{
		int age = ages[i];
		if (age<0 || age>oldestAge)
		{	throw new std::exception("age out of range!");
			++timesOfAge[age];
		}
	}

	int index = 0;

	for (int i = 0; i < oldestAge; i++)
	{
		for (int i = 0; i < timesOfAge; i++)
		{
			ages[index] = i;
			++index;
		}

	}

}
/*************************************
Fibonacai数列 0 1 2 3 5 8 
*************************************/
long long Fibonacai(unsigned n)
{
	int result[2] = {0,1};
	if(n<2)
		return result[n];
	long long fibNMinuseOne = 1;
	long long fibNMinuseTwo = 0;
	long long fibN = 0;
	for (unsigned int i = 2;i <=n; ++i)
	{
		fibN  = fibNMinuseOne + fibNMinuseTwo;
		fibNMinuseTwo = fibNMinuseOne;
		fibNMinuseOne = fibN;
	}
	return fibN;
}
///////////////////////////////////////////////////////
//位运算
//与 、或、异或^相同为0 相异为1
//把一个数与它减去1之后相与，相当于是将二进制表示的值的最后边的1变为0
int NumberOf1(int n)
{
	int count = 0;
	while (n)
	{
		++count;
		n = (n-1) &n;
	}
	return count;
}
////////////////////////////////////////////
//
//a^n{  a^n/2 * a^n/2,   a 为偶数
//       a^(n-1)/2 * a(n-1)/2 * a 
//
////////////////////////////////////////////
double PowerWithUnsignedExponent(double base,unsigned int expont)
{
	if(expont == 0)
		return 1;
	if(expont  == 1)
		return base;
	double result = PowerWithUnsignedExponent(base,expont>>1);
	result *= result;
	if (expont & 0X1 == 1)
	{ 
		result *=base;
	}
	return result;
}