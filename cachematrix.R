## This code will return the inverse of a matrix. Call the 'makeCacheMatrix' vector first
## and set the value of the matrix. Then call the 'cacheSolve' to get the inverse of the matrix.
## To test this code, run the following,
## a <- makeCacheMatrix()
## z <- matrix(1:4, 2, 2)
## a$set(z)
## cacheSolve(a)


## This function creates a vector which contains the list of function to set and get the value of the matrix
## and to set and get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
                i <- NULL
                set <- function(y) {
                    x <<- y
                    i <<- NULL
                 }
                 get <- function() x
                 setinverse <- function(inverse) i <<- inverse
                 getinverse <- function() i
                 list( set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## This function returns the inverse of the matrix that is created in the first function. You need to call the first function first in order to call this function

cacheSolve <- function(x, ...) {
           i <- x$getinverse()
           if(!is.null(i)) {
                message("getting cached inverse")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
        
        ## Return a matrix that is the inverse of 'x'

