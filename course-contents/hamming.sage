k = GF(3)
P = ProjectiveSpace(k,2)

H = matrix([p for p in P]).T

C = H.right_kernel()
