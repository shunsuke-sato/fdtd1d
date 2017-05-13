!---------------------------------------------------!
! Copyright (c) 2017 Shunsuke A. Sato               !
! Released under the MIT license                    !
! https://opensource.org/licenses/mit-license.php   !
!---------------------------------------------------!
subroutine write_field(it)
  use global_variables
  implicit none
  integer,intent(in) :: it
  integer :: ix
  character(128) :: cit, cfilename


  write(cit,"(I7.7)")it
  cfilename = trim(cit)//"_Ez.out"

  open(21,file=cfilename)
  do ix = Nx_L,Nx_R
    write(21,"(999e25.16e3)")xn(ix),Ez(ix)
  end do
  close(21)



end subroutine write_field
