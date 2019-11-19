#First, we are going to set several important values. 
#Then, calculate the monthly effective rate by using annual effective rate. 
#Later, we calculate the payment size by using the present value of loan, interest rate per period(monthly effective rate), and number of payment periods.
#At Last, we are able to build our amortization table by using the values we got before.

#calculate the monthly effective rate
n<-10
L<-200000
i<-0.03
num_periods<-n*12
annual_rate<-i
monthly_rate<-(1+annual_rate)^(1/12)-1

#calculate the payment size per period
outstanding_balance<-L
payment_size<-outstanding_balance*monthly_rate/(1-(1+monthly_rate)^(-num_periods))

#build the amortization table
row1<-c(0,0,outstanding_balance)
amortization_table<-matrix(0,1+num_periods,3)
amortization_table[1,]<-row1
for(time in 1: num_periods) {
  interest_paid<-monthly_rate*outstanding_balance
  principal_repaid<-payment_size-interest_paid
  outstanding_balance<-outstanding_balance-principal_repaid
  amortization_table[time+1,]<-c(interest_paid,principal_repaid,outstanding_balance)
}
amortization_table

#label the rows and columns
rownames(amortization_table)=c("Start",1:num_periods)
colnames(amortization_table)=c("Interest Paid","Principal Repaid","Outstanding Balance")
amortization_table

