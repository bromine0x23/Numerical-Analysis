function [ I ] = m_gauss3( f, a, b, n )

h = (b - a) / n;
X = linspace(a + h / 2, b - h / 2, n);
X0 = X - h / 2 * sqrt(3/5);
X1 = X;
X2 = X + h / 2 * sqrt(3/5);
I = sum(5 / 9 * f(X0)) + sum(8 / 9 * f(X1)) + sum(5 / 9 * f(X2));
I = h / 2 * I;

end

