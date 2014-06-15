function [ x, y ] = m_eulerg( f, xrange, y0, h )

x = xrange(1):h:xrange(2);
y = zeros(1, length(x));
y(1) = y0;
for n = 1:length(x)-1
	fn = f(x(n), y(n));
	y(n+1) =  y(n) + h / 2 * (fn + f(x(n) + h, y(n) + h * fn));
end

end