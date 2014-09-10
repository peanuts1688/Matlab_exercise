% file name: PfuncEx.m
% This example generates a periodic signal, plots the signal
% and evaluates the averages signal power in y_power and signal 
% energy in 1 period T: y_energyT

  echo off;
  clear;
  clf;

% To generate a periodic signal g_T(t),
% we can first decide the signal within the period of 'T' for g(t)
  
  Dt = 0.002;     % time interval (to sample the signal)
  T = 6;          % period = T
  M = 3;          % M periods of the signals (negative and positive)
  t = [0:Dt:T-Dt];    % "t" goes for one period [0,T] in Dt increment
% Then evaluate the signal over the range of "T"
  y = exp(-abs(t)/2).*sin(2*pi*t).*(ustep(t)-ustep(t-4));
  y3_periodic = [];
  y3 = ustep(t-4);
% Multiple periods can now be generated.
  time = [];
  y_periodic = [];

  for i = -M:M-1,
    time = [time i*T+t];      % starting from (-3)*6+(0Dt) , (-3)*6+(1Dt) , (-3)*6+(2Dt) , (-3)*6+(3Dt) ... (-3)*6+(T-Dt)
                              %               (-2)*6+(0Dt) , (-2)*6+(1Dt) , (-2)*6+(2Dt) , (-1)*6+(3Dt) ... (-2)*6+(T-Dt)
                              % ....
                              %               (2)*6+(0Dt) , (2)*6+(1Dt) , (2)*6+(2Dt) , (2)*6+(3Dt) ... (2)*6+(T-Dt)
    y_periodic = [y_periodic y];      % feeding inputs t to y, repeat for (-M) ~ M times, make PERIODICS
    y3_periodic = [y3_periodic y3];
  end

  figure(1);
  subplot(221);
  fy = plot(time, y_periodic);
  hold on;
  fig3 = plot(time, y3_periodic,':r');
  set(fy,'Linewidth',2);
  xlabel('\it t');
  title('y = exp(-abs(t)/2).*sin(2*pi*t).*(ustep(t)-ustep(t-4))');
  subplot(221);
  axis([-20 20 -1 1.2]);
  grid;


% y1: exp(-abs(t)/2);  
  subplot(222);
  y1 = exp(-abs(t)/2);
  y1_periodic = [];
  for i = -M:M-1,
    y1_periodic = [y1_periodic y1];
  end
  fig1 = plot(time, y1_periodic);
  set(fy,'Linewidth',2);
  xlabel('\it t');
  subplot(222);
  axis([-20 20 -1 1.2]);
  grid;
  title('exp(-abs(t)/2)');


% y2: sin(2*pi*t);  
  subplot(223);
  y2 = sin(2*pi*t);
  y2_periodic = [];
  for i = -M:M-1,
    y2_periodic = [y2_periodic y2];
  end
  fig1 = plot(time, y2_periodic);
  set(fy,'Linewidth',2);
  xlabel('\it t');
  subplot(223);
  axis([-20 20 -1.2 1.2]);
  grid;
  title('sin(2*pi*t)');


% y3: ustep(t)-ustep(t-4);  
  subplot(224);
  % y3 = ustep(t)
  % y3 = ustep(t-4)
  y3 = ustep(t)-ustep(t-4);
  y3_periodic = [];
  for i = -M:M-1,
    y3_periodic = [y3_periodic y3];
  end
  fig1 = plot(time, y3_periodic);
  set(fy,'Linewidth',2);
  xlabel('\it t');
  subplot(224);
  axis([-20 20 -1 1.2]);
  grid;
  title('ustep(t)-ustep(t-4)');

% echo on
% Compute average power
  y_power = sum(y_periodic*y_periodic')*Dt/(max(time)-min(time))    % for vector squaring, y*(y') Matrix transpose, from horizontal to vertical
% Compute signal energy in 1 period T
  y_energyT = sum(y.*conj(y))*Dt


