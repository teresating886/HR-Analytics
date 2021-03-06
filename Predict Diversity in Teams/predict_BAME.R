library("QuantPsyc")
setwd("/Users/Teresa/Documents/R/Predict Diversity in Teams")
emp.data <- read.csv("emp_diversity_data.csv", 
                     header = T, sep=",",
                     stringsAsFactors = F)

summary(emp.data)

# Five independent variables are decided to build a LM and the dependent 
# variable is the percentage of BAME

BAME.lm <- lm(BAME ~ NumberFeMaleTeamLeads + Function + GroupSize +
                     LondonorNot + PercentMale, 
              data=emp.data)

# Show result
summary(BAME.lm)

# standardized beta coefficient - to know which variable has bigger impact
# The higher the absolute value of the beta coefficient, 
# the stronger the effect.
lm.beta(BAME.lm)


