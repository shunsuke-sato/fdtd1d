!---------------------------------------------------!
! Copyright (c) 2017 Shunsuke A. Sato               !
! Released under the MIT license                    !
! https://opensource.org/licenses/mit-license.php   !
!---------------------------------------------------!
program propagation
  use global_variables
  implicit none
  integer :: it

  do it = 1,Nt

    call dt_evolve

  end do



end program propagation
