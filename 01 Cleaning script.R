# load packages 
library(tidyverse)
library(janitor)

# clean names of variables
clean1_data <- janitor::clean_names(raw_data)

#pivot_wider
clean_data <- clean1_data |> 
  pivot_wider(
    id_cols = c(family_id, parent_gender, starts_with("mr_")),
    names_from = ld_time,
    values_from = starts_with("ld_"),
    names_sep = "_w"
  )

# check variables types
str(clean_data)

# Check missing values
colSums(is.na(clean_data))

# listwise deletion
n_before <- nrow(clean_data)

selected_data <- na.omit(clean_data)

n_after <- nrow(selected_data)

n_removed <- n_before - n_after

# number of rows removed 4 out of 272

# check distributions
summary(selected_data)
# negative values only exist in centered variables


# check duplicates

sum(duplicated(selected_data))

# check for outliers

numeric_vars <- selected_data[sapply(selected_data, is.numeric)]

outlier_count <- sapply(numeric_vars, function(x) {
  sum(x < quantile(x, .25, na.rm = TRUE) - 1.5*IQR(x, na.rm = TRUE) |
        x > quantile(x, .75, na.rm = TRUE) + 1.5*IQR(x, na.rm = TRUE),
      na.rm = TRUE)
})

sort(outlier_count, decreasing = TRUE)

# verifying ranges to check values of the outliers

sapply(selected_data, range, na.rm = TRUE)

# All values fell within the valid response categories specified in the questionnaire

selected_data <- selected_data %>%
  group_by(family_id) %>%
  mutate(person_id = paste0(family_id, "_", row_number())) %>%
  ungroup() %>%
  relocate(person_id, .before = 1)

