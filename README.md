# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

### Method

The analyst performed a multiple linear regression on the MechaCar data, using vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, and AWD as variable to predict MPG.

### Results

![multiple regression results](https://github.com/cbeckler/MechaCar_Statistical_Analysis/blob/main/multiple_regression.png)

* The variables vehicle_length and ground_clearance provided a significant amount of variance in the model, with p-values below 0.05. vehicle_weight was near-significant at p=0.08, but did not clear the threshold.
* The slope of the linear model is not considered to be zero, because the overall p-value of the model is < 0.05. 
* This model effectively predicts miles per gallon, with an adjusted R-squared of 0.6825. This means nearly 68% of the variance in MPG is predicted by our model, which is quite good for real life data.

## Summary Statistics on Suspension Coils

### Method

The analyst used summary and groupby functionality to create summary outputs to analyze the PSI of the MechaCar suspension coils overall and by manufacturing lot.

###

Total Summary:

![total summary](https://github.com/cbeckler/MechaCar_Statistical_Analysis/blob/main/total_summary.png)

Lot Summary:

![lot summary](https://github.com/cbeckler/MechaCar_Statistical_Analysis/blob/main/lot_summary.png)

* The design specifications of MechaCar specify that the variance of PSI must not exceed 100 pounds per square inch. While overall MechaCar cars are meeting this target, cars manufactured in Lot 3 are as a whole failing this criteria.
