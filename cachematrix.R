## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a list containing a function to:
## 1. Set the values if the matrix,
## 2. Get the values if the matrix,
## 3. Set the values of the inverses of the matrix,
## 4. Get the values of the inverses of the matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- funtion (y) {
        x <<- y
        }
        get <- function () x
        set_inverse <- function (inverse) inv <<- inverse
        get_inverse <- function () inv
        list(set=set, get=get, set_inverse=set_inverse, get_inverse=get_inverse)
}


## The following function returns the inverse of the matrix.
## First, it checks if the inverse has been computed,
## If so, it gets the result & skips the computation,
## If not, it computes it, sets the value in the cache via the set_inverse function.

## This function assumes that the matrix is always ivertible:
cacheSolve <- function(x, ...) {
        inv <- x$get_inverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$set_inverse(inv)
}

## Testing the function:
m <- matrix(c(2, 4, 3, 1), nrow = 2, ncol = 2)
##      [,1] [,2]
## [1,]   2    3
## [2,]   4    1

## Inversing the matrix:
solve(m)
##      [,1] [,2]
## [1,] -0.1  0.3
## [2,]  0.4 -0.2
