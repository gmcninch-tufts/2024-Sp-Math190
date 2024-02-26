from graphviz import Digraph


diag = Digraph()
diag.filename='./decoding-diagram'
diag.format='png'
diag.attr(rankdir='LR')

nodes = ["data", "encoded data", "received data", "decoded data" ]

for n in nodes:
    diag.node(n)

diag.edge("data","encoded data","x ↦ x·G")
diag.edge("encoded data","received data"," **channel** ")
diag.edge("received data","decoded data"," decoding ")

diag.render()
