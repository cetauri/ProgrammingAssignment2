## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        inverse_idx <- NULL
        set <- function(y) {
                x <<- y
                inverse_idx <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inverse_idx <<- inverse
        getInverse <- function() inverse_idx
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse_idx <- x$getInverse()
        if(!is.null(idx)) {
                message("getting cached inverse data")
        } else {
        	inverse_idx <- solve(x$get())
        	x$setInverse(inverse_idx)
        }
        
        inverse_idx
}
