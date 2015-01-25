# Put comments here that give an overall description of what your
# functions do


# following two functions cache the inverse of the matrix 

#  MakeCacheMatrix 
# a. Set the value of the Matrix                           
# b. Get the value of the Matrix                           
# c. Set the value of Inverse of the Matrix               
# d. Get the value of Inverse of the Matrix            

makeCacheMatrix <- function(x = matrix()) {
  invm <- NULL
  set <- function(y) {
    x <<- y
    invm <<- NULL
  } 
  get <- function() x
  setinverse <- function(inverse) 
  invm <<- inverse
  getinverse <- function() 
  invm
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}



#  CacheSolve
# This function returns the inverse of the matrix. If     
# first checks if the inverse is available in the cache.  
# If available, returns the result else it computes and   
# and then returns the result                             


cacheSolve <- function(x, ...) {
  invm <- x$getinverse()
  if(!is.null(invm)) {
    message("getting cached data")
    return(invm)
  }
  data <- x$get()
  invm <- solve(data)
  x$setinverse(invm)
  invm         
}

