module triangle_mod
    ! Import shape_mod and all you inherit
    use shape_mod
    implicit none

    type, extends(shape_m), public :: triangle_m
    contains
      ! Define function you will override
        procedure :: get_area
    end type triangle_m

contains
    ! Refer to this triangle and return the area
    function get_area(this) result(area)
        class(triangle_m) :: this
        real :: area
        area = this%x * this%y
    end function get_area
  end module triangle_mod