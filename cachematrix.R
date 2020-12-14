## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  p <- NULL
  set <- function(y){
    x <<- y
    p <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() p 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
   
   ## Return a matrix that is the inverse of 'x'
   p <- x$getInverse()
  if(!is.null(p)){
    message("Am getting the cached data")
    return(p)
  }
  mat <- x$get()
  p <- solve(mat,...)
  x$setInverse(p)
  p
}
Test_matrix<-makeCacheMatrix(matrix(1:4,2,2))
Test_matrix$get()
Test_matrix$getInverse()
cacheSolve(Test_matrix)
cacheSolve(Test_matrix)