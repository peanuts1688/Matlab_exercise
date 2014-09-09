% file name: siggraf.m
% plotting y(t) = exp(-t)sin(6(pi)t)u(t+1)
% To graph a signal, the first step is to determine 
% the x-axis and the y-axis to plot
% We can first decide the length of x-axis to plot
  t = [-2:0.01:3];      % "t" is from -2 to 3 in 0.01 increment
% Then evalutate the signal over the range of "t" to plot

y = exp(-t).*sin(10*pi*t).*ustep(t+1);
figure(1);
fig1 = plot(t,y);             % plot t vs y in figure 1
set(fig1, 'Linewidth', 2);    % choose a wider line-width
xlabel('\it t');              % use t to label
% x-axis
ylabel('{\bf y}({\it t})');    % use boldface 'y' to label y-axis
title('{\bf y}_{\rm time domain}');    
% can use subscript
