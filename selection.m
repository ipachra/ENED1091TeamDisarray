function [ the_list ] = selection( the_list, varargin )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
t=[1:length(the_list)];
for m=1:(length(the_list)-1)
smallest = the_list(m);
swap=0;
for k=(m+1):length(the_list)
    if the_list(k)<smallest
        smallest=the_list(k);
        small_loc=k;
        swap=1;
    end
    if swap==0
        small_loc=m;
    end
end

for n=1:(small_loc-m)
   the_list(small_loc-n+1)=the_list(small_loc-n);
end
the_list(m)=smallest;
scatter(t,the_list,'rd')
drawnow
end