#Gunning Fog Index (beginner) vs Gunning Fog Index (advance)
beginner_gfi <- c(9.83, 9.76, 8.63, 10.24, 9.47, 9.39, 8.97, 0, 10.49, 9.45, 
                10.74, 8.6, 10.48, 0, 9.38, 10.06, 10.54)

advance_gfi <- c(10.54, 8.62, 9.64, 10.72, 10.81, 10.43, 11, 12, 8.59, 7.45, 9.86,
               10.34, 10.35, 11, 10.49, 11.02, 0, 9.28, 10.22, 8.08, 10.22,
               11.16, 10.88, 9.73, 10.37, 10.46, 10.67, 10.76, 7.94, 9.78,
               9.46, 10.94, 10.35, 10.19, 11.43, 11.59, 11.59, 10.69, 10.43,
               11.25, 11.19, 9.3, 10.63, 10.33, 11.91, 10.6, 11.22, 11.18,
               12.41, 11.1, 12.31)
wilcox.test(beginner_gfi, advance_gfi)


#output
#Wilcoxon rank sum test with continuity correction

#data:  beginner_gfi and advance_gfi
#W = 208, p-value = 0.001437
#alternative hypothesis: true location shift is not equal to 0