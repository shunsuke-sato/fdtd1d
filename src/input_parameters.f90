!---------------------------------------------------!
! Copyright (c) 2017 Shunsuke A. Sato               !
! Released under the MIT license                    !
! https://opensource.org/licenses/mit-license.php   !
!---------------------------------------------------!
program input_parameters
  use global_variables
  implicit none

  Nx_L = -3000
  Nx_R = 3000
  Mx = 100
  Hx = 250d0

  Nt = 30000
  dt = 0.08d0

  eps0 = 1d0
  sigma0 = 1d0

  IWcm2_1 = 1d12d0
  omega_ev_1 = 1.55d0
  tpulse_fs_1 = 14d0

end program input_parameters
