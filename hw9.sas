options pageno=1;

*-----------------*;
*  Problem 10.15   *;
*-----------------*;
data p1015;
input favor$ count;
datalines;
Y 230
N 1270
;
run;

* One sample z-test for a proportion ;
proc freq data=p1015 order=data;  *order=data defines as "success" the category that first appears in the data;
	tables favor / binomial(p=0.5) alpha=0.05;  *p=hypothesized proportion;
	weight count;
	run;

*-----------------*;
*  Problem 10.21   *;
*-----------------*;
data p1021;
input treatment$ nickel$ count;
datalines;
new toxic 5
old toxic 9
new nontoxic 45
old nontoxic 41
;
run;

* Inference for comparing two proportions;
proc freq  data=p1021 order=data;  
 	tables treatment*nickel / riskdiff(equal var = null cl=wald); *equal: test equality and cl:wald gives CI for the difference;
	weight count;
	run;


*-----------------------*;
*  Additional Problem   *;
*-----------------------*;
data hand;
	infile 'C:\Users\yzhang09\Documents\CourseWork\STAT7404\Data\hand.txt' firstobs=2 DLM=',';
	input mainhand offhand sex$;
    run;

* Perform a matched pair t test to compare dexterity between mainhand and offhand;
proc ttest data=hand sides=U ; 
	  paired mainhand*offhand; 
   run;
 
data hand_diff;
	set hand;
	diff=mainhand-offhand; * create a new variable of diff in no. boxes filled;
	run;

* Perform a two-sample t-test of differences by sex;
proc ttest data=hand_diff;
	class sex;
	var diff;
  run;

quit;
