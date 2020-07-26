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