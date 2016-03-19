## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

#1, x: set matrix
#2, get_x: get matrix
#3, set_inverse: set_inverse
#4, get_inverse
  
# This function creates a matrix that can cache its inverse
# set inve to be NULL
  
            inv <- NULL
# set matrix           
           set <- function(y) {
              x  <<- y
              inv <<- NULL
           }
           
           
           get <- function() x
           
           setInv <- function(solve) inv <<- solve
           
           getInv <- function() inv
           
    list(set = set, get = get, setInv = setInv, getInv = getInv)
           

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInv()
    
    # check if we already have cached data
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    
    # calcuate the inverse of the matrix
    data <- x$get()
    m <- solve(data)
    x$setInv(m)
    
    m
  
}
