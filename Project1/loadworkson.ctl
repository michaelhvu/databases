load data
 infile '/home/m/mh/mhv8218/CSE3330/Project1/WORKS_ON.txt'
 into table WORKS_ON
 fields terminated by ','
 trailing nullcols
    (Essn "substr(:Essn, 2, length(:Essn) - 2)", 
     Pno, 
     Hours TERMINATED BY WHITESPACE)
 