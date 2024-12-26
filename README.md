# MATLAB Cell Array Loop Bug

This repository demonstrates an uncommon bug in MATLAB related to handling cell arrays and dynamically growing arrays within loops.  The bug is subtle and can be difficult to track down without understanding how MATLAB handles memory allocation.

## Bug Description

The `bug.m` file contains a function `myFunction` that aims to find the maximum value in each sub-array of a cell array. The initial implementation fails when the output array (`maxValues`) is not pre-allocated. The solution highlights the importance of pre-allocation to avoid unexpected results.

## Solution

The `bugSolution.m` file provides a corrected version of the function that pre-allocates the `maxValues` array. This prevents the issue and ensures correct behavior.

## How to Reproduce

1.  Clone this repository.
2.  Open MATLAB.
3.  Navigate to the repository's directory.
4.  Run `bug.m` and `bugSolution.m` to observe the difference in behavior.

This example illustrates a common pitfall in MATLAB programming.  Always pre-allocate arrays when you know their final size to prevent unexpected behavior and performance issues.