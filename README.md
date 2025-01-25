# Objective-C NSDecimalNumber isEqual: Precision Issues

This repository demonstrates a common, yet subtle, bug in Objective-C when using `NSDecimalNumber` and comparing for equality using the `isEqual:` method.  Due to potential precision differences, simply comparing two `NSDecimalNumber` objects with `isEqual:` can lead to unexpected results, even when the numbers are extremely close in value.

The `bug.m` file contains code showcasing this issue. The solution, in `bugSolution.m`, illustrates how to use `compare:` with a specified precision for more robust comparisons.

## Bug Description:
The bug arises from the inherent limitations of floating-point representation.  Calculations involving `NSDecimalNumber` can produce results that are very close to a target value but not precisely equal due to rounding errors.

## Solution:
Instead of relying solely on `isEqual:`, use the `compare:` method of `NSDecimalNumber` to specify a tolerance for comparison.  This allows for a more accurate comparison, considering potential rounding discrepancies.