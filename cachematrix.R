## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix() checks the defined matrix 
## Checks its dimension to make sure it is a square matrix
## Checks the square matrix to make sure its determinant is not zero
## If the defined matrix has inverse, store its value in makeCacheMatrix()
## Call makeCacheMatrix() in cacheSolve() to get the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
    c <- ncol(x)
    
    r <- nrow(x)
    
    if (c != r){
       
       
          print("This matrix has no inverse because it is not a square matrix.")
    }else {
          d <- det(x)
          if (d==0){print("This matrix has no inverse because it is determinant is zero.")
          }else{ myMatrix <- x
              myMatrix
          }
         
    }
        
 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  if (is.numeric(makeCacheMatrix(x))){solve(makeCacheMatrix(x))}
        ## Return a matrix that is the inverse of 'x'
}
