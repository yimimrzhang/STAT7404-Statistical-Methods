options pageno=1;

*--------------------------*;
*  Seasonal Cold Example   *;
*--------------------------*;
data cold;
input season$ count;
datalines;
winter 374
spring 292
summer 169
fall 165
;
run;

proc freq data=cold order=data; *order=data: sort categories by order of appearance in dataset; 
	tables season / chisq testp=(40 40 10 10);
	weight count;
	run;

*--------------------------------------*;
*  Age vs Political Ideology Example   *;
*--------------------------------------*;
data politics;
input age$ ideology$ count;
datalines;
30 L 83
30 M 140
30 C 73
30-49 L 119
30-49 M 280
30-49 C 161
50+ L 88
50+ M 284
50+ C 214
;
run;

proc freq  data=politics order=data;  
 	tables age*ideology / chisq;
	weight count;
	run;

quit;
