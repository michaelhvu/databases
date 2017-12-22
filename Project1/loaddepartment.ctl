load data
 infile '/home/m/mh/mhv8218/CSE3330/Project1/DEPARTMENT.txt'
 into table DEPARTMENT
 fields terminated by ','
 trailing nullcols
    (Dname "substr(:Dname, 2, length(:Dname) - 2)", 
     Dnumber, 
     Mgr_ssn "substr(:Mgr_ssn, 3, length(:Mgr_ssn) - 3)", 
     Mgr_start_date TERMINATED BY WHITESPACE "to_date(substr(:Mgr_start_date, 2, length(:Mgr_start_date) - 2),'DD-MM-YYYY')"
     )
