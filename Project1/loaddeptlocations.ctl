load data
 infile '/home/m/mh/mhv8218/CSE3330/Project1/DEPT_LOCATIONS.txt'
 into table DEPT_LOCATIONS
 fields terminated by ','
 trailing nullcols
    (Dnumber, 
     Dlocation TERMINATED BY WHITESPACE "substr(:Dlocation, 2, length(:Dlocation) - 2)")
 