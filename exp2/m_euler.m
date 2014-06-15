function [ x, y ] = m_euler( f, range, y0, h )

x = range(1):h:range(2);
y = zeros(1, length(x));
y(1) = y0;
for n = 1:length(x)-1
	y(n+1) = y(n) + h * f(x(n), y(n));
end

end