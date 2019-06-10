
fileX = load('DataTrain-Teams.txt');
filey = load('DataTrain-Result.txt');
 
theta = [0.034127;0.112702;0.052549;0.065789;-0.000875;0.005770;0.012836;-0.149190];


X = fileX(:,:);
y = filey(:,:);

% pos = find(y==1); neg = find(y == 0);
% % Plot Examples 
% figure; hold on;
% plot(X(pos, 1), X(pos, 2), 'k+', ...
%     'MarkerSize', 7);
% plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', ...
%     'MarkerSize', 7);

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
g = size(m);
e = 1;

for cost = 1:m
g(e) = 1 / (1 + (exp(-X(e,:) * theta)));

e = e + 1;

end 

plot(y,g, 'rx', 'MarkerSize', 10);
xlabel('Real result');
ylabel('Hypothesis');

p = zeros(m, 1);

e = 1;
g = 0;

for prediction = 1:m
    
   g = 1 / (1 + (exp(-X(e,:) * theta))); 
    
    if g >= 0.5 
        
        p(e) = 1;

    else
        
        p(e) = 0;
        
    end
    
fprintf('p: %f\n', p(e));
    
e = e + 1;

accuracy = sum(double(p == y)) * 100;
fprintf('Train Accuracy: %f\n', accuracy/m);

end