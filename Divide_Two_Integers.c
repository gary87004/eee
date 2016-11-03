//11/3
// 主要利用 bitwise operation 
// 注意正負號

int divide(int dividend, int divisor) {
    if(dividend == INT_MIN && divisor == -1)
        return INT_MAX;

    
    int sign = 0;
    if((dividend<0) ^ (divisor < 0))
        sign =-1;
    else
        sign = 1;
    long dividend_long = labs((long)dividend);
    long divisor_long = labs((long)divisor);
    int result = 0;
    while(dividend_long >= divisor_long)
        {
            long temp = divisor_long,times = 1;
            while(dividend_long - (temp<<1) >= 0)
            {
                temp <<=1;
                times <<=1;
            }
            dividend_long -=  temp;
            result += times;
        }
    if(sign<0)
        return -result;
    else
        return result;
}
