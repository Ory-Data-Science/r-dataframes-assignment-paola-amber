#The first data set called by_site_meanvol shows the mean volume at each site. 
#The second data set called by_experiment_meanvol shows the mean volume in each experiment. 


> shrub_data <- read.csv("shrub-volume-experiment.csv")
> by_site_meanvol <- shrub_data %>%
+        mutate("volume" = length * width * height) %>%
+        group_by(site) %>%
+        summarize(mean_volume = mean(volume))
> print(by_site_meanvol)
# A tibble: 4 x 2
   site mean_volume
  <int>       <dbl>
1     1    23.82600
2     2    26.56333
3     3    23.05167
4     4    57.09600



> by_experiment_meanvol <- shrub_data %>%
+    mutate("volume" = length * width * height) %>%
+    group_by(experiment) %>%
+    summarise(mean_volume = mean(volume))
> print(by_experiment_meanvol)
# A tibble: 3 x 2
  experiment mean_volume
       <int>       <dbl>
1          1    22.03800
2          2    53.80425
3          3    22.06050