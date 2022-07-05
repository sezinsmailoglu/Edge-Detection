A=ReadMyImage('reversedeneme.jpg');
figure; 
imshow(A,[ ]);
hn = [0 1 1 ; -1 0 1 ; -1 -1 0];
    [Hy,Hx] = size(hn)
    [My,Mx] = size(A);
    y = zeros(Hy+My-1,Hx+Mx-1);
    for k = 0:Hy-1
        for l = 0:Hx-1
            y(k+1:k+My,l+1:l+Mx) = y(k+1:k+My,l+1:l+Mx) + hn(k+1,l+1).*A;
        end
    end  
 imshow (y, []);
 hn - 1 
 


