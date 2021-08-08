# MechaCar_Statistical_Analysis
In this project, statistics and hypothesis testing is used to analyze a series of datasets from the automotive industry using R programming language.

## Tools used

R-programming , tidyverse, ggplot2, Hypothesis Testing, Regression Analysis

## Linear Regression to Predict MPG

In this activity we used multiple regression to predict the mpg of MechaCar prototypes which a number of variables such as car length, weight, spoiler angle etc. Our linear regression resulted in the following linear equation: 
mpg = (6.267e+00)vehicle_length + (1.245e-03)vehicle_weight + (6.877e-02)spoiler_angle + (3.546e+00)ground_clearance + (-3.411e+00)AWD + (-1.040e+02)
A screenshot of our regression is provided below. 

![](https://github.com/ysbcode/MechaCar_Statistical_Analysis/blob/main/images/Linear%20Regression.PNG?raw=true)

From our regression analysis, we can conclude the following: 
 - Vehicle length, ground clearance are provide non-random amount of variance in the dataset which means these variables are significant in terms of their impact on mpg. There are other significant factors which have not been included in the model which is evidenced by the fact that the intercept is also significant. 
 - The p-value of this linear model is 5.35e-11, which is smaller than the assumed significance level of 0.05%. Therefore,it can be stated that there is sufficient evidence to reject our null hypothesis, which means that the slope of this linear model is not zero. 
 - The Multiple R squared value is 0.7149 which means the model can predict mpg with an accruacy of 71%. This shows the model is an effective model.

 ## Summary Statistics on Suspension Coils

 The summary statistics for Suspension Coils contains production data from multiple production lots. We have created a summary for the overall production lots. A screenshot is provided below: 

 ![](https://github.com/ysbcode/MechaCar_Statistical_Analysis/blob/main/images/Suspension%20Coil%20Total%20Summary.PNG?raw=true)

 We have also calculated summary statistics for the individual lots. The screenshot is provided below. 
 ![](https://github.com/ysbcode/MechaCar_Statistical_Analysis/blob/main/images/Suspension%20Coil%20Lot%20Summary.PNG?raw=true)

  - From the summery data, we can see that the mean and medians are very close which suggests that the data does not have any skewness and the data is normally distributed. 
  - The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. As per the above statistics, the variance is about 62 pounds per inch which is below the specified value. However one of the lots have a variance of over 170. Therefore, the current manufacturing data meets this design specification for all manufacturing lots in total but not each lot individually.

## T-Tests on Suspension Coils

For this section, we ran T-tests for the overall manufacturing data and also T-tests for individual lots. The purpose of the test was to compare the population mean of 1500 with the same means to determine if they were statistically different from the population. The results of the T-tests are provided below: 

Overall production: 

![](https://github.com/ysbcode/MechaCar_Statistical_Analysis/blob/main/images/T-test%20Overall.PNG?raw=true)

Lot 1

![](https://github.com/ysbcode/MechaCar_Statistical_Analysis/blob/main/images/T-test%20Lot1.PNG?raw=true)

Lot 2

![](https://github.com/ysbcode/MechaCar_Statistical_Analysis/blob/main/images/T-test%20Lot2.PNG?raw=true)

Lot 3

![](https://github.com/ysbcode/MechaCar_Statistical_Analysis/blob/main/images/T-test%20Lot3.PNG?raw=true)

 - Assuming the significance level of 5%, the p-value (0.06028) for the overall production data is above our significance level. The data is considered to have normal distribution so we do not have sufficient evidence to reject the null hypothesis. Therefore we can say that the sample mean is not statistically different from the population mean of 1500. 
 - When looking at the individual lot data, we can see that Lot 3 has a p value (0.04168) lower than our significance level of 5%. Therefore we can say that Lot 3 has a sample mean which is statistically different from the population.

## MechaCars Design Study

The metrics which I believe would be of interest to a consumer are the fuel efficiency and cost of ownership

 - The user would like to determine whether the mpg fuel efficiency of MechaCars is better than other competitors or not. Hence we can use ANOVA tests for this purpose which is used to compare the means of a continuous numerical variable across a number of groups. A one-way ANOVA is used to test the means of a single dependent variable across a single independent variable with multiple groups(e.g.fuel efficiency(mpg) of different cars based on vehicle class).For conducting this test, mpg data of all the concerned manufacturers are required. The null hypotheses is that the means of mpg of all groups are equal.And the alternate hypotheses is that at least one of the means is different from all other groups.

 - Cost: The user would want to determine whether the cost of MechaCars is less than or equal to that of other manufacturers. To compare the cost of various manufacturers we need to perform ANOVA test in which we need to have mainly cost and fuel efficiency data of all the concerned manufacturers. For this the null hypotheses will be that the means of costs of all groups are equal. And the alternate hypotheses is that at least one of the means is different from all other groups.
