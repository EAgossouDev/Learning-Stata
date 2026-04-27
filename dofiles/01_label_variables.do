*===============================================================================
* 01_label_variables.do
* Purpose: Replicate StataCorp Video 1 - How to label variables
* Data: http://www.stata.com/users/youtube/rawdata.dta
*===============================================================================

version 15.0
clear all
set more off
capture log close
log using "output/01_label_variables.log", replace text

*---------------------------
* 1. LOAD THE VIDEO DATASET
*---------------------------
use http://www.stata.com/users/youtube/rawdata.dta, clear

*---------------------------
* 2. DESCRIBE VARIABLES - To see names and labels
*---------------------------
describe

*---------------------------
* 3. APPLY THE LABEL 
*---------------------------
label variable age "Age (Years)"

*---------------------------
* 4. CHECK THAT IT WORKED
*---------------------------
histogram age

log close