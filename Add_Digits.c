// 11/4
// 也可以用 digital root 做

int addDigits(int num) {
    int result = 0;
    do  {
        result=0;
        while(num!=0)
            {
            result = result + num%10;
            num = num/10;
            }

        num = result;
        
    }
    while(result >= 10);
    return result;
}
