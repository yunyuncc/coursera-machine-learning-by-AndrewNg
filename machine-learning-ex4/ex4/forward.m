function [p a3 z3 a2 z2 a1] = forward(X,Theta1,Theta2)
m = size(X,1);
X = [ones(m,1) X]; %(5000*401)
z2 = X*Theta1'; %(5000*401)* (25*401)' = (5000*25)
a2 = sigmoid(z2); %(5000*25)
a2 = [ones(m,1) a2];%(5000*26)
z3 = a2*Theta2';%(5000*26) * (10*26)' = (5000*10)
a3 = sigmoid(z3);%(5000*10)
[pp,I] = max(a3,[],2);%get each row's max val and index
p = I;
end