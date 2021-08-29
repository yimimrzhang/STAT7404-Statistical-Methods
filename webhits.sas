options pageno=1;


data website;
input hits @@;
cards;
10 12 15 15 16
16 17 20 20 21
24 25 27 32 45
;


*-------------------------------------------*;
* Quick Summary Statistics using PROC MEANS *;
*-------------------------------------------*;
proc means data=website
		N MIN MAX MEAN MEDIAN Q1 Q3 VAR STD;  * specify requested statistics *;
	var hits;
run;


*---------------------------------------------*;
*  Descriptive Analysis using PROC UNIVARIATE *;
*---------------------------------------------*;
PROC UNIVARIATE DATA=WEBSITE PLOT;  * PLOT gives stem-and-leave, box plot and normal prob. plot *;
	VAR HITS;
RUN;

quit;


