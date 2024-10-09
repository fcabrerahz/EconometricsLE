clear all
set more off
cd "D:\Dropbox\CIDE\Clases\Econometrics\Class Exercises\Dummies"
use TeachingRatings, clear

*Descriptives
sum course_eval female minority nnenglish intro onecredit

tab intro
tab female
tab minority
tab nnenglish

histogram beauty

histogram course_eval

twoway (scatter course_eval beauty) (lfit course_eval beauty)


*Regressions (no interactions)
reg course_eval beauty

reg course_eval beauty female

reg course_eval beauty female minority

reg course_eval beauty female minority nnenglish intro onecredit


*regression interacting beauty and age
estimates clear
eststo: reg course_eval c.beauty##c.age, robust
esttab

*margins moving age 
reg course_eval c.beauty##c.age, robust
margins , at(age=(25(10)55) beauty=(0(1)2)) post 
eststo est1 
coefplot est1,  vertical


*interaction sex
gen male=0
replace male=1 if female==0

estimates clear
eststo: reg course_eval beauty if female==1, robust

eststo: reg course_eval beauty if female==0, robust

eststo: reg course_eval c.beauty##i.female , robust

eststo: reg course_eval c.beauty##i.male , robust


esttab, label star( * 0.10 ** 0.05 *** 0.01)  keep(beauty 1.female 1.female#* 1.male 1.male#*) se


*Scatterplots
gen beauty_female = beauty * female

estimates clear
eststo: reg course_eval beauty female beauty_female, robust

gen eval_female = course_eval if female==1
gen eval_male = course_eval if female==0
predict pred

gen pred_female = pred if female==1
gen pred_male = pred if female==0


label var eval_female "Evaluation Females"
label var eval_male "Evaluation Males"
label var pred_female "Regression line: Female"
label var pred_male "Regression line: Male"
twoway scatter eval_female pred_female eval_male pred_male beauty, ///
msymbol(o i + i) mcolor(blue blue red red) ///
c(. l . l) lcolor(blue blue red red) ///
legend(cols(1)) title("Beauty and Evaluations") ///
xtitle("Beauty") ytitle("Course Evaluation")
*graph export ps3_14a.emf,replace





