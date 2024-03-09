function [X_train, y_train, X_test, y_test] = split_dataset(X, y, percent)
  
[m,n] = size(X);
percent = percent * m;
X_train = zeros(percent,n);
X_test = zeros(m-percent,n);
y_train = zeros(percent,1);
y_test = zeros(m-percent,1);
for i=1:percent

y_train(i,1)= y(i,1);

for j=1:n
  X_train(i,j) = X(i,j);
endfor

endfor

for i=1:m-percent

y_test(i,1)= y(i+percent,1);

for j=1:n
  X_test(i,j) = X(i+percent,j);
endfor

endfor

endfunction
