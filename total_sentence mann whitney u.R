#Total sentence (beginner) vs Total sentence (advance)
beginner_ts <- c(1140, 1322, 1239, 1267, 1793, 1395, 1389, 0, 1190, 1925, 791, 
                 1084, 1511, 0, 2585, 939, 1306)
advance_ts <- c(922, 1246, 1554, 1106, 1227, 1534, 1395, 1741, 2084, 4179, 897,
                1355, 1755, 1047, 1260, 1082, 0, 1135, 1359, 1125, 1393, 1574,
                2472, 1595, 1261, 1282, 1355, 1213, 3711, 2548, 6300, 816, 1361,
                1064, 1021, 1386, 1102, 873, 1377, 1086, 1298, 2184, 1348, 1131,
                524, 1294, 968, 1023, 1853, 1150, 1113)


wilcox.test(beginner_ts, advance_ts)


#output

#Wilcoxon rank sum test with continuity correction

#data:  beginner_ts and advance_ts
#W = 406.5, p-value = 0.7074
#alternative hypothesis: true location shift is not equal to 0