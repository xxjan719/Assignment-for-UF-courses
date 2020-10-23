function [output_code]=TRAIN(n,k,input_code)
w=[];
ws=[normrnd(0,(1/k),[k k])];
Hidden_1=ws*input_code;
hidden_code=1./(1+exp(-1.*Hidden_1));
disp(hidden_code)
for i=1:n-2
    w=normrnd(0,(1/k),[k k]);
    Hidden_2=w*hidden_code;
    hidden_code_middle=1./(1+exp(-1.*Hidden_2));
    disp(hidden_code_middle)
end
ww=normrnd(0,(1/k),[k k]);
Hidden_end=ww*hidden_code_middle;
output_code=1../(1+exp(-1.*Hidden_end));
end
