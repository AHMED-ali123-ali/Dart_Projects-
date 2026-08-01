// أي حساب في البنك لازم يكون عنده الحاجات دي //

abstract class BankAccount{
int? _accountNumber;
String? _ownerName;
double? _balance;




BankAccount(int accountNumber , String ownerName,double balance){
  setAccountNumber(accountNumber);
  setOwnerName(ownerName);
  setBalance(balance);
}



void setAccountNumber(int accountNumber){
  this._accountNumber=accountNumber;
}

int getAccountNumber(){
  return _accountNumber!;
}

void setOwnerName(String ownerName){
  this._ownerName=ownerName;
}

String getOwnerName(){
  return _ownerName!;
}

void setBalance(double balance){
this._balance=balance;
}

double getBalance(){
  return _balance!;
}



void showAccountInfo(){
print('Account Number : ${getAccountNumber()}');
print('Owner Name : ${getOwnerName()}');
print('Balance : ${getBalance()}');
print('=============================');
}
void withdraw(double amount);
void deposit(double amount);

}