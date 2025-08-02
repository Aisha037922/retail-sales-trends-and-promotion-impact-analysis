library(plotly)
library(dplyr)
library(ggplot2)
library(lubridate)

#import data
data <- read.csv("Retail_Transaction_Dataset copy.csv")

#Assess whether discounts lead to higher basket sizes, more transactions, or increased revenue.
dis_df <- data %>% 
  group_by(DiscountApplied...) %>% 
  summarise(
    Total_revenue = sum(TotalAmount, na.rm = TRUE),
    Avg_Basket_Size = mean(Quantity, na.rm = TRUE),
    Avg_Order_Value = mean(TotalAmount, na.rm = TRUE),
    Transaction_Count = n()
  )
print(dis_df)

ggplot(dis_df, aes(x= , y= )) + 
  geom_boxplot()

### Line chart of total sales over time
ggplot(data, aes(x=TotalAmount, y=TransactionDate))+
  geom_line() +
  ggtitle("Evolution of something")

### Box plots by discount brackets


