## Put comments here that give an overall description of what your
## functions do

##makeCacheMatrix returns a list of functions used to get&set the matrix and get&set the inverse of it.
##cacheSolve is used to return the inverse of matrix from cache is already there else calculate the same and return.

## Write a short comment describing this function
##getmatrix() does reading of the matrix
##setmatrix() sets the matrix
##getinvmatrix() does reading of the inverse of the matrix
##setinvmatrix() sets the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
getmatrix<-function() x
setmatrix<-function(y) {
				x<<-y
				inv<<-NULL
	}
getinvmatrix<-function() inv
setinvmatrix<-function(inverse) inv<<-inverse 
list(getmatrix=getmatrix,setmatrix=setmatrix,getinvmatrix=getinvmatrix,setinvmatrix=setinvmatrix)
}


## Write a short comment describing this function
##cacheSolve is used to return the inverse of matrix from cache is already there else calculate the same and return.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv<-x$getinvmatrix()
if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
mat<-x$getmatrix()
inv<-solve(mat)
x$setinvmatrix(inv)
inv

}
