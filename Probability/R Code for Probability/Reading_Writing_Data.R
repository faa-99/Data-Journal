# Read from user input
x <- scan()

x <- scan(sep = ",")

x <- scan(what = character())

x <- scan(what = logical())

x <- scan(what =
            list(age = numeric(), name = character())
          )

################################################################################

# Read from file
x <- scan("athletedata.txt", what=character())

x <- scan("athletedata.txt", skip = 1, 
          what = list(Name = character(), 
                      Salary = numeric(),
                      Endorsements = numeric(), 
                      Sport = character()))

as.data.frame(x)

athlete.info <- read.table("athletedata.txt", 
                           header = TRUE)

athlete.info <- read.table("athletedata.txt", 
                           header = TRUE,
                           row.names = c("First", "Second", "Third", 
                                         "Fourth", "Fifth"))

athlete.info <- read.csv("athletedata.csv", 
                         header=TRUE)

################################################################################

# Writing Data
write.table(athlete.info, file="test.txt", 
            row.names = FALSE, quote = FALSE)

write.csv(athlete.info, file="test.csv", 
          row.names = FALSE, quote = FALSE)