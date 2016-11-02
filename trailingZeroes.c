//11/2

int trailingZeroes(int n) {
   int five_num=0;
    while(n>0){
        five_num+=n/5;
        n/=5;
    }
    return five_num;

    
}
