% file name: FSexp_a.m 
% This example shows how to numerically evaluate 
% the exponential Fourier series coefficients Dn
% directly.
% The user needs to define a symbolic function
% g(t). In this example, g(t)=funct_tri(t).

  echo off;
  clear;
  clf;
  
  j = sqrt(-1);   % Define j for complex algegra
  b = 2;
  a = -2;
  tol = 1.e-5;    % set integration error tolerance
  T = b-a;        % length of period
  N = 11;         % Number of FS coefficients

% on each side of zero frequency
  Fi = [-N:N]*2*pi/T;   % set frequency range

% now calculate D_0 and store it in D(N+1)  
  Func = @(t) funct_tri(t/2);
  D(N+1) = 1/T*quad(Func,a,b,tol);    % using quad.m integration

  for i=1:N
% calculate Dn for n=1, ...., N (stored in D(N+2) ... D(2N+1)
    Func = @(t) exp(-j*2*pi*t*i/T).*funct_tri(t/2);
    D(i+N+1) = 1/T*quad(Func,a,b,tol);
% calculate Dn for n=-N, .., -1 (stored in D(1) ... D(N)
    Func = @(t) exp(j*2*pi*t*(N+1-i)/T).*funct_tri(t/2);
    D(i) = 1/T*quad(Func,a,b,tol);
  end

  figure(1);
  subplot(211);
  s1 = stem([-N:N],abs(D));
  set(s1,'Linewidth',2);
  ylabel('|D_n|');
  title('Amplitude of D_n');
  subplot(212);
  s2 = stem([-N:N],angle(D));
  set(s2,'Linewidth',2);
  ylabel('< D_n');
  title('Angle of D_n');
