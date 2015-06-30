#Program for converting SMILES strings to igraph undirected graphs.
sdfset2igraph<-function(sdfset,directed){
require(igraph)
require(ChemmineR)
  sbbmg<-lapply(bondblock(sdfset),function(x) graph.edgelist(matrix(x[,1:2],ncol=2),directed=directed))
  atomnames<-lapply(atomblock(sdfset),function(x) unlist(strsplit(rownames(x),"_[0-9]+"),recursive=F))
  for(i in 1:length(sdfset)){
    V(sbbmg[[i]])$name<-atomnames[[i]]
  }
  sbbmg
}
