!---------------------------------------------------!
! Copyright (c) 2017 Shunsuke A. Sato               !
! Released under the MIT license                    !
! https://opensource.org/licenses/mit-license.php   !
!---------------------------------------------------!
subroutine allocation
  use global_variables
  implicit none


  allocate(Ez(Nx_L:NX_R),Ez_new(Nx_L:NX_R),Ez_old(Nx_L:NX_R))
  allocate(LapEz(Nx_L:NX_R),eps(Nx_L:NX_R),sigma(Nx_L:NX_R))
  allocate(xn(Nx_L:Nx_R))

end subroutine allocation
