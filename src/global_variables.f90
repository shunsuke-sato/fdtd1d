!---------------------------------------------------!
! Copyright (c) 2017 Shunsuke A. Sato               !
! Released under the MIT license                    !
! https://opensource.org/licenses/mit-license.php   !
!---------------------------------------------------!
module global_variables
  implicit none

! Mathematical parameters
!  real(8),parameter :: pi=3.14159265358979323846d0
  real(8),parameter :: pi=4d0*atan(1d0)
  complex(8),parameter :: zI=(0d0,1d0)

! FDTD grid
  integer :: Nx_L,NX_R, Mx, Nt
  real(8) :: Hx, dt
  
! electric field
  real(8),allocatable :: Ez(:),Ez_new(:),Ez_old(:),LapEz(:)

! material properties
  real(8) :: eps0,sigma0
  real(8),allocatable :: eps(:),sigma(:)


! Laser parameters
  real(8) :: E0_1,omega_1,tpulse_1,omega_ev_1,tpulse_fs_1,Iwcm2_1
  real(8) :: E0_2,omega_2,tpulse_2,omega_ev_2,tpulse_fs_2,Iwcm2_2
  real(8) :: Tdelay_fs,Tdelay



end module global_variables
