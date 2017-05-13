!---------------------------------------------------!
! Copyright (c) 2017 Shunsuke A. Sato               !
! Released under the MIT license                    !
! https://opensource.org/licenses/mit-license.php   !
!---------------------------------------------------!
subroutine input_parameters
  use global_variables
  implicit none


  Mx = 40
  Hx = 1000d0/a_B/Mx
  Nx_L = -aint(50000d0/a_B*4d0/Hx)
  Nx_R = aint(50000d0/a_B*4d0/Hx)



  dt = 0.04d0
  Nt = aint(30d0/0.02418d0/dt) + 1

! GaAs at \omega = 1.600 eV
  eps0 = 13.683d0
  sigma0 = 0.677d0*(1.6d0/(2d0*Ry))/(4d0*pi)

  IWcm2_1 = 1d12
  omega_ev_1 = 1.55d0
  tpulse_fs_1 = 14d0

end subroutine input_parameters
