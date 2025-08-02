library(plotly)
library(dplyr)
library(ggplot2)

#import data
data <- read.csv("Retail_Transaction_Dataset copy.csv")

#Compare transactions with and without discounts/promotions.
with_wout <- data %>%
  group_by(DiscountApplied...) %>%
  summarise(
    Total_revenue = sum(TotalAmount, na.rm = TRUE),

  )
print(with_wout)

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

