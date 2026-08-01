import 'BankAccount.dart';

class CurrentAccount extends BankAccount {
double? _overdraftLimit;

CurrentAccount(double overdraftLimit,int accountNumber ,String ownerName,double balance):super(accountNumber,ownerName,balance){

setOverdraftLimit(overdraftLimit);

}

void setOverdraftLimit(double overdraftLimit){
  this._overdraftLimit=overdraftLimit;
}

double getoOverdraftLimit(){
  return _overdraftLimit!;

}

  @override
  void deposit(double amount){

if(amount<=0){
  print('Invalid deposit!❌');
  return;
}

double newBalance =getBalance()+amount;
setBalance(newBalance);
print('Deposit Successful ✅');
print('Current Balance : ${getBalance()}');
}

  @override
  void withdraw(double amount) {
  double maximumWithdraw = getBalance() + getoOverdraftLimit();
  if(amount>maximumWithdraw){
    print('Withdrawal exceeds overdraft limit! ❌');
    return;
  }
  double newBalance = getBalance()-amount;
  setBalance(newBalance);
  print('Withdrawal Successful ✅\n Current Balance :${getBalance()} ');
  }










}