# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

<p align="center"

![alttext](https://github.com/sd2wiebe/MechaCar_Statistical_Analysis/blob/main/Regression1.png)

</p>

As we can see from our linear regression model, the variables the provided a non random amount of variance to the mpg values in the dataset were:
<li> vehicle_length </li>
<li> ground_clearance </li>
<br>
These variables have a P-value of less than .001, which means the chance that they are randomly providing variance in mpg values is lass than 0.1%.

If we look at our P-value for vehicle_weight =0.077. This implies that there is 7.7% chance that vehicle weight is randomly providing variance in mpg values. Thus if we were willing accept P-values <.10, we would say that vehicle weight is also a significant factor contributing to mpg. Whereas our other variables have a very large P-value, which means any variance in mpg from these variables is likely to be attributed to random chance.

The slope of the model would not be considered to be zero, because that would imply that none of our variables have any significant effect on MPG. We have already demonstrated that vehicle length and ground clearance are very significant variables that can explain differences in MPG.

If we isolate these variables and graph their relationship to MPG with a line of best fit we see:

<p align="center"

![alttext](https://github.com/sd2wiebe/MechaCar_Statistical_Analysis/blob/main/MPGxGround_clearance.png)

</p>

<p align="center"

![alttext](https://github.com/sd2wiebe/MechaCar_Statistical_Analysis/blob/main/MPGxVehicle_length.png)

</p>

I do not believe our model effectively predicts MPG of MechaCar prototypes. Even though we have a decent r-squared value of .7149, this is still not high enough to accurately predict mpg of MechaCar prototypes. Our regression leaves us with this equation where AWD is a dummy variable with value either 0 or 1:

MPG= 6.26(vehicle length) + 0.00124(vehicle weight) + .0689(spoiler angle) + 3.54(ground clearance) - 3.41(AWD) -104

If we use this equation with the MechaCar dataset and see what the predicted MPG is vs the actual MPG for each prototype we get:

<p align="center"

![alttext](https://github.com/sd2wiebe/MechaCar_Statistical_Analysis/blob/main/mpg_prediction1.png)

</p>
On one hand, we have half of the first 27 prototypes mpg being predicted accurately within 10% of the actual mpg which is not too bad. But on the other hand there is a lot of volatility in the inaccuracy of some of the predictions, for example we have 8/27 model predicted mpg values that were 20% or more off of the actual mpg.
Thus we are on our way to an accurate model, however there are clearly other variables we are missing that we need in  our model to accurately and efficiently predict MPG in MechaCar prototypes.
 
## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. I have summarized the suspension coil data as follows:
<br>
### All lots in total:
<p align="center"

![alttext](https://github.com/sd2wiebe/MechaCar_Statistical_Analysis/blob/main/Total_Summary.png)

</p>

### Each lot individually:
<p align="center"

![alttext](https://github.com/sd2wiebe/MechaCar_Statistical_Analysis/blob/main/Lot_Summary.png)

</p>

It is apparent that if we look at the PSI variance of all of the lots in aggregate, the variance is less than 100 PSI. However if we look at each lot individually we see that lots 1, and 2 had PSI variance of .98 and 7.47 respectfully, whereas lot 3 had PSI variance of a whopping 170.29. Thus when we look from a high level of aggregate variance we would accept that the current variance in PSI is allowable, however when we drill down into further detail and look at the numbers by lot we see that the problem is largely occuring in lot 3.

## T-Tests on Suspension Coils

In order to determine whether the mean PSI across manufacturing lots is statistically different from the population mean of 1500 Pounds per square inch (PSI), I did a t-test with the following results:
<p align="center"

![alttext](https://github.com/sd2wiebe/MechaCar_Statistical_Analysis/blob/main/t_test1.png)

</p>
 This test yields a P-value of .06 which is slightly to high for our confidence interval of 95%. Thus we must accept the null hypothesis that the sample mean is statistically the same as the population mean of 1500.
 
I then conducted similar t-tests that test whether the mean for each manufacturing lot is statistically different than the population mean of 1500 PSI.

### Lot 1:
<p align="center"

![alttext](https://github.com/sd2wiebe/MechaCar_Statistical_Analysis/blob/main/t_test_lot1.png)

</p>

For lot 1 we see there is a p-value of 1 - that can't be right, but it is! This is because the mean is exactly 1500, thus we certainly must accept the null hypothesis that the a significant difference in means does not exist.

### Lot 2:
<p align="center"

![alttext](https://github.com/sd2wiebe/MechaCar_Statistical_Analysis/blob/main/t_test_lot2.png)

</p>

For lot 2 we see there is a p-value of .61, thus we must accept the null hypothesis that the a significant difference in means does not exist.
### Lot 3:
<p align="center"

![alttext](https://github.com/sd2wiebe/MechaCar_Statistical_Analysis/blob/main/t_test_lot3.png)

</p>
For lot 3 we see there is a p-value of .042, which is less than .05. Thus we must reject the null hypothesis that a significant difference in means does not exist, and accept the alternative hypothesis that a significant difference in means does exist.

## Study Design: MechaCar vs Competition

The following are details regarding a study that will be preformed in order to determine the performance of the MechaCar's vs the competition. The metrics that will be tested are:
<li> Turning Radius </li>
<li>Top Speed</li>
<li>Second Moment</li>

### Turning Radius (ft - lower is better)
Turning radius is defined as the amount of space needed for a vehicle to successfully turn around (180 degrees). Thus for this metric the less amount of space needed is better. To test this metric vs the competition we will use a one tail, two sample t-test. This is because we only want to see if the MechaCar's turning radius is statistically lower than the competition.
<li>Null hypothesis: The competition has a statistically lower turning radius from the observed sample means</li>
<li>Alternative Hypothesis: The MachaCar has a statistically lower turning radius from the observed sample means </li>
<li>Data Needed: We would need the mean turning radius in feet for both the competition and the MechaCar's</li>

### Top Speed (MPH -Higher is better)

Top speed is defined as the maximum rate of straight line travel. Thus we would ideally want a higher top speed in miles per hour. To test this metric vs the competition we will use a one tail, two sample t-test. This is because we only want to see if the MechaCar's top speed is statistically higher than the competition.
<li>Null hypothesis: The competition has a statistically higher top speed from the observed sample means</li>
<li>Alternative Hypothesis: The MachaCar has a statistically higher top from the observed sample means </li>
<li>Data Needed: We would need the mean top speed in MPH for both the competition and the MechaCar's</li>

### Second Moment (PSI- lower permits quicker turn-in)
The second moment is defined as the moment of inertia about a vertical axis of a vehicle. The lower the PSI of the second moment the better a car is able to turn in to a corner. To test this metric vs the competition we will use a one tail, two sample t-test. This is because we only want to see if the MechaCar's second moment PSI is statistically lower than the competition.
<li>Null hypothesis: The competition has a statistically lower second moment PSI from the observed sample means</li>
<li>Alternative Hypothesis: The MachaCar has a statistically lower second moment PSI from the observed sample means </li>
<li>Data Needed: We would need the mean second moment PSI for both the competition and the MechaCar's</li>


