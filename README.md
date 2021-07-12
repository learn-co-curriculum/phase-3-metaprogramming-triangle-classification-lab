# Triangle Classification Lab

## Learning Goals

- Define a custom error class and use it

## Instructions

Write a `Triangle` class that accepts three arguments on initialization. Each
argument is a length of one of the three sides of the triangle.

Define an instance method, `#kind` that returns, as a symbol, its
type. The valid types are:

- `:equilateral`
- `:isosceles`
- `:scalene`

![Triagle types](https://curriculum-content.s3.amazonaws.com/module-1/ruby-metaprogramming/triangle-classification-lab/Image_141_MathematicalTriangles.png)

The `#kind` method should raise a custom error, `TriangleError` if the triangle
is invalid. Check out the hint below to understand what makes a triangle valid.

Write a custom error class, `TriangleError` and inherit it from `StandardError`.
This custom error class should be defined in the same file as the `Triangle`
class, inside the `Triangle` class definition, like this:

```ruby
# lib/triangle.rb

class Triangle
  # triangle code

  class TriangleError < StandardError
    # triangle error code
  end
end
```

**Note**: Several of the tests will be looking for the `TriangleError` to be
raised. If you implement a `rescue` for it, however, the tests will not
recognize that the error was raised. For purposes of this lab, therefore, you
should not include a `rescue`.

## Identifying Valid Triangles

A valid triangle must meet the following criteria:

- Each side must be larger than 0.

- The sum of the lengths of any two sides of a triangle always exceeds the length
  of the third side. This is a principle known as the _triangle inequality_.

## Resources

- [Exception Handling](http://www.skorks.com/2009/09/ruby-exceptions-and-exception-handling/)
- [Basic Mathematics](http://www.basic-mathematics.com/) - [Types of Triangles](http://www.basic-mathematics.com/types-of-triangles.html)
