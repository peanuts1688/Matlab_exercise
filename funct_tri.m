% file name: funct_tri.m
% A standard triangle function of base -1 to 1
  
  function y = funct_tri(t)

% Usage y = funcr_tri(t)
% t = input variable i

  y = ((t>-1)-(t>1)).*(1-abs(t));
