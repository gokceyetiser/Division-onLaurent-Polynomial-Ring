R.<x> = LaurentPolynomialRing(GF(2))
S1 = Set([])
S2 = Set([-240, -210, -180, -150, -120, -90, -60, -30, 30, 60, 90, 120, 150, 180, 210, 240])
p = x^8 + x^2 +1
for ii in [-2^8 .. 2^8]:
    for jj in [-2^8 .. 2^8]:
        t = x^ii + x^jj + 1;
        (q,r) = (t).quo_rem(p)
        if r == 0:
            s1 = (ii, jj)
            S1 = S1.union(Set([s1]))
S = Set([])
i = var('i')
j = var('j')
k = var('k')
l = var('l')
for k in [0 .. 30]:
    if k % 2 == 0:
        for iii in S2:
            #print(iii)
            eq1 = i + k - j == iii
            for jjj in S1:
                #print(jjj)
                (x, y) = jjj
                eq2 = 2*l - k == y
                eq3 = i + j - k == x
                solution = solve([eq1, eq2, eq3], i, j, l)
                i0 = solution[0][0].rhs()
                while i0 > 30:
                    i0 = i0 - 30
                while i0 < 0:
                    i0 = i0 + 30
                j0 = solution[0][1].rhs()
                while j0 > 30:
                    j0 = j0 - 30
                while j0 < 0:
                    j0 = j0 + 30
                l0 = solution[0][2].rhs()
                while l0 > 30:
                    l0 = l0 - 30
                while l0 < 0:
                    l0 = l0 + 30
                s = (i0, j0, l0)
                S = S.union(Set([s]))
print(S)
