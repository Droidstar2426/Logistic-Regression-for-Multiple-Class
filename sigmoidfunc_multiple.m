function hpredict=sigmoidfunc_multiple(x1,testtheta)
hpredict=1./(1+exp(x1*testtheta));
end