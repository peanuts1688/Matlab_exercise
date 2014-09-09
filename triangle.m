% file name: trangle.m
% The triangle function is a function of time 't' (non periodic)
% 
% trangle(t) = 1 - |t|,     if |t| < 1
% trangle(t) = 0            if |t| > 1
% 
% Usage y = trangle(t)
% t - must be real-valued and can be a vector or a matrix


function y = trangle(t)
  y = (1-abs(t)).*(t>=-1).*(t<1);   % how???
end
