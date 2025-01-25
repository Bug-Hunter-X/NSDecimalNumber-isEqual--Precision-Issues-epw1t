In Objective-C, a subtle error can occur when dealing with `NSDecimalNumber` and comparing them for equality.  Directly using the `isEqual:` method might not always yield the expected result due to potential precision differences. For instance, if you perform a calculation resulting in a value extremely close to, but not exactly equal to, another `NSDecimalNumber`, the `isEqual:` method will return `NO`.

```objectivec
NSDecimalNumber *num1 = [NSDecimalNumber decimalNumberWithString:@