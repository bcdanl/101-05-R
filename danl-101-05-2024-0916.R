

# accessing subsets of vectors --------------------------------------------


my_vector <- c(10, 20, 30, 40, 50)
my_vector[1]
my_vector[2]
my_vector[3]
my_vector[5]
my_vector[6]

# slicing
my_vector[2:4]
my_vector[3:5]



# logical condition
logi_condition <- my_vector > 10
logi_condition
my_vector[logi_condition]
