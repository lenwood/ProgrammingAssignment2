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


# Either return the cached value of an inverse matrix or
# invert and cache the matrix inverse.

cacheSolve <- function(x, ...) {
    # return a matrix that is the inverse of 'x'
    m <- x$getInverse()

    # check to see if the inverse if cached
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }

    # if the inverse value is not cached, invert the matrix
    data <- x$get()
    m <- solve(data, ...)

    # cache the value of the inverse
    x$setInverse(m)
}
