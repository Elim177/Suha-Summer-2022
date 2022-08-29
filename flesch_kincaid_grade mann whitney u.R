#Flesch-Kincaid Grade (beginner) vs Flesch-Kincaid Grade (advance)
beginner_fkg <- c(6.11, 6.01, 5.11, 6.51, 6.33, 6.27, 5.41, 0, 6.5, 5.78, 6.6,
                  4.73, 6.83, 0, 5.84, 5.71, 6.39)

advance_fkg <- c(6.72, 4.9, 6.11, 6.93, 6.85, 6.74, 7.07, 8.16, 4.84, 3.39, 
                 6.05, 6.52, 6.52, 6.91, 6.83, 7.01, 0, 5.61, 6.41, 4.6, 6.43,
                 7.32, 6.93, 6.05, 6.59, 6.75, 6.52, 6.62, 3.95, 6.15, 6.07,
                 6.71, 6.69, 6.63, 7.49, 7.36, 7.54, 6.8, 6.44, 7.32, 7.41,
                 5.67, 6.42, 6.93, 7.1, 6.59, 7.12, 6.92, 8.2, 7.05, 8.03)

wilcox.test(beginner_fkg, advance_fkg)


#output
#Wilcoxon rank sum test with continuity correction

#data:  beginner_fkg and advance_fkg
#W = 186, p-value = 0.0004673
#alternative hypothesis: true location shift is not equal to 0