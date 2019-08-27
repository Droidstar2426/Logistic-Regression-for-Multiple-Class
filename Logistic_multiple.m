clear all;
clc;
x=load('dataset.txt'); %load the dataset
x1=x(:,1:end-1);
y=x(:,end);
iterations=4000;
alpha=0.0000001;
x1=[ones(size(y,1),1) x1];
theta=zeros(size(x1,2),1);
uniinputs=unique(y);
for i=1:length(uniinputs)
 %ytrain=y;
ytrain=(y==uniinputs(i));
[theta]=costndtheta(x1,ytrain,theta,alpha,iterations);
final(:,i)=theta;
theta=zeros(size(x1,2),1);
end
%y1=load('testflower.txt');
%y2=y1(:,1:3);
y2=[1    0     0     0     0    16    16     6     6     6     5     4     0     0     0     0]; %load the testing dataset
for i=1:length(uniinputs)
 testtheta=final(:,i);
accuracy(i)=sigmoidfunc(y2,testtheta);
end
res=max(accuracy)
%for i=1:size(accuracy,1)
%if (accuracy(i)>0.49)
 %   accuracy(i)=1
%else
 %   accuracy(i)=0
%end
%end
