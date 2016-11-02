//11/2
// 若先把n!答案算出來再用%10的方法有可能會overflow
//最後面要產生0 需要 一個5跟一個2相乘
// 2隨便都有 所以我們計算有幾個5就可以了
// 100裡面有20個是5的倍數 其中又有4個是25 的倍數
int trailingZeroes(int n) {
   int five_num=0;
    while(n>0){
        five_num+=n/5;
        n/=5;
    }
    return five_num;

    
}
