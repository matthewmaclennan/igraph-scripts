#Program for converting SMILES strings to igraph undirected graphs.
sdfset2igraphU<-function(sdfset){
require(igraph)
require(ChemmineR)
  sbbmg<-lapply(bondblock(sdfset),function(x) graph(matrix(x[,1:2],ncol=2),directed=F))
  V(sbbmg)$name<-lapply(atomblock(sdfset),function(x) unlist(strsplit(rownames(x),"_[0-9]+"),recursive=F))
  sbbmg
  }
