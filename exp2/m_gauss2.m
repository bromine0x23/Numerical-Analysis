function [ I ] = m_gauss2( f, a, b, n )

h = (b - a) / n;
X = linspace(a + h / 2, b - h / 2, n);
X0 = X - h / 2 * sqrt(1/3);
X1 = X + h / 2 * sqrt(1/3);
I = sum(f(X0)) + sum(f(X1));
I = h / 2 * I;

end

