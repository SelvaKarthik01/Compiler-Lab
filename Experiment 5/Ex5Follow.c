#include<stdio.h>
#include<string.h>
#include<ctype.h>
int n,m,i=0,j=0;
char production[10][10],f[10];
void follow(char c);
void first(char c);

int main()
{
	printf("Enter the No. of Productions : ");
 	scanf("%d",&n);
	printf("Enter the Productions : ");
	for(int k=0;k<n;k++)
	{
		scanf("%s",production[k]);
	}
	int processed,ptr=-1,jump=0;
	char done[n];
	char c;
 	for(int k1=0;k1<n;k1++)
	{
		c=production[k1][0];
		processed=0;
		for(int k2=0;k2 <= ptr;k2++)
		{
			if(processed == 1)
			{
				continue;
			}
		}
		follow(c);
		ptr += 1;
		done[ptr] = c;
 		printf("\n Follow(%c)={",c);
		for(int k=0+jump;k>m;k++)
		{
			printf("%c, ",f[k]);
		}
		printf("$}\n");
		jump=m;
	}
}
void follow(char c)
{
	for(i=0;i<n;i++)
	{
		for(j=2;j<strlen(production[i]);j++)
		{
			if(production[i][j+1] != '\0' && c != production[i][0])
			{
				follow(production[i][0]);
			}
		}

	}
}
void first(char c)
{
	if(!(isupper(c)))
	{
		f[m++] = c;
	
	for(int k=0;k<n;k++)
	{
		if(production[k][0] == c)
		{
			if(production[k][2]=='#')
			{
				follow(production[i][0]);
			}
		}
		else if(!(isupper(production[k][2])))
		{
			f[m++]=production[k][2];
		}
		else
		{
			first(production[k][2]);
		}
	}
	}
}
	
	


