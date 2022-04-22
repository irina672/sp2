#include "stdint.h"
#include "stdio.h"





int main()
{
        int arr [10] = {89, 82, 84, 135, 73, 68, 26, 151, 53, 53};
        int m = 68;
        int sum = 0; 
        int s = 0;



        for (int i = 0; i<10; i++)
        {
                s = arr[i];
                if ((s & m) == m)
                {
                printf("%d", arr[i]);
                printf("\n");
                        sum = sum + arr[i];
                }
        }

        printf("%d", sum);
        printf("\n");

        return 0; 
}
