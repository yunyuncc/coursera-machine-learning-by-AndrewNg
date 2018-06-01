function [p a3 z3 a2 z2] = forward(X,Theta1,Theta2)
m = size(X,1);
X = [ones(m,1) X];
z2 = X*Theta1';
a2 = sigmoid(z2);
a2 = [ones(m,1) a2];
z3 = a2*Theta2';
a3 = sigmoid(z3);
[pp,I] = max(a3,[],2);
p = I;
end