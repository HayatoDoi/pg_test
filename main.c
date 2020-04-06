#include <stdio.h>
#include "a.h"
#include "b.h"

//void _start(void){}

int main()
{
	int iterations = 100000;
	while(iterations--)
	{
		a();
		b();

		int i=0,g=0;
		while(i++<30000)
		{
			g+=i;
		}
	}
	return 0;
}
