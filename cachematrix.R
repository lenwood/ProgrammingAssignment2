# get a matrix and cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL

    # set the inverse of a matrix
    set <- function(y) {
        x <<- y
        m <<- NULL
    }

    # get the inverse of a given matrix
    get <- function() x

    # invert the matrix
    setInverse <- function(solve) m <<- solve

    # return the inverted matrix
    getInverse <- function() m

    list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
