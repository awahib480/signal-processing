% Generate a complex‐valued matrix
% a = ones (1,10)+ i* (1 : 10)
% and calculate the absolute square of all elements of this matrix.

a = ones(1,10) + 1i*(1:10);
abs_square = abs(a).^2
