function [H,delta] = hurwitz(p)
%HURWITZ  Hurwitz matrix.
%   [H,delta] = HURWITZ(p) returns the Hurwitz matrix H
%   for the polynomial p. The optional output argument delta 
%   contains all the principal minors. 
%
%   Example:
%      syms K
%      p = [1,K,2,5];
%      [H,delta] = hurwitz(p)
%
%   Author:
%      Ildeberto de los Santos Ruiz
%      idelossantos@ittg.edu.mx
n = numel(p)-1;
p1 = p(2:2:end);
p2 = p(1:2:end);
if isnumeric(p)
    H = zeros(n,n);
    delta = zeros(n,1);
else
    H = sym(zeros(n,n));
    delta = sym(zeros(n,1));
end
i = 0;
for k = 1:n
    if mod(k,2)
        H(k,i+[1:numel(p1)]) = p1;
    else
        H(k,i+[1:numel(p2)]) = p2;
        i = i + 1;
    end
end
for k = 1:n
    delta(k) = det(H(1:k,1:k));
end