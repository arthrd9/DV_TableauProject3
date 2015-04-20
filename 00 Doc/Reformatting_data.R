setwd("~/Desktop/SPRING14/CS329E/DV_TableauProject3/01 SQL Crosstabs")
file_path <- ""
file_path <- ""
measures <- c("DRG", "Provider", "PName", "ProviderAddress", "HHRDescription", "TotalDischarges", "Covered_Charges", "Total_Payments", "Medicare_Payments")

df <- inpatient.csv(file_path, stringsAsFactors = FALSE)

#Replace "." with "_"
names(df) <- gsub("\\.+", "_", names(df))

#Delete rows with NA data
df <- na.omit(df)

#Write out reformatted data
write.csv(df, paste(gsub(".csv", "", file_path), ".reformatted.csv", sep=""), row.names=FALSE)