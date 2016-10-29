//10/29
int find_digit(int n)
    {
        int p=1;

        while(n > p*9*pow(10,p-1))
            {
                n = n-p*9*pow(10,p-1);
                p++;
            }
        int digit_pos = n%p; //決定是該數字的第幾位數 1為第一位 2為第二位... 0為最後一位
        int Num_pos =0;
        if(digit_pos!=0)
            {
            Num_pos = n/p +1;
            }
        else
            {
            Num_pos = n/p;  //決定是從"頭"數第幾個數字
            }
            
        int Number = pow(10,p-1) + (Num_pos-1);
        int result=0;
        if(digit_pos!=0)
            {
            result = Number/pow(10,p-digit_pos);
            result = result%10;
            }
        else
            result = Number%10;
        return result;
    }
