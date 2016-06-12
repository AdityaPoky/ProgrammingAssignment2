## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

## set the matrix
inverse <-NULL
setMatx<-function(mat){
mat<<-mat
}
## get the matrix
getMatx<-function() mat
## set the inverse
cacheInv<-function(tem){
inverse<<-tem
}
## get the inverse
getInv<-function(){
if (nrow(mat) != ncol(mat)) {print('matrix is not square')}
inverse
}

list(setMatrix=setMatx,getMatrix=getMatx,cacheInverse=cacheInv,getInverse=getInv)

}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m<-x$getInv()
     if (!is.null(m)){
## get it from the cache and skips the computation.
        message("getting cached data")
        return(m)
        }
## sets the value of the inverse in the cache via the setinv function.
m<-solve(x$getMatx())
s$cacheInv(m)
m
}
}
