%1000000000  1
%0100000000  2
%0010000000  3
%0001000000  4
%0000100000  5
%0000010000  6
%0000001000  7
%0000000100  8
%0000000010  9
%0000000000  0

function y = labelConv(label, k)
  m = size(label,1);
  y = zeros(m, k);
  for i = 1:m 
    if label(i) != 10
       y(i,label(i)) = 1;
    else
       y(i,10) = 1;
    end
  endfor
end
