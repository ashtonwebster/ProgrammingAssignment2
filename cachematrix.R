## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ##variable for inverse of matrix, init to null
  inv <- NULL
  ##set function for assigning new matrix to this object
  set <- function(y) {
    x <- y
    inv <<- NULL
  }
  get <- function() x
  getInv <- function() inv
  setInv <- function(calc_inv) inv <<- calc_inv
  list(set = set, get = get, setInv = setInv, getInv = getInv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inv <- x$getInv()
        if (!is.null(inv)) {
          message("retrieving cached value")
          return(inv)
        }
        matrix <- x$get()
        x$setInv(solve(matrix))
        return(x$getInv())
}
