#Program for converting SMILES strings to igraph undirected graphs.
sdfset2igraphU<-function(sdfset){
require(igraph)
require(ChemmineR)
  sbbmg<-graph.edgelist(matrix(bondblock(sdfset),ncol=2),directed=F)
  V(sbbmg)$name<-unlist(strsplit(rownames(atomblock(sdfset)),"_[0-9]+"))
  sbbmg
  }
