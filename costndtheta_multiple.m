function [theta]=costndtheta_multiple(x1,ytrain,theta,alpha,iterations)
m=length(ytrain);
hcache=zeros(size(x1,2),1);
%J=zeros(iterations,1);
for i=1:iterations
    hpredict=sigmoidfunc(x1,theta);
    h=(hpredict-ytrain)';
    for j=1:size(x1,2)
        hcache(j)=theta(j)-alpha*(1/m)*h*x1(:,j);
    end
    for j=1:size(x1,2)
        theta(j)=hcache(j);
    end
end