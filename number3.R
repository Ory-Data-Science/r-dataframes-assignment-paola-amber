> by_experiment <- group_by(shrub, experiment) %>%
> avg_height <- summarize(by_experiment, avg_height = mean(height)) %>%
+     print(by_experiment) %>%
+     print(avg_height)
# A tibble: 3 x 2
  experiment avg_height
       <int>      <dbl>
1          1       4.70
2          2       5.10
3          3       3.85


> by_site <- group_by(shrub, site)
> max_height <- summarize(by_site, max_height = max(height))
> print(max_height)
# A tibble: 4 x 2
   site max_height
  <int>      <dbl>
1     1        9.6
2     2        4.0
3     3        7.5
4     4        6.5
