// stdafx.h : 標準のシステム インクルード ファイルのインクルード ファイル、または
// 参照回数が多く、かつあまり変更されない、プロジェクト専用のインクルード ファイル
// を記述します。
//

#pragma once

#include "targetver.h"

#include <stdio.h>
#include <tchar.h>



// TODO: プログラムに必要な追加ヘッダーをここで参照してください。
class Trace
{
public:
	Trace(){noisy = 0;}
	void print(char* s){if(noisy) printf("%s",s);}
	void on(){noisy = 1;}
	void off(){noisy = 0;}
private:
	int noisy;
};
/////////////////////////////////////////////////
class Trac
{
public:
	Trac(){noisy = 0; f = stdout};
	~Trac();
	Trac(FILE * ff){noisy = 0,f =ff;}
	void  print(char*  s)
	{
		if (noisy)
		{
			fprintf(f,"%s",s);
		}
	}
	void on() {noisy=1;}
	void off(){noisy=0;}
private:
	int noisy;
	FILE * f;
};
int _tmain()
{
	Trac t(stderr);
	t.print("begin main()\n");
	//main
	t.print("end main()\n");
}


struct machine_status
{
	String p;
	List<String> q;
	String s;
};
m.s = domach(m.p,dfile,m.q);
if (m.slength() == 0)
{
	sendfile = 1;
	if(m.q.length()==0)
		mii.remove();
	else
	{
		mil.replace(m);
	}
}
else
{
	keepfile  = 1;
	deadmach +m.p;
	mli.replace(m);
}

class String
{
public:
	String();
	~String();
	String& operator = (const sscanf& s)


private:
	char* data;
};
//都给自己自身赋值时指针冲突
//String& String::operator=(const String& S)
//{
//	deelte []data;
//	data = new char[strlen(s.data)+1];
//	strcpy(data,S.data);
//	return *this;
//}
//1
String& String::operator=(const String& s)
{
	if(&s != this)
	{
		delete[] data;
		data = new char[strlen(s.data)+1];
		strcpy(data,s.data);
	}
	return * this;
}
//2 现将旧值保存起来，然后将新的值
String& Strign::operator=(const String& s)
{
	char* newdata = new char[strlen(s.data)-1];
	strcpy(newdata,s.data);
	delete []data;
	data = newdata;
	return * this;
}