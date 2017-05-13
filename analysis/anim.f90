program main
  implicit none
  integer,parameter :: Nt = 31000
  integer :: it
  integer :: ix
  character(128) :: cit, cfilename, cfilename2
  character(512) :: ctmp(16)



  ctmp(1) = 'set term postscript eps enhanced color font "Arial, 24"'
  ctmp(2) = 'set xlabel "X (nm)"'
  ctmp(3) = 'set ylabel "E^2(t) (arb.)"'
  ctmp(4) = 'set xrange [0:100]'
  ctmp(5) = 'set yrange [0:1]'
  ctmp(6) = 'unset key'

  write(*,"(A)")trim(ctmp(1))
  write(*,"(A)")trim(ctmp(2))
  write(*,"(A)")trim(ctmp(3))
  write(*,"(A)")trim(ctmp(4))
  write(*,"(A)")trim(ctmp(5))
  write(*,"(A)")trim(ctmp(6))


  do it = 0,Nt
    if(mod(it,100) == 0)then
      write(cit,"(I7.7)")it
      cfilename = trim(cit)//"_Ez.out"
      cfilename2 = trim(cit)//"_Ez.eps"

      ctmp(1) = 'set output "'//trim(cfilename2)//'"'
      ctmp(2) = 'p "'//trim(cfilename)//'" u ($1*0.529e-10*1e9):($2**2/2.852e-5) w l'
      write(*,"(A)")trim(ctmp(1))
      write(*,"(A)")trim(ctmp(2))

    end if
  end do

  ctmp(1) = 'unset output'
  write(*,"(A)")trim(ctmp(1))

end program main
