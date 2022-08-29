#Flesch Reading Ease (beginner) vs Flesch Reading Ease (advance)
beginner_fre <- c(57.48, 59.85, 66.35, 54.2, 56.05, 55.94, 62.01, 0, 54.01,
                  59.51, 52.49, 66.71, 51.89, 0, 59.77, 60.83, 56.11)

advance_fre <- c(52.26, 64.86, 57.67, 50.93, 52.13, 54.04, 50.32, 43.96, 65.23,
                 74.63, 57.15, 53.96, 5.33, 50.56, 51.95, 50.71, 0, 63.02, 
                 56.42, 69.94, 55.28, 48.99, 51.62, 57.63, 53.5, 52.76, 54.35,
                 53.58, 72.51, 57.69, 57.71, 51.96, 52.58, 53.3, 46.91, 48.3,
                 46.73, 52.24, 54.29, 48.51, 49.14, 60.86, 53.21, 52.05, 48.8,
                 53.58, 49.47, 50.9, 42.52, 49.56, 43.29)

wilcox.test(beginner_fre, advance_fre)

#output
#Wilcoxon rank sum test with continuity correction

#data:  beginner_fre and advance_fre
#W = 587, p-value = 0.03023
#alternative hypothesis: true location shift is not equal to 0