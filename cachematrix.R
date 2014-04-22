## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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

## Write a short comment describing this function

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
