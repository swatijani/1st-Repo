df <- read.csv("~/Documents/Data Wrangling/DW_2/titanic_original.csv")
is.na(df$embarked) <- df$embarked == ""
df$embarked[is.na(df$embarked)] <- "S"
age_mean <- mean(df$age, na.rm = TRUE)
df$age[is.na(df$age)] <- age_mean
is.na(df$boat) <- df$boat == ""
df$boat <- as.character(df$boat)
df$boat[is.na(df$boat)] <- "None"
df$has_cabin_number <- ifelse(df$cabin == '', 0, 1)
write.csv(df, file = "titanic_clean.csv")

