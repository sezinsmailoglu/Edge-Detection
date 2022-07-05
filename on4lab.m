hn = [0 0 0 0 0 0 0;
      0 0 1 2 3 0 0;
      0 0 4 5 6 0 0;
      0 0 7 8 9 0 0;
      0 0 0 0 0 0 0];
xn = [0 0 0 0 0 0;
      0 0 5 10 0 0;
      0 0 24 -09 0 0;
      0 0 0 0 0 0];
 Mx1 = 2;
 Mx2 = 4;
 Nx1 = 3;
 Nx2 = 5;
 Mh1 = 2;
 Mh2 = 3;
 Nh1 = 3;
 Nh2 = 4 ;
 
    [Hy,Hx] = size(hn);
    [My,Mx] = size(xn);
    
    y = zeros(Hy+My-1,Hx+Mx-1);
    for k = 0:Hy-1
        for l = 0:Hx-1
            y(k+1:k+My,l+1:l+Mx) = y(k+1:k+My,l+1:l+Mx) + hn(k+1,l+1).*xn;
        end
    end  
y

lastindex = [Mh2 + Mx2-1,Nx2 + Nh2-1]
