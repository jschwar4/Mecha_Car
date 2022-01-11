# Mecha_Car
1.
<img width="635" alt="Multivariate" src="https://user-images.githubusercontent.com/90073490/148866347-e229efd2-e762-4840-b636-15d89ee0bc4d.png">
a.	Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Vehicle length and ground clearance all provide non random amounts of variance to mpg. 

b.	Is the slope of the linear model considered to be zero? Why or why not?
The slope is not considered equal to zero. Given the statistical significance of vehicle length and ground clearance, and their slopes of 6.267 and 3.546 respectively, the model overall has a non-zero slope.
c.	Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
This model predicts 71.49% (R^2 = .7149) of the variance in mpg, which is a good predictive model. The adjusted R^2  (.6825) is also only slightly lower than the multiple R^2, suggesting that the predictive power of the model is not due to the addition of weakly correlated variables.

2.	
Total Summary:

<img width="335" alt="Total Summary" src="https://user-images.githubusercontent.com/90073490/148866382-5a429169-d6c3-438f-972f-309003c19c82.png">
Lot Summary:

<img width="493" alt="Lot Summary" src="https://user-images.githubusercontent.com/90073490/148866397-37a2e829-84f2-465a-a196-8b3a29519600.png">

a.	The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
The variance within coil PSI is within the manufacturer’s specifications, when viewed without respect to lot. However, grouping by lot shows that the variance is very low for Lot 1 and Lot 2, while Lot 3 has variance outside the manufacturer’s specifications.

3. 
T-test (All lots):

<img width="466" alt="Total T-test" src="https://user-images.githubusercontent.com/90073490/148866435-ed534ed0-b0d2-4bee-ad0e-0715dc2aa3b6.png">
T-test (By lot):

<img width="542" alt="Lot T-test" src="https://user-images.githubusercontent.com/90073490/148866452-c2808b15-2542-43b0-9ed5-537d8413ca88.png">
There is a significant difference between the lot means and the given mean of 1500 PSI, both for the combined and individual lots. This suggests that all samples are statistically distinct from the mean.

4. The statistical study design has the following:

o	A metric to be tested is mentioned (5 pt)

o	A null hypothesis or an alternative hypothesis is described (5 pt)

o	A statistical test is described to test the hypothesis (5 pt)

o	The data for the statistical test is described (5 pt)

The dependent metric that I’m choosing for study in this case is horsepower. The independent variable would be horsepower – essentially testing which manufacturer’s cars get more bang for their buck. The first test would be to attempt to predict horsepower using mpg, with the null hypothesis being that horsepower and mpg are unrelated. For this, I would generate a univariate model to predict horsepower using mpg and determine whether the p value indicates statistical significance. 
Assuming it does, I would generate a variable to represent the relationship between miles per gallon and horsepower (horsepower/mpg), then use a two-population t-test to determine which/ whether each manufacturer produces vehicles with significantly better ratios.
