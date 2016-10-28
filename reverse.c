int reverse(int x) {
    int y = 0,y2=0;
    int bit_number=0,bit_check=0;
    int temp =x;
    while(x!=0)
    {
        y = y*10+x%10;
        if(y > INT_MAX || y < INT_MIN)
            return 0;
        x=x/10;
        bit_number++;
        
    }
    if(bit_number<10)
        return y;
    else
    {
        while(temp!=0)
        {
            if(bit_check==9 & y2 > INT_MAX/10 || bit_check==9 & y2 < INT_MIN/10)
                return 0;
            y2 = y2*10+temp%10;
            temp=temp/10;
            bit_check++;
        
        }
        return y;
    }
    
}
