#Program for converting SMILES strings to igraph objects (directed graphs)
smiles2igraph<-function(SMILES){
require(igraph)
require(ChemmineR)
  sdf.set<-smiles2sdf(SMILES)
  sbbmg<-graph.edgelist(matrix(bondblock(sdf.set),ncol=2),directed=F)
  V(sbbmg)$name<-unlist(strsplit(rownames(atomblock(sdf.set)),"_[0-9]+"))
  
}
