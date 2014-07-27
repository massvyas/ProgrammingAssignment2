## makeCacheMatrix gives a list of 4 funcitons that allow you to maninpulate the matrix
## cacheSolve calculates the inverse of a matrix

## makeCacheMatrix takes a matrix and inputs and returns a list of 4 functions that can
## set the matrix, get the matrix, set the inverse of a matrix and get the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## cacheSolve takes an input that is of the type matrix and returns its inverse

cacheSolve <- function(x) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
}
