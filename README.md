# Car_Analysis

# Introduction
At the moment cars are one of the best accommodates that a person can have so when they go to the market to see their options they are going to be overwhelmed with all the information there is so to make it easier companies try to simplify the information that they have for the customer to see why their brand is their best option, there is some prerequisite that some customers come with so our brand is made for sport cars enthusiastic, we focused on 6 metrics from our cars: 1) vehicle length, 2) vehicle weight, 3) spoiler angle, 4) ground clearance, 5) all drive wheels (AWD)  and lastly 6) mpg.
Miles per gallon is the most common way to see a car performance for an everyday working joe, in an article made by Jack Gillis (2017) he showed that when cars got better mpg they had an increase up to 59% in sales, with this information we are able to detect our first variable and why to use it. The spoiler angle has been proved to be one of the factors to affect mpg, in a master thesis Feng (2011) explains that finding the best angle for your spoiler will give it more downwards force thus giving it more brake capability and acceleration, the last one will give it more miles per hour. Espey & Nair (2005) discussed that car weight had a negative relation with the miles per hour, and car length was one of the most common reasons for people to considering buying a car, more size less buyers (Whitefoot & Skerlos 2012). AWDS was consider because it is a normal belief that if it is there is a less miles per gallon performance.
# Methodology 
The data was provided in form of a csv file, there where different measures and the questions where 1) which variable is the one that affects the most miles per gallon, 2) The production is going to current standards and 3) identify if the PSI from a lot is different from the population mean.
To solve the first question the analysis used was a multiple linear regression, the formula for that is:
y_i=β_0+β_1xi1+ B_2Xi2+⋯+ B_pxip+∈
Where yi= is the dependent variable, xi is the explanatory variables, B_0 is the y intercept and it´s recognized as a constant, B_p is the slope coefficients for each explanatory variable and lastly ∈ is the models error term.
The multiple linear regression is used to calculate the relationship between one single continue outcome (y) with multiple predictors thus the assumptions: 1) yi is independent from the other yi, 2) yi follows a normal distribution, 3) the mean of the distribution is a linear function for every x_(ik )and lastly 4) the variance of that distribution is the same for all yi.
For the second we created 2 tables, the first one to represent the total summary for all the population and the second one for each lot, the methodology was using the summarize function, and the group_by function from R.
Lastly the third questions was solved with the students test, this test is mostly used to compare the mean of a sample drawn from a normally distributed population when the populations standard deviation is unknown, the formula is: 
t=  ((x ̅-μ))/((s/√n))
Where  is the observed mean of the sample, µ is the theoretical mean of the population, s is the standard deviation of the sample and n is the sample size.
We could highlight that this is the formula for a sample from the population, there is still another student test that applies for two different populations, the base in the student test is to see the differences between 2 different treatments so it is commonly used with hypothesis testing.
To be able to use the t-test there needs to be a null hypothesis and a alternative hypothesis, for the null the belief is that there is no difference and the alternative hypothesis is going to be there is a difference from the sample to the population.

# Results
## Linear Regression to Predict MPG
To begging with there is a plot to see the distribution in the mpg data, this is to confirm if we are able to use linear regression and to proceed with the analysis, from mere observation we can see the bell shape in the plot so it is safe to assume that it follows a normal distribution, if it was a rigorous analysis it will not be an option to jump over a test, personally I like the Kolmogorov-Smirnov test but R is able to do the Shapiro-Wilcoxon test. If the data wasn´t normal we could try applying a logarithm to smooth the data or a normalization.
![first_model](https://user-images.githubusercontent.com/100168991/195719401-dd2f8284-0ce2-47fe-b0ea-a742da896302.png)
fig 1. first model with all 5 variables

For the first model the five factors where used as independent variables, ground clearance and vehicle length  had a value of 0% while the other variables had a p >0.05, to make sure this where the right factors another model was created with only the variables with a significant p<0.05, the second model showed that vehicle length and ground clearance had a significant value (p<0.05) this result had a adjusted square R of 66% so it is a good model to explain the variability in the data, and the intersection in the Y axis started really low, at -91.55, but our slope was greater than 0 and positive with a value of 9.648, this means that for each number we add there will be a 9,648 increment in our graph.
![second_model](https://user-images.githubusercontent.com/100168991/195719435-43674c0b-ffd6-4378-8528-fd9ab09d2a8f.png)
fig 2. second model with the significant variables


## Summary Statistics on Suspension Coils
![First_summary](https://user-images.githubusercontent.com/100168991/195719582-8af9da57-9672-407a-a1b4-b5f51902b968.png)
fig 3. Total summary
For the suspension PSI in general there was not a big difference, the mean was 	1498.78, and the variance was 62.294, this means that in our standard the production did a good job and it can go into the streets, although this is in a general way, we needed to look into each lot to see if there was an error, we can see that all the variance came from the lot 3 with a 170, this creates a problem with the standards and the lot 3 was not usable.

![Lot_summary](https://user-images.githubusercontent.com/100168991/195719592-88a71d80-8e68-4be2-92a6-020a6048fb6e.png)
fig 4. summary for each lot

# T-test on suspensions coils
The first student test was made from a sample of the population had a probability result of p=0.7109, it was a one-sample t test, this means that there was a difference from the sample to the mean of the population, the data had 3 different lots so that division was the easiest one, after the first t-test 3 subset where created, one for each lot, a one sample t-test was made for each one and the p results gave difference for all lots with a p<0.05 in all cases, this might be because the overall mean was 1498.78 and looking trough each lot and the data in there was always near 1500 PSI with data going down to 1498 but not all the data.

![first_t-test](https://user-images.githubusercontent.com/100168991/195719683-2c65162f-9ad0-41a1-ad19-7360901da636.png)
Fig 5. t-test for all the summary with only a sample

![lot_first_t-test](https://user-images.githubusercontent.com/100168991/195719723-5fabeabf-9980-474f-a8fc-b70b69307a70.png)
Fig 6. t-test for the first lot

![second_t-test](https://user-images.githubusercontent.com/100168991/195719770-b322e465-5262-4a3c-9341-6722f01fa5bc.png)
Fig 7. t-test for the second lot


![third_t-test](https://user-images.githubusercontent.com/100168991/195719808-7ff8d524-8f7d-47de-b147-90924d80c0df.png)
Fig 8. t-test for the third lot



Espey, M. & Nair, S. 2005. Automobile fuel economy: what is it worth?. Contemporary Economic Policy. 23(2): 317-323.
Feng, H. 2011. Low mass vehicle and its aerodynamic study. Master Thesis. California State University. Sacramento. 54 pp.
Gillis, J. 2017. SUVs, Crossovers and Pickups with High MPG Percent Increases Sell Better. From: https://consumerfed.org/press_release/suvs-crossovers-pickups-high-mpg-percent-increase-sell-better/
Whitefoot, K.S., & Skerlos, S. J. 2012. Design incentives to increase vehicle size created from the U.S. footprint base fuel economy standars. Energy-Policy. 41: 402-411.
