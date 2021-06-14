# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

<p align="center"

![alttext](https://github.com/sd2wiebe/MechaCar_Statistical_Analysis/blob/main/Regression1.png)

</p>

As we can see from our linear regression model, the variables the provided a non random amount of variance to the mpg values in the dataset were:
<li> vehicle_length </li>
<li> ground_clearance </li>

These variables have a P-value of less than .001, which means the chance that they are randomly providing variance in mpg values is lass than 0.1%.

If we look at our P-value for vehicle_weight =0.077. This implies that there is 7.7% chance that vehicle weight is randomly providing variance in mpg values. Thus if we were willing accept P-values <.10, we would say that vehicle weight is also a significant factor contributing to mpg. Whereas our other variables have a very large P-value, which means any variance in mpg from these variables is very likely to be attributed to random chance.
