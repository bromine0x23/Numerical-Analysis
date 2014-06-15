function [ I ] = m_romberg( f, a, b, epsilon )

if nargin == 3
    epsilon = 1E-5;
end

k = 1;
h = b - a;
T(1, 1) = h * (f(a) + f(b)) / 2;
n = 1;

while k < 1000
    k = k + 1;
    h = h / 2;
    T(k, 1) = T(k-1, 1) / 2 + h * sum(feval(f, linspace(a + h, b - h, n)));
    n = n * 2;
    
    for m = 2:k
        T(k, m) = T(k, m-1) + (T(k, m-1) - T(k-1, m-1)) / (4 ^ m - 1);
    end
    
    if (abs(T(k, k) - T(k-1, k-1)) < epsilon)
        break
    end
end

I = T(k, k);

end

