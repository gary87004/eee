在不考慮overflow的前提下 可以用兩行解決
要解決 overflow 可以把 y 型態設為8byte的long
或者是設計一套機制 來偵測 是否會發生overflow


int reverse(int x) {
    int y = 0,y2=0;
    int bit_number=0,bit_check=0;
    int temp =x;
    while(x!=0)
    {
        y = y*10+x%10;
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
