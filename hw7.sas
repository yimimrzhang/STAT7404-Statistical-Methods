options pageno=1;

*-----------------*;
*  Problem 5.59   *;
*-----------------*;
data rates;
	infile 'C:\Users\yzhang09\Documents\CourseWork\STAT7404\Data\prob5-59.txt' firstobs=2 DLM=',';
	input results;
    run;

* Perform a lower-sided test with mu_0=20 ;
 proc ttest data=rates sides=L  h0=20;  * sides=(2[default],L,U) indicates one or two-sided ;
      var results;
   run;

* Construct 99% confidence interval ;
proc ttest data=rates alpha=0.01;
      var results;
   run;

*------------------------*;
*  Additional Problem 2  *;
*------------------------*;
data exercise;
	infile 'C:\Users\yzhang09\Documents\CourseWork\STAT7404\Data\exercise.txt' firstobs=2 DLM=',';
	input capacity;
    run;

* Construct 99% confidence interval ;
proc ttest data=exercise;   * alpha=0.05 by default ; 
      var capacity;
   run;

quit;
