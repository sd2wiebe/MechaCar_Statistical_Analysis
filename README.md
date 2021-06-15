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

I do not believe our model effectively predicts MPG of MechaCar prototypes. Even though we have a decent r-squared value of .7149, this is still not high enough to accurately predict mpg of MechaCar prototypes. Our regression leaves us with this equation:

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
### All lots in total
<p align="center"

![alttext](https://github.com/sd2wiebe/MechaCar_Statistical_Analysis/blob/main/Total_Summary.png)

</p>

### Each lot individually
<p align="center"

![alttext](https://github.com/sd2wiebe/MechaCar_Statistical_Analysis/blob/main/Lot_Summary.png)

</p>

It is apparent that if we look at the PSI variance of all of the lots in aggregate, the variance is less than 100 PSI. However if we look at each lot individually we see that lots 1, and 2 had PSI variance of .98 and 7.47 respectfully, whereas lot 3 had PSI variance of a whopping 170.29. Thus when we look from a high level of aggregate variance we would accept that the current variance in PSI is acceptable, however when we drill dwon into further detail and look at the numbers by lot we see that the problem is occuring in lot 3.



