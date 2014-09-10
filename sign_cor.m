% file name: sign_cor.m
clear

% To generate 6 signals x(t), g_1(t), ... g_5(t)
% of Example 2.6
% we can first decide the signal within the period of 'T' for g(t)

  Dt = 0.01;      % time increment Dt
  T = 6;          % time duration = T
  t = [-1:Dt:T];  % 't' goes between [-1, T] in Dt increment

% Then evaluate the signal over the range of 't' to plot

  x = ustep(t)-ustep(t-5);      % step from 1-5, 0 after 5
  g1 = 0.5*(ustep(t)-ustep(t-5));
  g2 = - (ustep(t)-ustep(t-5));
  g3 = exp(-t/5).*(ustep(t)-ustep(t-5));
  g4 = exp(-t).*(ustep(t)-ustep(t-5));
  g5 = sin(2*pi*t).*(ustep(t)-ustep(t-5));

  subplot(231);
  sig1 = plot(t,x,'k');
  xlabel('\it t');
  ylabel('\it x(t)');
  set(sig1, 'Linewidth',2);
  axis([-0.5 6 -1.2 1.2]);
  grid;
  
  subplot(232);
  sig2 = plot(t,g1,'k');
  xlabel('\it t');
  ylabel('\it g_1(t)');
  set(sig2, 'Linewidth',2);
  axis([-0.5 6 -1.2 1.2]);
  grid;

  subplot(233);
  sig3 = plot(t,g2,'k');
  xlabel('\it t');
  ylabel('\it g_2(t)');
  set(sig3, 'Linewidth',2);
  axis([-0.5 6 -1.2 1.2]);
  grid;

  subplot(234);
  sig4 = plot(t,g3,'k');
  xlabel('\it t');
  ylabel('\it g_3(t)');
  set(sig4, 'Linewidth',2);
  axis([-0.5 6 -1.2 1.2]);
  grid;

  subplot(235);
  sig5 = plot(t,g4,'k');
  xlabel('\it t');
  ylabel('\it g_4(t)');
  set(sig5, 'Linewidth',2);
  axis([-0.5 6 -1.2 1.2]);
  grid;

  subplot(236);
  sig6 = plot(t,g5,'k');
  xlabel('\it t');
  ylabel('\it g_5(t)');
  set(sig6, 'Linewidth',2);
  axis([-0.5 6 -1.2 1.2]);
  grid;

  
% Computing signal engergies
  E0 = sum(x.*conj(x))*Dt;        % multiplying Dt is equivalent to divide by period
  E1 = sum(g1.*conj(g1))*Dt;  
  E2 = sum(g2.*conj(g2))*Dt;
  E3 = sum(g3.*conj(g3))*Dt;
  E4 = sum(g4.*conj(g4))*Dt;
  E5 = sum(g5.*conj(g5))*Dt;

  % correlation coefficients do not care about magnitude of the signals, thus divide by sqrt engergy products of the two signals
  c0 = sum(x.*conj(x))*Dt/(sqrt(E0*E0))       
  c1 = sum(x.*conj(g1))*Dt/(sqrt(E0*E1))
  c2 = sum(x.*conj(g2))*Dt/(sqrt(E0*E2))
  c3 = sum(x.*conj(g3))*Dt/(sqrt(E0*E3))
  c4 = sum(x.*conj(g4))*Dt/(sqrt(E0*E4))
  c5 = sum(x.*conj(g5))*Dt/(sqrt(E0*E5))
