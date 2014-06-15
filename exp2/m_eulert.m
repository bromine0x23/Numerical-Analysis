function [ x, y ] = m_eulert( f, range, y0, h )

x = range(1):h:range(2);
y = zeros(1, length(x));
y(1) = y0;
for n = 1:length(x)-1
	y0 = y(n) + h * f(x(n), y(n));
    for k = 1:3
        y1 = y(n) + h / 2 * (f(x(n), y(n)) + f(x(n) + h, y0));
        if abs(y1 - y0) < 1E-5
            break;
        end
        y0 = y1;
    end
	y(n+1) = y0;
end

end