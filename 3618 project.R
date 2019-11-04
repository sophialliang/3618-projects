A<-c(1:6)
A
B<-c(7:12)
B
m<-matrix(A,nrow=1,ncol=6)
m
rownames=c("vampires")
colnames=c("Pop Rocks Candy","Nerds Candy","Jawbreakers Candy","Salt Water Taffy","Jolly Ranchers Candy","Smarties Candy")
dimnames=list(rownames,colnames)
m<-matrix(A,nrow=1,ncol=6,dimnames=dimnames)
m
m<-rbind(m,werewolves=B)
m
