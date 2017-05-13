!---------------------------------------------------!
! Copyright (c) 2017 Shunsuke A. Sato               !
! Released under the MIT license                    !
! https://opensource.org/licenses/mit-license.php   !
!---------------------------------------------------!
subroutine initialization
  use global_variables
  implicit none
  integer :: im,ix

  eps = 1d0
  sigma = 0d0

  do ix = Nx_L,Nx_R
    xn(ix) = (dble(ix)-0.5d0)*Hx
  end do


  do im = 1,Mx
    eps(im) = eps0
    sigma(im) = sigma0
  end do

  call input_Ac

end subroutine initialization
