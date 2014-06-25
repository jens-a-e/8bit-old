#include <stdio.h>

int main () {

  unsigned char name[] = {'J','e','n','s'};
  const int length = 4;

  printf("Name given %s\n",name);

  int i;

  for( i=0; i<length; i++) {
    name[i] = name[i] << 1;
  }

  printf("Name encoded %s\n",name);


  for( i=0; i<length; i++) {
    name[i] = name[i] >> 1;
  }

  printf("Name de-coded %s\n",name);

  return 0;
}
