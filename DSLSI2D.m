function y = DSLSI2D(x,h)
[Mx My] = size(x);
[Hx Hy] = size(h);
y = zeros(Mx+Hx-1, My+Hy-1);
    for i = 0: Hy-1
        for j = 0:Hx-1
            y(i+1:i+My,j+1:j+Mx) = y(i+1:i+My,j+1:j+Mx) + h(i+1,j+1).*x;
        end 
    end 
end 