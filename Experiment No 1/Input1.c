#include<stdio.h>
int main()
{
 	int fact=1,n=5;
	for(int i=1;i<=n;i++)
	{
		fact=fact*i;
	}
	printf("Factorial of 5 = %d",fact);
}
