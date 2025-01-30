#include<ctype.h>
#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int count,n=0;
char production[20][20];
char first[30];

void findfirst(char c)
{
 for(int j=0;j<count;j++)
 {
  if(production[j][0] == c)
  {
   if(!isupper(production[j][2]))
   {
    first[n++]=production[j][2];
   }
   else
   {
    findfirst(production[j][2]);
   }
  }
 }
}
int main()
{
 int processed,ptr=-1,jump=0;
 char done[count];
 char c;
 printf("Enter no of production :");
 scanf("%d",&count);
 printf("Enter the productions : \n");
 for(int i=0;i<count;i++)
 {
  scanf("%s",production[i]);
 }
 for(int k=0;k<count;k++)
 {
  c = production[k][0];
  processed = 0;
  for(int key=0;key <= ptr;key++)
  {
   if(c == done[key])
   {
    processed = 1;
   }
  }
  if(processed == 1)
  {
   continue;
  }
  findfirst(c);
  ptr += 1;
  done[ptr] = c;
  printf("\n First(%c) = {",c);
  for(int i=0+jump;i<n;i++)
  {
   if(i != n-1)
   {
    printf("%c",first[i]);
   }
   else
   {
    printf("%c",first[i]);
   }
  }
  printf("}\n");
  jump = n;
 }
}
