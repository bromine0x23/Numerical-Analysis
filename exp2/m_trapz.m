function [ I ] = m_trapz( f, a, b, n )

if nargin == 3
    n = 32;
end

h = (b - a) / n;
X = linspace(a, b, n + 1);
Y = feval(f, X);
I = (h  / 2) * (Y(1) + 2 * sum(Y(2:n)) + Y(n+1));

end