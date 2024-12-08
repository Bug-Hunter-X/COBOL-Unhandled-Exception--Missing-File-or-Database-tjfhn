0000-0000-0000-0000
       PROCEDURE DIVISION.
           DECLARE FILE-STATUS PIC 99.

           OPEN INPUT my-file
           IF FILE-STATUS NOT = 0 THEN
               DISPLAY "Error opening file: " FILE-STATUS
               STOP RUN
           END-IF

           READ my-file AT END DISPLAY "End of file reached"

           CLOSE my-file
           STOP RUN.

       * The improved version includes file status checking using the FILE-STATUS variable.
       * If the file does not exist, the error is caught and a more informative message is displayed.
       * Error handling is crucial for production-ready COBOL programs to ensure robustness and prevent unexpected crashes.