var reverseString = function(s) 
    {
        var separate = s.split('');
        var reverse=[];
        for (var i = 0;i<separate.length;i++)
            {
                reverse[i] =  separate[separate.length-1-i];
            }
            return reverse.join('');
    };
