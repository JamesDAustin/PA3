# PA3.R
# James Davon Austin
# 9/20/2026
# Programming Assignment 3

EmployeeID <- c(1001, 1002, 1003, 1004, 1005)
LastName <- c("Smith", "Norris", "Johnson", "Hart", "Owens")
Salary <- c(45000, 51000, 36000, 39000, 42000)

employees <- data.frame(
  EmployeeID,
  LastName,
  Salary,
  stringsAsFactors = FALSE
)

employees

summary(employees)
exempt_values <- c("N", "Y")
Exempt <- exempt_values[(employees$Salary > 50000) + 1]

employees <- cbind(employees, Exempt)

print(employees)
summary(employees)
# Display the first two rows
employees[1:2, ]

# Display the structure of the data frame
str(employees)

# Add new employee
new_employee <- data.frame(
  EmployeeID = 1006,
  LastName = "Rogers",
  Salary = 55000,
  Exempt = "Y",
  stringsAsFactors = FALSE
)

employees <- rbind(employees, new_employee)

# Display final data frame
print(employees)