
k = GF(13)
k.<T> = PolynomialRing(k)

f = (T-1)*(T-12)*(T-5)*(T-8)*(T^2 - 5)*(T^2 - 8)
f

(T-5).isIrreducible?