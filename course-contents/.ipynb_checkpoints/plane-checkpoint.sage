k = GF(3)
g = Graph( { (a,b): [(a+1,b), (a,b+1), (a+1,b+1)] for a,b in cartesian_product([k,k]) } )

plot(g)
