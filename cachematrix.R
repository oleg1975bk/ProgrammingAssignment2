## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse_matrix<-NULL
  set<-function(Matrix){
    x<<-Matrix
    inverse_matrix<<-NULL
  }
  get<-function() x
  setinverse<-function(inver) inverse_matrix<<-inver
  getinverse<-function() inverse_matrix
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse_matrix<-x$getinverse()
  if(!is.null(inverse_matrix)){
    message("From cashe")
    return(inverse_matrix)
  }
  matrix<-x$get()
  inverse_matrix<-solve(matrix,...)
  x$setinverse(inverse_matrix)
  inverse_matrix
}
