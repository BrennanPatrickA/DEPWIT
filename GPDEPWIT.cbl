      *-----------------------
       IDENTIFICATION DIVISION. 
      *-----------------------
       PROGRAM-ID. GPDEPWIT.
      *-----------------------
       ENVIRONMENT DIVISION. 
      *-----------------------
       INPUT-OUTPUT SECTION. 
      *-----------------------
       DATA DIVISION. 
      *-----------------------
       FILE SECTION. 

       WORKING-STORAGE SECTION. 
       01  BALANCE            PIC 9(12).
       01  DEP-OR-WITH        PIC X(10).
       01  WITHDRAW-AMT       PIC 9(6).
       01  DEPOSIT-AMT        PIC 9(6).
      *-----------------------
       PROCEDURE DIVISION.
      *-----------------------
           DISPLAY 'CURRENT BALANCE: ' BALANCE.
           DISPLAY 'WOULD YOU LIKE TO DEPOSIT OR WITHDRAW?'.
           ACCEPT DEP-OR-WITH.

           IF DEP-OR-WITH = 'WITHDRAW' THEN
              DISPLAY 'ENTER AMOUNT: '
              ACCEPT WITHDRAW-AMT
              SUBTRACT WITHDRAW-AMT FROM BALANCE
              DISPLAY BALANCE
           END-IF.

           IF DEP-OR-WITH = 'DEPOSIT' THEN
              DISPLAY 'INSERT CASH OR CHECK(ENTER AMOUNT)'
              ACCEPT DEPOSIT-AMT
              ADD DEPOSIT-AMT TO BALANCE
              DISPLAY BALANCE
           END-IF.




              

