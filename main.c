//
//  main.c
//  C_thesis
//
//  Created by  Yo on 2016/10/27.
//  Copyright © 2016年  Yo. All rights reserved.
//

#include <stdio.h>
#include <math.h>
#include <stdbool.h>

bool isPalindrome(int n)
    {
        if(n<0)
            return false;
        int digit=0;
        int time = 0;
        int array[10]={0};
        while(n>0)
            {
            digit = n%10;
            array[time] = digit;
            n = n/10;
            time++;
            }
        int b[10]={0};
        for(int j=0;j<time;j++)
            {
                b[j] = array[time-1-j];
            }
        
    
        for(int j=0;j<time;j++)
            {
            if(array[j]!=b[j])
                return false;

            }
        return true;
    }

int main(void) {

    int aa=0;
    bool result=true;

    
    result = isPalindrome(10101);
    printf("%d\n",result);

    
    
    return 0;
}
