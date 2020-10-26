# MechaCar Statistical Analysis
## Linear Regression to Predict MPG
#### Coefficients:
![Chart2](https://github.com/ajinderbains/MechaCar_Statistical_Analysis/blob/main/images/del1.png)
![chart1](https://github.com/ajinderbains/MechaCar_Statistical_Analysis/blob/main/images/del2.png)

1. We need to check value for  Pr(>|t|) to find non random amount of variancevariables.As it is shown in above screenshot  Pr(>|t|) values for Intercept,Vehical_length and ground_clearence provode non random amount of vatiance to the MPG values in dataset.P-values for these variabled are smaller than significance value0.05.As it is also sclear from signif. Codes in screenshot.
2. P value in regression model is 5.35e-11, which is considerable smaller than assumed significant p lalue 0.05.So based on this slope of the linear model cannot be zero.
3. If we  look at the r squared/adjusted r  value of model is 0.68 or 0.7 and meant 70% model will predict correctly.But still we cannot ignore the imapact of Intercept,Vehical_length and ground_clearence variables on MPG.

## Summary Statistics on Suspension Coils
#### Statistical Summary :
![Chart3](https://github.com/ajinderbains/MechaCar_Statistical_Analysis/blob/main/images/del2_PSI.png)

#### Statisical Summary for each Lot:
![chart4](https://github.com/ajinderbains/MechaCar_Statistical_Analysis/blob/main/images/del2_lot.png)

1. Variance for total summary is 76.23 which is less than 100.
2. Same can be seen for Lot1 and Lot2 ,variance for lot 1 and Lot2 is less than 100.
3. But Variance for Lot 3  220.01 is way higher than 100.

## T-Tests on Suspension Coils
![chart5](https://github.com/ajinderbains/MechaCar_Statistical_Analysis/blob/main/images/del3.png)
![chart6](https://github.com/ajinderbains/MechaCar_Statistical_Analysis/blob/main/images/del3lot1.png)
![chart7](https://github.com/ajinderbains/MechaCar_Statistical_Analysis/blob/main/images/del3lot2.png)
![chart8](https://github.com/ajinderbains/MechaCar_Statistical_Analysis/blob/main/images/del3lot3.png)

As it is clear from above screenshots for t test as whole and for all individual lots , p-value that was resulted from the One Sample T-Test, the value is  much higher than the the significance level of 0.05. This means that there is not enough evidence to reject the null hypothesis. This means that the suspension coil's PSI result is statistically similar to the mean population results of 1,500 PSI.

## Study Design: MechaCar vs Competition

1. I will include the metric "fuel efficiency" in my prototype to compare with the competition.I  will collect the fuel efficiency mpg levels for MechaCar prototypes at 
different distances and city ,Highway roads and test if the mean of this set is not less than the mean fuel efficiency mpg for comparable vehicles at the market.
So I will also collect the fuel effciency mpg levels for our competitors vehicles at different distances and city ,Highway roads.

2. So Hypotheses will be:

   H0: There is no statistical difference between MechaCar  mpg dataset and other comparable vehicles mpg dataset on the market.
   Ha: The true mean of MechaCar MPG dataset is more than the mean of competitor's fuel efficiency values.

3. I will use paired t test for comparison:

    **x** is the first numeric vector of sample data.(MechaCar  prototype)
    
    **y** is the second numeric vector of sample data.(Competitor's Prototype or dataset)
  
    **Paired** tells the t.test() function to perform a paired t-test. This value must be set to TRUE.
  
    **alternative**  will be "greater" so that mean of X is greater than mean of y.

4. I will need following data for statistical test.
   - Model
   - Manufacturing Year
   - Cost
   - Fuel Efficiency
   - Fuel Efficiency in City Road
   - Fuel efficiency on Highway



