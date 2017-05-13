!---------------------------------------------------!
! Copyright (c) 2017 Shunsuke A. Sato               !
! Released under the MIT license                    !
! https://opensource.org/licenses/mit-license.php   !
!---------------------------------------------------!
subroutine dt_evolve
  use global_variables
  implicit none
  integer :: it


  call laplacian_Ez
  Ez_new = 2d0*eps/dt**2*Ez - (eps/dt**2 - 2d0*pi*sigma/dt)*Ez_old + clight**2*LapEz
  Ez_new = Ez_new/(eps/dt**2 + 2d0*pi*sigma/dt)
  
  Ez_old = Ez
  Ez = Ez_new

  contains
    subroutine laplacian_Ez
      implicit none
      integer :: ix
      
      LapEz(NX_L) = (0d0 - 2d0*Ez(Nx_L) + Ez(Nx_L+1) )/Hx**2
      do ix = Nx_L + 1, Nx_R -1
        LapEz(ix) = (Ez(ix-1) - 2d0*Ez(ix) + Ez(ix+1) )/Hx**2
      end do

      LapEz(Nx_R) = (Ez(Nx_R-1) - 2d0*Ez(ix) + 0d0 )/Hx**2

    end subroutine laplacian_Ez
end subroutine dt_evolve
