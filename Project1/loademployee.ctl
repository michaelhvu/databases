load data
 infile '/home/m/mh/mhv8218/CSE3330/Project1/EMPLOYEE.txt'
 into table EMPLOYEE
 fields terminated by ','
 trailing nullcols
    (Fname "substr(:Fname, 2, length(:Fname) - 2)", 
     Minit NULLIF(Minit = BLANKS) "substr(:Minit, 3, length(:Minit) - 3)", 
     Lname "substr(:Lname, 3, length(:Lname) - 3)", 
     Ssn "substr(:Ssn, 3, length(:Ssn) - 3)", 
     Bdate "to_date(substr(:Bdate, 3, length(:Bdate) - 3),'DD-MM-YYYY')", 
     Address TERMINATED BY "'," "substr(:Address, 3, length(:Address) - 2)", 
     Sex "substr(:Sex, 3, length(:Sex) - 3)", 
     Salary, 
     Super_ssn NULLIF(Super_ssn = BLANKS) "substr(:Super_ssn, 3, length(:Super_ssn) - 3)", 
     Dno TERMINATED BY WHITESPACE
     )
