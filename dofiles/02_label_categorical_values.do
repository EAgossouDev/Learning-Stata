*===============================================================================
* 02_label_categorical_values.do
* Purpose: Replicate StataCorp Video 2 - How to label the values of categorical variables
* Data: http://www.stata.com/users/youtube/rawdata.dta
*===============================================================================

version 15.0
clear all
set more off
capture log close
log using "output/02_label_categorical_values.log", replace text

*---------------------------
* 1. LOAD THE VIDEO DATASET
*---------------------------
use http://www.stata.com/users/youtube/rawdata.dta, clear

*---------------------------
* 2. TABULATE VARIABLE SEX - Check frequencies before labeling
*---------------------------
tabulate sex

*---------------------------
* 3. APPLY THE VALUE LABEL
*---------------------------
label define sex 0 "Female" 1 "Male"  
label values sex sex

*---------------------------
* 4. CHECK THAT IT WORKED
*---------------------------
tabulate sex

*---------------------------
* 5. CHECK - Assert labels applied correctly
*---------------------------
assert sex == 0 | sex == 1  // Variable should only have 0 and 1
assert "`:label (sex) 0'" == "Female"  // Check label for 0
assert "`:label (sex) 1'" == "Male"    // Check label for 1

log close