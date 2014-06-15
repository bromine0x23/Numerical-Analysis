function [ x, y ] = m_rungekutta4( f, xrange, y0, h )

x = xrange(1):h:xrange(2);
y = zeros(1, length(x));
y(1) = y0;
for n = 1:length(x)-1
    f1 = f(x(n), y(n));
    f2 = f(x(n) + h / 2, y(n) + h / 2 * f1);
    f3 = f(x(n) + h / 2, y(n) + h / 2 * f2);
    f4 = f(x(n) + h, y(n) + h * f3);
    y(n+1) = y(n) + h / 6 * (f1 + 2 * f2 + 2 * f3 + f4);
end
    
end

