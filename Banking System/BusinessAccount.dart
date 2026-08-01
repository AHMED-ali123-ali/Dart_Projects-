import 'BankAccount.dart';

class BusinessAccount extends BankAccount {

double? _transactionFee;

BusinessAccount(double transactionFee,int accountNumber,String ownerName,double balance):super(accountNumber,ownerName,balance){
setTransactionFee(transactionFee);

}


void setTransactionFee(double transactionFee){
  this._transactionFee=transactionFee;
}

double getTransactionFee(){
  return _transactionFee!;
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
  // إجمالي المبلغ المطلوب خصمه = المبلغ + رسوم العملية
  double totalAmount = amount + getTransactionFee();

  // التأكد أن الرصيد يكفي
  if (totalAmount > getBalance()) {
    print('Insufficient Balance! ❌');
    return;
  }

  // حساب الرصيد الجديد
  double newBalance = getBalance() - totalAmount;

  // تحديث الرصيد
  setBalance(newBalance);

  print('Withdrawal Successful ✅');
  print('Transaction Fee : ${getTransactionFee()}');
  print('Current Balance : ${getBalance()}');
}

}