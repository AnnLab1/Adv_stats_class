#Question 1

df <- data.frame(
  country = c("France", "Spain", "Germany", "Spain", "Germany", "France", "Spain", "France", "Germany", "France"),
  age = c(44, 27, 30, 38, 40, 35, 52, 48, 45, 37),
  salary = c(6000, 5000, 7000, 4000, 8000, 6000, 5000, 7000, 4000, 8000),
  purchased = c("No", "Yes", "No", "No", "Yes", "Yes", "No", "Yes", "No", "Yes")
)
oneWay <- table(df$purchased)
print(oneWay)

twoWay <- table(df$country, df$purchased)
print(twoWay)

#Question 2 

data(mtcars)
mtcars_df <- table(mtcars$gear, mtcars$cyl, dnn = c("Gears", "Cylinders"))
mtcars_df
marginal_table <- addmargins(mtcars_df)
marginal_table
prop_table <- prop.table(mtcars_df)
prop_table
