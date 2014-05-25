## Put comments here that give an overall description of what your
## functions do

## cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  g <- NULL
  set <- function(y) {
    x <<- y
    g <<- NULL
  }
  get <- function() x
  setinv <- function(solve) g <<- solve
  getinv <- function() g
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)

}


## calculate the inverse of a matrix and cache the value

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          ## Return a matrix that is the inverse of 'x'
        g<- x$getinv()
                if (!is.null(g)){
            message("getting cached data")
            return(g)
            }
            
  data<-x$get()
  g<- solve(g)
  x$setinv(g)
  g
}
