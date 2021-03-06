## Put comments here that give an overall description of what your
## functions do
## Function to create a cache of inverse of a given matrix

makeCacheMatrix <- function(x = matrix(c(1/2,1/4,1,2,2/4,1,3/2,3,3/4),3,3)) {
  m <- NULL
  set <- function(y) {
    #both x and y should be a square matrix
    x <<- y
    #Let's initialize 
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(invMat) m <<- solve(invMat)
  getmatrix <- function() m
  list(set = set, get = get, 
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}

## Main function that either retrieves from cache or solves for new one

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setmatrix(data)
  m
}
