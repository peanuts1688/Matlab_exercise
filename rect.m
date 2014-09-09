% file name: rect.m
% The rectangular function is a function of time 't'
% 
% Usage y = rect(t)
% t - must be real-valued and can be a vector or a matrix
% 
% rect(t) = 1,    if |t| < 0.5
% rect(t) = 0,    if |t| > 0.5

function y = rect(t)
  y = (sign(t+0.5)-sign(t-0.5) >0);
end  
