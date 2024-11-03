# Object-Oriented Fortran

Fortran 2003 introduced several object-oriented programming features, including:

1.	**Derived Type Extension**: Allows you to define a new type that extends an existing type using extends.
2.	**Type-bound Procedures**: Functions or procedures bound to a specific type, which can be overridden in derived types.
3.	**Inheritance and Polymorphism**: Supports polymorphic types and inheritance, enabling object-oriented design patterns.
4.	**Interfaces for Type-bound Procedures**: Using procedure and interface blocks within derived types for defining virtual functions and interfaces.

Example from [source](https://github.com/RenkeHuang/oop_in_fortran/blob/0989370e2c6fad093993554e9a4dbed77494c53b/triangle_mod.f90#L6-L10):
```fortran
type, extends(shape_m), public :: triangle_m
    contains
        procedure :: get_area
end type triangle_m
```
#### Note
- `type, extends(shape_m), public :: triangle_m`: Defines `triangle_m` as a derived type that extends `shape_m`, inheriting its properties and methods.
- `contains` and `procedure :: get_area`: `contains` signifies that `triangle_m` will have type-bound procedures, and `procedure :: get_area` binds the `get_area` procedure to this type, which overridea the `get_area` in `shape_m` if it exists there.
