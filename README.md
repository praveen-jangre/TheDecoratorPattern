# The Decorator Pattern (A structural design pattern)

 The Decorator Structural design pattern allows adding behavior to objects at runtime without subclassing or modifying their original code. The pattern prevents excessive subclassing.

* Adds new responsibilities to an object dynamically
* Does not alter the object's original structure
* Uses wrappers that provide the new behavior


## How it works
* Wraps the objects to be enhanced
* The wrapper adopts the same interface as the wrapped instance
* Recursive composition lets us use multiple decorators

"Decorator" and "Wrapper" can be used interchangeably.

## Similarities with Proxy Pattern
* Similar structure, different purpose

Decorator are
* Not static
* Not limited to classes
* Provide a flexible alternative to subclassing

## Pitfalls
* Increased complexity
* Difficulties in debugging
* Excessive use leads to complicated code

## Conclusion
* The Decorator can be used to extend an object's functionalities dynamically.
