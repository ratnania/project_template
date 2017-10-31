module m_interface
!use plf_m_global
implicit none

  private
  public :: get_n_max_core_array, &
          & density_4d_create,    &  
          & density_4d_free,      & 
          & density_4d_print_info 

  ! ... maximum size of arrays for local data to the module
  integer, parameter, private :: n_max_core_array =   50 
  ! ...

  ! ... data structures for density
  type, private :: t_density_4d
    integer, dimension(1:4) :: starts
    integer, dimension(1:4) :: ends
    real(kind=8), dimension(:,:,:,:), allocatable :: values
  end type t_density_4d

  type, private :: t_density_5d
    integer, dimension(1:5) :: starts
    integer, dimension(1:5) :: ends
    real(kind=8), dimension(:,:,:,:,:), allocatable :: values
  end type t_density_5d
  ! ...

  ! ... data structures for density
  integer, parameter, private :: n_density = n_max_core_array

  type(t_density_4d), dimension(n_density), private, target :: p_density_4d
  type(t_density_5d), dimension(n_density), private, target :: p_density_5d
  ! ...

contains
  ! ................................................
  subroutine get_n_max_core_array(n)
  implicit none
    integer, intent(out) :: n
    ! local

    ! ... 
    n = n_max_core_array 
    ! ...
    
  end subroutine get_n_max_core_array 
  ! ................................................

  ! ................................................
  subroutine density_4d_create(i_density, starts, ends)
  implicit none
    integer,                 intent(in) :: i_density
    integer, dimension(1:4), intent(in) :: starts 
    integer, dimension(1:4), intent(in) :: ends 
    ! local
    type(t_density_4d), pointer :: ptr_density => null()

    ! ...
    ptr_density => p_density_4d(i_density) 
    ! ...

    ! ...
    allocate(ptr_density % values(starts(1):ends(1), &
                                & starts(2):ends(2), & 
                                & starts(3):ends(3), & 
                                & starts(4):ends(4)))
    ! ...
    
  end subroutine density_4d_create
  ! ................................................

  ! ................................................
  subroutine density_4d_free(i_density)
  implicit none
    integer, intent(in) :: i_density
    ! local
    type(t_density_4d), pointer :: ptr_density => null()

    ! ...
    ptr_density => p_density_4d(i_density) 
    ! ...

    ! ... free object
    deallocate(ptr_density % values)
    ! ...
    
  end subroutine density_4d_free
  ! ................................................

  ! ................................................
  subroutine density_4d_print_info(i_density)
  implicit none
    integer, intent(in) :: i_density
    ! local
    type(t_density_4d), pointer :: ptr_density => null()

    ! ...
    ptr_density => p_density_4d(i_density) 
    ! ...

    print *, 'Add your text here'
    
  end subroutine density_4d_print_info
  ! ................................................

end module m_interface
