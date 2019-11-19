principal<-1000
interest<-0.04
num_periods<-10
amount<-principal
for(time in 1: num_periods) {
  amount<-amount*(1+interest)
}
print(amount)

# Initialization.
principal <- 1000
interest <- 0.04
num_periods <- 10
amount <- matrix(0, 1 + num_periods, 1)  # pre-allocation (optional)
amount[1] <- principal
# Compute values and place then in the matrix.
for (time in 1:num_periods) {
  amount[time + 1] <- amount[time] * (1 + interest)
}
# Display the results.
rownames(amount) <- c("start", 1:num_periods)
colnames(amount) <- "balance"
print(amount)





principal <- 1000
interest <- 0.04
num_periods <- 0
amount <- principal
while (amount < 2000) {
  amount <- amount * (1 + interest)
  num_periods <- num_periods + 1
}
print(num_periods)


num_payments <- 0
owed <- 200000.00
interest <- 0.003
payment <- 2000
while (owed > 0) {
  owed <- owed * (1 + interest)
  owed <- owed - payment
  num_payments <- num_payments + 1
}
final_payment = payment + owed
cat("I will make", num_payments - 1, "payments of", payment,
    "with one final payment of", final_payment, ". ",
    "Paying off this loan will take", num_payments/12, "years.\n")


N = 0
repeat {
  N <- N + 1
  print(N)
  if (N > 4) {
    break
  }
}

N = 0
repeat {
  N <- N + 1
  if (N < 2) {
    next
  }
  print(N)
  if (N > 4) {
    break
  }
}
help()
