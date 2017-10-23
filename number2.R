> shrub <- read.csv("shrub-volume-experiment.csv")

> names(shrub)
[1] "site"       "experiment" "length"     "width"      "height"    

> str(shrub)
'data.frame':	12 obs. of  5 variables:
 $ site      : int  1 1 1 2 2 2 3 3 3 4 ...
 $ experiment: int  1 2 3 1 2 3 1 2 3 1 ...
 $ length    : num  2.2 2.1 2.7 3 3.1 2.5 1.9 1.1 3.5 2.9 ...
 $ width     : num  1.3 2.2 1.5 4.5 3.1 2.8 1.8 0.5 2 2.7 ...
 $ height    : num  9.6 7.6 2.2 1.5 4 3 4.5 2.3 7.5 3.2 ...

> head(shrub, 6)
  site experiment length width height
1    1          1    2.2   1.3    9.6
2    1          2    2.1   2.2    7.6
3    1          3    2.7   1.5    2.2
4    2          1    3.0   4.5    1.5
5    2          2    3.1   3.1    4.0
6    2          3    2.5   2.8    3.0

>dplyr::select(shrub,3)
   length
1     2.2
2     2.1
3     2.7
4     3.0
5     3.1
6     2.5
7     1.9
8     1.1


9     3.5
10    2.9
11    4.5
12    1.2

> dplyr::select(shrub, 1 , 2)
   site experiment
1     1          1
2     1          2
3     1          3
4     2          1
5     2          2
6     2          3
7     3          1
8     3          2
9     3          3
10    4          1
11    4          2
12    4          3

> filter(shrub, height > 5)
  site experiment length width height
1    1          1    2.2   1.3    9.6
2    1          2    2.1   2.2    7.6
3    3          3    3.5   2.0    7.5
4    4          2    4.5   4.8    6.5

> shrub %>%
+     mutate(volume = length * width * height)
   site experiment length width height  volume
1     1          1    2.2   1.3    9.6  27.456
2     1          2    2.1   2.2    7.6  35.112
3     1          3    2.7   1.5    2.2   8.910
4     2          1    3.0   4.5    1.5  20.250
5     2          2    3.1   3.1    4.0  38.440
6     2          3    2.5   2.8    3.0  21.000
7     3          1    1.9   1.8    4.5  15.390
8     3          2    1.1   0.5    2.3   1.265
9     3          3    3.5   2.0    7.5  52.500
10    4          1    2.9   2.7    3.2  25.056
11    4          2    4.5   4.8    6.5 140.400
12    4          3    1.2   1.8    2.7   5.832
