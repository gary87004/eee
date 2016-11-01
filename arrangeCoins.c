//11/1
int arrangeCoins(int n) {
    int row_num = 1;
    if(n==1)
        return 1;
    while(n - row_num > 0)
        {
            n = n - row_num;
            row_num++;
            
            
        }
    if(n - row_num < 0)
        return row_num-1;
    else
        return row_num;
    
}
