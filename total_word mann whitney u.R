#Total words (beginner) vs Total words (advance)
beginner_tw <- c(3972, 5850, 5499, 4155, 6392, 4555, 4471, 0, 3703, 6353, 2122,
                 3377, 4923, 0, 9501, 3535, 5034)

advance_tw <- c(2780,3437, 5589, 3440, 4254, 6316, 4667, 7247, 5658, 9067,
                2762, 4280, 6876, 2980, 4153, 3578, 0, 5224, 5550, 4961, 4948, 
                5634, 8679, 5332, 4044, 4405, 4578, 4055, 12031, 9627,21719, 
                2299, 4166, 3465, 3177, 4673, 3546, 2923, 4194, 3596, 5251,
                7885, 3158, 4240, 1366, 4204, 2957, 3119, 6477, 3249, 3612)

wilcox.test(beginner_tw, advance_tw)


#output
#Wilcoxon rank sum test with continuity correction

#data:  beginner_tw and advance_tw
#W = 424, p-value = 0.8986
#alternative hypothesis: true location shift is not equal to 0