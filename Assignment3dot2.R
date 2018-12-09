#non vectorised solution and its system time.

m<- (replicate(10,rnorm(10)))
dframe1 <-as.data.frame(m)
system.time(
for(i in 1:10){
  for (j in 1:10){
    if(j>10){break}
  dframe1[i,j]<- dframe1[i,j] + sin(30*(pi/180))  
  }
  if(i>10){break}
}
)

#VECTORISED FORM OF THE SOLUTION WITH ITS SYSTEM TIME
vm<-(replicate(10,rnorm(10)))
vdframe1<-as.data.frame(vm)
system.time(
vdframe1<-vdframe1 + sin(30*(pi/180))
)

#vectorised form of the solution is faster and the differences in loop execution
#will be higher when n increases. 