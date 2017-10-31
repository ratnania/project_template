module m_interface
!use plf_m_global
implicit none

  private
  public :: get_n_max_core_array

!  public ::                                              &
!          & get_n_max_core_array,                        &
!          ! ... PLAF/vector                             
!          & vector_create_1,                             &
!          & vector_create_2,                             &
!          & vector_free,                                 &
!          & vector_print_info,                           &
!          & vector_get_n_size,                           &
!          & vector_get_n_blocks,                         &
!          & vector_get,                                  &
!          & vector_get_as_array,                         &
!          & vector_set,                                  &
!          & vector_set_as_array,                         &
!          & vector_read_from_file,                       &
!          & vector_export
!          ! ...                                         

  ! ... maximum size of arrays for local data to the module
  integer, parameter, private :: n_max_core_array =   50 
  ! ...

!  ! ... data structures for vectors
!  integer, parameter, private :: n_vectors = n_max_core_array
!  type(plf_t_vector), dimension(n_vectors), private, target :: p_vectors
!  ! ...

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

!  ! ................................................
!  subroutine vector_create_1(i_vector, n_size, n_blocks)
!  implicit none
!    integer, intent(in) :: i_vector
!    integer, intent(in) :: n_size
!    integer, intent(in) :: n_blocks 
!    ! local
!    class(plf_t_vector), pointer :: ptr_vector => null()
!
!    ! ...
!    ptr_vector => p_vectors(i_vector) 
!    ! ...
!
!    ! ... create a vector with n_size
!    call ptr_vector % create(n_size=n_size, n_blocks=n_blocks)
!    ! ...
!    
!  end subroutine vector_create_1 
!  ! ................................................
!
!  ! ................................................
!  subroutine vector_create_2(i_vector, n_blocks)
!  implicit none
!    integer, intent(in) :: i_vector
!    integer, intent(in) :: n_blocks 
!    ! local
!    class(plf_t_vector), pointer :: ptr_vector => null()
!
!    ! ...
!    ptr_vector => p_vectors(i_vector) 
!    ! ...
!
!    ! ... create a vector with n_blocks
!    call ptr_vector % create(n_blocks=n_blocks)
!    ! ...
!    
!  end subroutine vector_create_2 
!  ! ................................................
!
!  ! ................................................
!  subroutine vector_free(i_vector)
!  implicit none
!    integer, intent(in) :: i_vector
!    ! local
!    class(plf_t_vector), pointer :: ptr_vector => null()
!
!    ! ...
!    ptr_vector => p_vectors(i_vector) 
!    ! ...
!
!    ! ... free object
!    call ptr_vector % free()
!    ! ...
!    
!  end subroutine vector_free
!  ! ................................................
!
!  ! ................................................
!  subroutine vector_print_info(i_vector)
!  implicit none
!    integer, intent(in) :: i_vector
!    ! local
!    class(plf_t_vector), pointer :: ptr_vector => null()
!
!    ! ...
!    ptr_vector => p_vectors(i_vector) 
!    ! ...
!
!    ! ... print_info object
!    call ptr_vector % print_info()
!    ! ...
!    
!  end subroutine vector_print_info
!  ! ................................................
!
!  ! ................................................
!  subroutine vector_get_n_size(i_vector, n_size)
!  implicit none
!    integer, intent(in)  :: i_vector
!    integer, intent(out) :: n_size
!    ! local
!    class(plf_t_vector), pointer :: ptr_vector => null()
!
!    ! ...
!    ptr_vector => p_vectors(i_vector) 
!    ! ...
!
!    ! ... 
!    n_size = ptr_vector % n_size
!    ! ...
!    
!  end subroutine vector_get_n_size
!  ! ................................................
!
!  ! ................................................
!  subroutine vector_get_n_blocks(i_vector, n_blocks)
!  implicit none
!    integer, intent(in)  :: i_vector
!    integer, intent(out) :: n_blocks 
!    ! local
!    class(plf_t_vector), pointer :: ptr_vector => null()
!
!    ! ...
!    ptr_vector => p_vectors(i_vector) 
!    ! ...
!
!    ! ... 
!    n_blocks = ptr_vector % n_blocks
!    ! ...
!    
!  end subroutine vector_get_n_blocks
!  ! ................................................
!
!  ! ................................................
!  subroutine vector_get(i_vector, n_size, n_blocks, x)
!  implicit none
!    integer, intent(in) :: i_vector
!    integer, intent(in) :: n_size
!    integer, intent(in) :: n_blocks 
!    real(kind=8), dimension (n_blocks,n_size), intent(out) :: x 
!    ! local
!    class(plf_t_vector), pointer :: ptr_vector => null()
!
!    ! ...
!    ptr_vector => p_vectors(i_vector) 
!    ! ...
!
!    ! ... get a vector with n_size
!    call ptr_vector % get(x)
!    ! ...
!    
!  end subroutine vector_get
!  ! ................................................
!
!  ! ................................................
!  subroutine vector_get_as_array(i_vector, n, x)
!  implicit none
!    integer, intent(in) :: i_vector
!    integer, intent(in) :: n
!    real(kind=8), dimension(n), intent(out) :: x 
!    ! local
!    class(plf_t_vector), pointer :: ptr_vector => null()
!
!    ! ...
!    ptr_vector => p_vectors(i_vector) 
!    ! ...
!
!    ! ... get a vector with n_size
!    call ptr_vector % get(x)
!    ! ...
!    
!  end subroutine vector_get_as_array
!  ! ................................................
!
!  ! ................................................
!  subroutine vector_set(i_vector, n_size, n_blocks, x)
!  implicit none
!    integer, intent(in) :: i_vector
!    integer, intent(in) :: n_size
!    integer, intent(in) :: n_blocks 
!    real(kind=8), dimension (n_blocks,n_size), intent(in) :: x 
!    ! local
!    class(plf_t_vector), pointer :: ptr_vector => null()
!
!    ! ...
!    ptr_vector => p_vectors(i_vector) 
!    ! ...
!
!    ! ... set a vector with n_size
!    call ptr_vector % set(x)
!    ! ...
!    
!  end subroutine vector_set
!  ! ................................................
!
!  ! ................................................
!  subroutine vector_set_as_array(i_vector, n, x)
!  implicit none
!    integer, intent(in) :: i_vector
!    integer, intent(in) :: n
!    real(kind=8), dimension (n), intent(in) :: x 
!    ! local
!    class(plf_t_vector), pointer :: ptr_vector => null()
!
!    ! ...
!    ptr_vector => p_vectors(i_vector) 
!    ! ...
!
!    ! ... set a vector with n_size
!    call ptr_vector % set(x)
!    ! ...
!    
!  end subroutine vector_set_as_array
!  ! ................................................
!
!  ! ................................................
!  subroutine vector_read_from_file(i_vector, filename)
!  implicit none
!    integer,            intent(in) :: i_vector
!    character(len=256), intent(in) :: filename
!    ! local
!    class(plf_t_vector), pointer :: ptr_vector => null()
!
!    ! ...
!    ptr_vector => p_vectors(i_vector) 
!    ! ...
!
!    ! ... read_from_file object
!    call ptr_vector % read_from_file(filename)
!    ! ...
!    
!  end subroutine vector_read_from_file
!  ! ................................................
!
!  ! ................................................
!  subroutine vector_export(i_vector, filename, i_format)
!  implicit none
!    integer,            intent(in) :: i_vector
!    character(len=256), intent(in) :: filename
!    integer,            intent(in) :: i_format
!    ! local
!    class(plf_t_vector), pointer :: ptr_vector => null()
!
!    ! ...
!    ptr_vector => p_vectors(i_vector) 
!    ! ...
!
!    ! ... export object
!    call ptr_vector % export(filename, i_format=i_format)
!    ! ...
!    
!  end subroutine vector_export
!  ! ................................................

end module m_interface
