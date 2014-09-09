% file name: unit step.m
% the unit step function is a function of time 't'
% Usage y = ustep(t)
%
% ustep(t) = 0 ,    if t < 0
% ustep(t) = 1 ,    if t >= 1


function y = ustep(t)
    y = (t>0);
end
