!---------------------------------------------------!
! Copyright (c) 2017 Shunsuke A. Sato               !
! Released under the MIT license                    !
! https://opensource.org/licenses/mit-license.php   !
!---------------------------------------------------!
subroutine propagation
  use global_variables
  implicit none
  integer :: it
  
  it = 0 
  call write_field(it)


  do it = 1,Nt

    call dt_evolve

    if(mod(it,100) == 0)call write_field(it)

  end do



end subroutine propagation
