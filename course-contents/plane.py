from graphviz import Digraph
from itertools import product

gg = Graph()

gg.attr(rankdir='LR')



for (i,j) in product(range(3),range(3)):            
