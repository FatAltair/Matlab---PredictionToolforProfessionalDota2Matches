
fileX = load('DataTrain-Teams.txt');
filey = load('DataTrain-Result.txt');

X =fileX(:,:);
y = filey(:,:);

feature = sqrt(X(:,1).* X(:,2)); 
X = [X feature];

feature = X(:,1).^2;
X = [X feature2];

feature = X(:,2).^2;
X = [X feature3];

feature = X(:,1).* X(:,2); 
X = [X feature];

feature = X(:,2).*(sqrt(X(:,1))); 
X = [X feature];

[m, n] = size(X);

X = [ones(m, 1) X];

theta = zeros(n+1,1);

error  = theta;

alpha = 0.00001;
lambda = 0.001;

iterations = 100000;
currentIter = 1;

for iter = 1:iterations
    
Jsum = 0;
e = 1;

for cost = 1:m
           
    g = 1 / (1 + (exp(-X(e,:) * theta)));
      
    J1 = -y(e) * log(g);
    
    J2 = (1 - y(e)) * log(1 - g);
    
    Jsum = Jsum + J1 - J2;
  
    e = e + 1;

end

sumTheta = theta.^2;   
q = sum(sumTheta); 

J = (Jsum/m) + ((lambda.* q)/(2.* m)); 

o = 1;

for section = 1:n+1
    v = 1;
    
for gradientDesc = 1:m
              
     g = 1 / (1 + (exp(-X(v,:) * theta))); 
     
     error(o) = error(o) + (g - y(v)).* X(v,o);
     
     v = v + 1;
     
end
error(o) = (error(o)/m) + ((lambda/m).* theta(o));
o = o + 1;
end
i = 1;
for update = 1:n+1
    
       theta(i) = theta(i) -  (alpha.* error(i)); 
       
       i = i + 1;
end

%hold on;
%plot(currentIter,J);
%xlabel('iterations');
%ylabel('Cost');

%currentIter = currentIter + 1;

%fprintf('theta: ');
%fprintf('%f\n',theta);

end