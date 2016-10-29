10/27

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
