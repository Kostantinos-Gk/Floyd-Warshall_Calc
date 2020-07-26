myfloydWarshall <- function(M,n) {
if  ( nrow(M) != n ) {   ##necessary if someone use this function autonomus
  print("Wrong Arguments")
}
else {  
  temp_matrix <- M  
  for(k in (1:n)) {
    for(i in (1:n)) {
      for(j in (1:n)) {
          if ((temp_matrix[i,k] + temp_matrix[k,j]) < temp_matrix[i,j] ) {
            temp_matrix[i,j] = temp_matrix[i,k] + temp_matrix[k,j]
          }
      }
    }
  }
  print(temp_matrix)
}  
  
}

n <- as.integer(readline(prompt = "Give the number of nobes: "))

##initialization matrix with zeros
myGraph <- matrix(0,n,n)
##print(myGraph)
##user init the matrix
for (i in (1:n)) {
  for(j in (1:n)){
    myGraph[i,j] <-as.numeric(readline(prompt = cat("Give Weight for [",i,",",j,"]:")))
    }
}

print(myGraph)
myfloydWarshall(myGraph,n)