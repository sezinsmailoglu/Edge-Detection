function [x] = ReadMyImage(string)
x=double((imread(string)));
x=x-min(min(x));
x=x./max(max(x));
x=x-0.5;
end

