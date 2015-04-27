#Some random scripts for R using the igraph package
#3d plot of 3d-spread out directed graph
rglplot(jacss31.1.2.igraph,vertex.size=1,vertex.label.cex=0.5,layout=layout.kamada.kawai(jacss31.1.2.igraph,dim=3))
