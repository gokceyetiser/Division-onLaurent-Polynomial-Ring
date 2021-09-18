M = MatrixSpace(GF(2), 8, 8)
A = companion_matrix(p, format='right')

I = M([1, 0, 0, 0, 0, 0, 0, 0,
       0, 1, 0, 0, 0, 0, 0, 0,
       0, 0, 1, 0, 0, 0, 0, 0,
       0, 0, 0, 1, 0, 0, 0, 0,
       0, 0, 0, 0, 1, 0, 0, 0,
       0, 0, 0, 0, 0, 1, 0, 0,
       0, 0, 0, 0, 0, 0, 1, 0,
       0, 0, 0, 0, 0, 0, 0, 1])

for a in S:
    (i, j, l) = a
    k = j - i
    G = block_matrix(4, 4, [I, A^l, A^i, I,  A^l, I, I, A^i,  A^j, A^k, I, A^l,  A^k, A^j, A^l, I])
    print(G)
    print("(", "i:", i, ",", "j:", j, ",", "k:", k, ",", "l:", l, ")")

    D = []
    d = 0
    weight = 0;
    for i in [0 .. 31]:
        for j in [0 .. 31]:
            if G[i, j] == 1:
                weight = weight + 1
                d = d + 1
        D.append(d)
        d = 0
    print("weight:", weight)
    DXC = weight - G.ncols()
    print("DXC:", DXC)
    print("Distance:", D)
    euc = 0
    for k in [0 .. 31]:
        euc = euc + D[k]^2
    print("euclidean norm of D:", sqrt(euc))
    print("euclidean norm of D:", sqrt(euc))
