# ggplot2
Purpose: Plot lines that indicate significance between either 2 or 3 boxes (* = 0.05, ** = 0.01, ***= 0.001, or n.s. = Not Significant).

Function Imputs 
1. Chatacter vector of values 
2. Character vector of group
Function Outputs 
1. ggplot plot 
2. P-values & statistics
3. Data frame 

Function Outline 
#Combine 2 vectors into a data frame
#Make boxplot
#Perform t-tests for all possible groups to get significance 
#Add the "significance bars"
