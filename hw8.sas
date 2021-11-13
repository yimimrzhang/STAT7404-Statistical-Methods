options pageno=1;

*-----------------*;
*  Problem 6.11   *;
*-----------------*;
data p11;
	infile 'C:\Users\yzhang09\Documents\CourseWork\STAT7404\Data\prob6-11.txt' firstobs=2 DLM=',';
	input site Y1982 Y1996;
    run;

* Reshape data from wide to long format using proc transpose ;
proc transpose data=p11 out=p11_long;  
 	by site;
	run;
data p11_long;
  set p11_long (rename=(col1=content)); * rename col1 to content;
  year=substr(_name_, 2); * extract year info from string;
  drop _name_;
run; 

* Perform a upper-sided test to compare PCB between years ;
 proc ttest data=p11_long sides=U ;  * sides=(2[default],L,U) indicates one or two-sided ;
	class year;
	var content;
  run;

* Construct 95% confidence interval for the difference between years;
proc ttest data=p11_long;
	class year;
	var content;
  run;

*------------------------*;
*  Additional Problem 1  *;
*------------------------*;
data stare;
	infile 'C:\Users\yzhang09\Documents\CourseWork\STAT7404\Data\stare.txt' firstobs=2 DLM=',';
	input time group;
    run;

* Perform a two-sided test to compare crossing time between groups ;
proc ttest data=stare; 
	  class group; 
      var time;
   run;

quit;
