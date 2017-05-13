!---------------------------------------------------!
! Copyright (c) 2017 Shunsuke A. Sato               !
! Released under the MIT license                    !
! https://opensource.org/licenses/mit-license.php   !
!---------------------------------------------------!
subroutine input_Ac
  use global_variables
  implicit none
  integer :: ix
  real(8) :: tt

  E0_1=5.338d-9*sqrt(Iwcm2_1)
  omega_1 = omega_ev_1/(2d0*Ry)
  tpulse_1 = tpulse_fs_1/0.02418d0
  E0_2=5.338d-9*sqrt(Iwcm2_2)
  omega_2 = omega_ev_2/(2d0*Ry)
  tpulse_2 = tpulse_fs_2/0.02418d0
  Tdelay = Tdelay_fs/0.02418d0


  Ez = 0d0; Ez_old = 0d0
  do ix = Nx_L,Nx_R

    tt = - xn(ix)/clight -0.5d0*tpulse_1
    if(abs(tt ) < tpulse_1*0.5d0 )then
      Ez(ix) = E0_1*cos(omega_1*tt)*cos(pi*tt/Tpulse_1)**2 &
        - E0_1/omega_1*sin(omega_1*tt)*pi/tpulse_1*sin(2d0*pi*tt/tpulse_1)
    end if
    tt = - xn(ix)/clight -0.5d0*tpulse_1 - dt
    if(abs(tt ) < tpulse_1*0.5d0 )then
      Ez_old(ix) = E0_1*cos(omega_1*tt)*cos(pi*tt/Tpulse_1)**2 &
        - E0_1/omega_1*sin(omega_1*tt)*pi/tpulse_1*sin(2d0*pi*tt/tpulse_1)
    end if

  end do



end subroutine input_Ac
