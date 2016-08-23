## This code is aimed to do matrix inversion


## makeCacheMatric is a function creating a special metrix object that can cache its invese
## first it set the value of the matrix and then get the value of the matrix
## then it set the value of the inverse of the matrix and get the value of the matrix
makeCacheMatrix <- function(x = matrix()) {
  inver <- NULL
  set <- function(y){
    x <<- y
    inver <<- NULL
    
  }

  
  get <- function()x
  setinverse <- function(inverse) inver <<- inverse
  getinverse <- function()inver
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)

}


## this function computes the inverse of the matrix returned by the function above.
## First, it checks if the inversed has been computed or not. If so, it gets the 
## result directly. If not, it compute the inverse by using the set function in the function 
## above and save it into x.

cacheSolve <- function(x, ...) {
  inver <- x$getinverse()
  if (!is.null(inver)){
    message("getting cached data.")
    return(inver)
  }
  data <-x$get()
  inver <- solve(data)
  x$setinverst(inver)
  inver
        ## Return a matrix that is the inverse of 'x'
}
