program tut
    use shape_mod
    use triangle_mod
    implicit none

    type(triangle_m) :: tri
    tri%x = 10
    tri%y = 20
    print *, "x = ", tri%x
    print *, "y = ", tri%y
    print *, "Area = ", tri%get_area()

end program tut
