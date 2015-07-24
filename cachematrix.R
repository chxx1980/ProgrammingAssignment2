## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Based on makeVector this function creates the get, set the matrix and its inverse
makeCacheMatrix <- function(x = matrix()) {
      invmatrix <- NULL
      set <- function(y) {
      x <<- y
      invmatrix <<- NULL
      }
      get <- function() x
      setinverse <- function(inverse) invmatrix <<- inverse
      getinverse <- function() invmatrix
      list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

## Based on the cachemean function, this function solves the inverse of a matrix after checking if 
## the inverse has been calculated already. In the latter case it gets the cached result.
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
    invmatrix <- x$getinverse()
    if(!is.null(invmatrix)) {
    message("getting cached data.")
    return(invmatrix)
    }
    data <- x$get()
    invmatrix <- solve(data)
    x$setinverse(invmatrix)
    invmatrix
}
