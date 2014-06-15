function [ I ] = m_simpson( f, a, b, n )

if nargin == 3
    n = 32;
end

N = 2 * n;
h = (b - a) / N;
X = linspace(a, b, N + 1);
Y = feval(f, X);
I = (h  / 3) * (Y(1) + 4 * sum(Y(2:2:N)) + 2 * sum(Y(3:2:N)) + Y(N + 1));

end

