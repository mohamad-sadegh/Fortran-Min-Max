! ------------------------------------------------------
! Writed by : Mohammad Sadegh Darab Pour
! This program reads in a number of integer input until
! a negative one, and determines the minimum and maximum
! of the input data values.
! ------------------------------------------------------

PROGRAM  MinMax
    IMPLICIT  NONE

    INTEGER :: Minimum, Maximum
    INTEGER :: Count
    INTEGER :: Input

    Count = 0
    DO
        WRITE(*,*)  'Please enter a number (or -1 for exit) : '
        READ(*,*) Input
        IF (Input < 0)  EXIT
        Count = Count + 1
        WRITE(*,*)  'Data item #', Count, ' = ', Input
        IF (Count == 1) THEN
            Maximum = Input
            Minimum = Input
        ELSE
            IF (Input > Maximum)  Maximum = Input
            IF (Input < Minimum)  Minimum = Input
        END IF
    END DO

    WRITE(*,*)
    IF (Count > 0) THEN
        WRITE(*,*)  'Found ', Count, ' data items'
        WRITE(*,*)  '  Maximum = ', Maximum
        WRITE(*,*)  '  Minimum = ', Minimum
    ELSE
        WRITE(*,*)  'No data item found.'
    END IF

END PROGRAM  MinMax