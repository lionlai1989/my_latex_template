function [J] = least_cost_function(fun, p, t, yhat)
  y = fun(p, t);

  size(t); % (1, 21)
  size(y);
  size(yhat);
  J = 0;
  for i = 1:columns(t)
    i; % 1, 2, 3, ..., 20, 21
    J = J + (y(i) - yhat(i)).^2;
  endfor

endfunction

%!test
%! close all
%! clear all
%! clc
%! 
%! t = 0:1:20;
%! K = 1.1;
%! T = 2;
%! y0 = -0.1;
%! p = [K, T, y0];
%! y = pt1(p, t);
%! yhat = y + 0.05 * randn(size(t));
%! plot(t, yhat, 'o')
%! hold('on')
%! plot(t, y)
%! J = least_cost_function(@pt1, p, t, yhat)
%! print -djpg q1_e.jpg