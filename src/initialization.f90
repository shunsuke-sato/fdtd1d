!---------------------------------------------------!
! Copyright (c) 2017 Shunsuke A. Sato               !
! Released under the MIT license                    !
! https://opensource.org/licenses/mit-license.php   !
!---------------------------------------------------!
program initialization
  use global_variables
  implicit none
  integer :: im

  eps = 1d0
  sigma = 0d0

  do im = 1,Mx
    eps(im) = eps0
    sigma(im) = sigma0
  end do

  call input_Ac

end program allocation
