% file name sigtransf.m
% To apply a transform time-domain transformation on a signal
% y = g(t), simply redefine the x-axis
% a signal, the first step is to determine
% the x-axis and the y-axis to plot
% We can first decide the range of 't' for g(t)

  t = [-3:0.002:5];   

% Then evaluate the signal over the range of "t" to plot

  y = exp(-abs(t)/4).*(ustep(t)-ustep(t-4));

% figure 0
% Form the corresponding signal vector
% y=g(t) = exp(-t) sin(10(pi)*t) [u(t)-u(t-4)]

  figure(1);
  subplot(221);
  fig0 = plot(t,y);
  set(fig0,'Linewidth',2);
  xlabel('\it t');              % italic 't' to label x-axis
  ylabel('{\bf y}({\it t})');   % use boldface 'y' to label y-axis
  title('original signal y(t)');


% figure 1 : scale in time
% Now we evaluate the dilated signal
  t1 = t*2;     % scale in time

% Form the correpsonding signal vector  
  y1 = exp(-abs(t1)/4).*(ustep(t1)-ustep(t1-4));
  figure(1);
  subplot(222);
  fig1 = plot(t,y1);
  set(fig1,'Linewidth',2);
  xlabel('\it t');              % italic 't' to label x-axis
  ylabel('{\bf y}({\it t})');   % use boldface 'y' to label y-axis
  title('original signal y(2t)');


% figure 2 : shift in time
% Now we evaluate the dilated signal
  t2 = t+2;     % shift in time

% Form the correpsonding signal vector  
  y2 = exp(-abs(t2)/4).*(ustep(t2)-ustep(t2-4));
  figure(1);
  subplot(223);
  fig2 = plot(t,y2);
  set(fig2,'Linewidth',2);
  xlabel('\it t');              % italic 't' to label x-axis
  ylabel('{\bf y}({\it t})');   % use boldface 'y' to label y-axis
  title('time shifting y(t+2)');


% figure 3 : time-reversal + scale in time
% Now we evaluate the dilated signal
  t3 = 2 - t*2;     % time-reversal + scale in time

% Form the correpsonding signal vector  
  y3 = exp(-abs(t3)/4).*(ustep(t3)-ustep(t3-4));
  figure(1);
  subplot(224);
  fig3 = plot(t,y3);
  set(fig3,'Linewidth',2);
  xlabel('\it t');              % italic 't' to label x-axis
  ylabel('{\bf y}({\it t})');   % use boldface 'y' to label y-axis
  title('y(2-2t)');


  subplot(221); 
  axis([-3 5 -0.5 1.5]);
  grid;
  subplot(222); 
  axis([-3 5 -0.5 1.5]);
  grid;
  subplot(223); 
  axis([-3 5 -0.5 1.5]);
  grid;
  subplot(224); 
  axis([-3 5 -0.5 1.5]);
  grid;


% figure 4 : time-reversal + scale in time
% Now we evaluate the dilated signal
  t4 = 2 - t;     % time-reversal + scale in time

% Form the correpsonding signal vector  
  y4 = exp(-abs(t4)/4).*(ustep(t4)-ustep(t4-4));
  figure(2);
  subplot(221);
  fig4 = plot(t,y4);
  set(fig4,'Linewidth',2);
  xlabel('\it t');              % italic 't' to label x-axis
  ylabel('{\bf y}({\it t})');   % use boldface 'y' to label y-axis
  title('y(2-t)');
  subplot(221); 
  axis([-3 5 -0.5 1.5]);
  grid;


% figure 5 : time-reversal + scale in time
% Now we evaluate the dilated signal
  t5 = (-2)*t;     % time-reversal + scale in time

% Form the correpsonding signal vector  
  y5 = exp(-abs(t5)/4).*(ustep(t5)-ustep(t5-4));
  figure(2);
  subplot(222);
  fig5 = plot(t,y5);
  set(fig5,'Linewidth',2);
  xlabel('\it t');              % italic 't' to label x-axis
  ylabel('{\bf y}({\it t})');   % use boldface 'y' to label y-axis
  title('y(-2t)');
  subplot(222); 
  axis([-3 5 -0.5 1.5]);
  grid;


% figure 6 : time-reversal + scale in time
% Now we evaluate the dilated signal
  t6 = 1-2*t;     % time-reversal + scale in time

% Form the correpsonding signal vector  
  y6 = exp(-abs(t6)/4).*(ustep(t6)-ustep(t6-4));
  figure(2);
  subplot(223);
  fig6 = plot(t,y6);
  set(fig6,'Linewidth',2);
  xlabel('\it t');              % italic 't' to label x-axis
  ylabel('{\bf y}({\it t})');   % use boldface 'y' to label y-axis
  title('y(1-2t)');
  subplot(223); 
  axis([-3 5 -0.5 1.5]);
  grid;
