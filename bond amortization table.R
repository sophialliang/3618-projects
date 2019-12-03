#First, we are going to set several important values. 
#Later, calculate the semiannual coupon rate and semiannual yield rate by respectively dividing 2 from the annual coupon rate and nominal annual rate, convertible semiannually.
#Then, calculate the coupon size of bond by using the formula of price of bond.
#At Last, we are able to build our bond amortization table by using the values we got before.

#set values
n<-10
C<-10000
r<-0.06
i<-0.04
redemption_value<-C
par_value<-C
semi_annual_coupon<-r/2
semi_annual_yield<-i/2
num_periods<-n*2

#calculate the coupon size of bond
coupon_size<-par_value*semi_annual_coupon
P<-coupon_size*((1-(1+semi_annual_yield)^(-num_periods))/semi_annual_yield)+redemption_value*(1+semi_annual_yield)^(-num_periods)
Book_Value<-P
payment_size<-coupon_size

#build bond amortization table
row1<-c(0,0,P)
bond_amortization_table<-matrix(0,1+num_periods,3)
bond_amortization_table[1,]<-row1
for(time in 1: num_periods) {
  interest_paid<-Book_Value*semi_annual_yield
  principal_repaid<-payment_size-interest_paid
  Book_Value<-Book_Value-principal_repaid
  bond_amortization_table[time+1,]<-c(interest_paid,principal_repaid,Book_Value)
}
#label the rows and columns
rownames(bond_amortization_table)=c("Start",1:num_periods)
colnames(bond_amortization_table)=c("Interest Paid","Principal Repaid","Book Value")
bond_amortization_table

