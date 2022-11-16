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

## T-Tests on Suspension Coils

###  Method

The analyst performed a one sample T test to compare the mean of PSI for the dataset to the population mean of 1500. The analyst then performed T tests for each individual lot.

### Results

![total sample t-test](https://github.com/cbeckler/MechaCar_Statistical_Analysis/blob/main/total_t_test.png)

* With a p-value of >0.05, the mean of the total sample is not significantly different from the population mean of 1500.

![Lot1 t-test](https://github.com/cbeckler/MechaCar_Statistical_Analysis/blob/main/lot1.png)

* With a p-value of >0.05, the mean of the Lot1 sample is not significantly different from the population mean of 1500.

![Lot2 t-test](https://github.com/cbeckler/MechaCar_Statistical_Analysis/blob/main/lot2.png)

* With a p-value of >0.05, the mean of the Lot2 sample is not significantly different from the population mean of 1500.

![Lot3 t-test](https://github.com/cbeckler/MechaCar_Statistical_Analysis/blob/main/lot3.png)

* With a p-value of 0.04, the mean of the Lot3 sample is significantly different from the population mean of 1500. This supports our previous findings that Lot3 cars had greater than acceptable variance of PSI. It appears Lot3 cars may have manufacturing issues affecting PSI.

## Study Design: MechaCar vs Competition

While data has been collected on the MPG and PSI of the MechaCar brand, what is often of most interest to consumers is vehicle value. The MechaCar brand provides bang for its buck, and the analyst would propose a linear regression test to see if MPG could be predicted by vehicle cost.

* The metric to be tested would be MPG, but analyzed by the addition dimension of cost. If a positive correlation is observed, it could provide evidence to our consumers that MechaCars are worth their price tag.
* The null hypothesis is that there is no relationship between MPG and vehicle cost. The alternative hypothesis is that there is a relationship between MPG and vehicle cost.
* The statistical test to be used would be a linear regression. To see if a relationship existed, the analyst would look at the model's p-value, using adjusted R-squared to address impact and the direction of the correlation to assess if it was a positive or negative finding for MechaCar.
* In order to run this statistical test, the MSRP of the cars would need to be added to the MGP dataset.
