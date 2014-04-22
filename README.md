### Introduction

This is my programming assignment for Cached Vector

### Here is the output of my dry run

My matrix is a square matrix which is taken as a default parameter if not explicity assigned. Default matrix assigned to makeCacheMatrix() shown below
```R
> x
     [,1] [,2] [,3]
[1,] 0.50  2.0 1.50
[2,] 0.25  0.5 3.00
[3,] 1.00  1.0 0.75
```

Ourput from the dry run of my code is shown below.

```R

> source('~/R-Projects/Learn/ProgrammingAssignment2/cachematrix.R')
> f1 <- makeCacheMatrix()
> cacheSolve(f1)
            [,1]       [,2]        [,3]
[1,] -0.66666667  0.0000000  1.33333333
[2,]  0.71428571 -0.2857143 -0.28571429
[3,] -0.06349206  0.3809524 -0.06349206
> cacheSolve(f1)
getting cached data
            [,1]       [,2]        [,3]
[1,] -0.66666667  0.0000000  1.33333333
[2,]  0.71428571 -0.2857143 -0.28571429
[3,] -0.06349206  0.3809524 -0.06349206

```