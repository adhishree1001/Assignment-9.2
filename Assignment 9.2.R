#1. Calculate the P Value for the test in Problem 2. 

View(UCBAdmissions)
apply(UCBAdmissions, c(1, 2), sum)
mosaicplot(apply(UCBAdmissions, c(1, 2), sum),
           main = "Student admissions at UC Berkeley")
prop.table(UCBAdmissions) 

ftable(round(prop.table(UCBAdmissions), 3),
       row.vars="Dept", col.vars = c("Gender", "Admit"))
prop.test(1755,4526 , p=0.4, alternative = "less" , conf.level = 0.99, correct = F)

#2. How do you test the proportions and compare against hypothetical props? 

prop.test(13,32 , p=0.4, alternative = "two.sided" , conf.level = 0.95, correct = F)

#Test Hypothesis: proportion of automatic cars is 40%. 
