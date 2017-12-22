load data
 infile '/home/m/mh/mhv8218/CSE3330/Project1/PROJECT.txt'
 into table PROJECT
 fields terminated by ','
 trailing nullcols
    ( Pname "substr(:Pname, 2, length(:Pname) - 2)", 
      Pnumber, 
      Plocation "substr(:Plocation, 3, length(:Plocation) - 3)",
      Dnum TERMINATED BY WHITESPACE)
