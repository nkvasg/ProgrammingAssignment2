## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function(x) {
	    matrixx <<- x
	    inverse <<- NULL
	}

	get <- function() return(matrixx)
	setinv <- function() return(inverse)
	return(list(set=set, get=get, setinv=setinv, getinv=getinv))

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inverse <- matrixx$getinv()
	if(!is.null(inverse)) {
		message("Getting cached data...)
		return(inverse)
	}
	data <- matrixx$get()
	inverse <- solve(data,...)
	matrixx$setinv(inverse)
	return(inverse)
}
}