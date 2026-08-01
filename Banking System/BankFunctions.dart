import 'dart:io';
import 'BankAccount.dart';
import 'BusinessAccount.dart';
import 'CurrentAccount.dart';
import 'SavingsAccount.dart';


// إضافة حساب توفير جديد إلى البنك//
void addSavingsAccount(List<BankAccount> accounts) {
print('Enter Account Number :');
int accountNumber =int.parse(stdin.readLineSync()!);
print('Enter Owner Name :');
String ownerName =stdin.readLineSync()!;
print('Enter Initial Balance :');
double balance =double.parse(stdin.readLineSync()!);
print('Enter Interest Rate :');
double interestRate =double.parse(stdin.readLineSync()!);

SavingsAccount savingsAccount =SavingsAccount(interestRate, accountNumber, ownerName, balance);
accounts.add(savingsAccount);
print('Savings Account Added Successfully ✅');
}

void addCurrentAccount(List<BankAccount> accounts){
print('Enter Account Number :');
int accountNumber =int.parse(stdin.readLineSync()!);
print('Enter Owner Name :');
String ownerName =stdin.readLineSync()!;
print('Enter Initial Balance :');
double balance =double.parse(stdin.readLineSync()!);
print('Enter Overdraft Limit :');
double overdraftLimit =double.parse(stdin.readLineSync()!);
CurrentAccount currentAccount=CurrentAccount(overdraftLimit, accountNumber, ownerName, balance);
accounts.add(currentAccount);
print('Current Account Added Successfully ✅');
}

void addBusinessAccount(List<BankAccount> accounts){

print('Enter Account Number :');
int accountNumber =int.parse(stdin.readLineSync()!);
print('Enter Owner Name :');
String ownerName =stdin.readLineSync()!;
print('Enter Initial Balance :');
double balance =double.parse(stdin.readLineSync()!);
print('Enter TransactionFee :');
double transactionFee =double.parse(stdin.readLineSync()!);
BankAccount bankAccount=BusinessAccount(transactionFee, accountNumber, ownerName, balance);
accounts.add(bankAccount);
print('Business Account Added Successfully ✅');
}

void showAllAccounts(List<BankAccount> accounts) {

  if (accounts.isEmpty) {
    print('No Accounts Found ❌');
    return;
  }

  for (int i = 0; i < accounts.length; i++) {
    print('========== Account ${i + 1} ==========');
    accounts[i].showAccountInfo();
  }
}

void searchAccountByNumber(List<BankAccount> accounts){

print('Enter Account Number :');
int accountNumber =int.parse(stdin.readLineSync()!);
for(int i =0; i<accounts.length;i++){
if(accountNumber==accounts[i].getAccountNumber()){
  accounts[i].showAccountInfo();
  return;
}}
print('Account Not Found ❌');

}

void depositToAccount(List<BankAccount> accounts){
print('Enter Account Number :');
int accountNumber =int.parse(stdin.readLineSync()!);

print('Enter Deposit Amount :');
double deposit =double.parse(stdin.readLineSync()!);

for(int i=0;i<accounts.length;i++){
if(accountNumber==accounts[i].getAccountNumber()){
  accounts[i].deposit(deposit);
  return;
}}
print("Account Not Found ❌");
}

void withdrawFromAccount(List<BankAccount> accounts) {
  print('Enter Account Number :');
  int accountNumber = int.parse(stdin.readLineSync()!);

  print('Enter Withdrawal Amount :');
  double amount = double.parse(stdin.readLineSync()!);

  for (int i = 0; i < accounts.length; i++) {
    if (accountNumber == accounts[i].getAccountNumber()) {
      accounts[i].withdraw(amount);
      return;
    }
  }

  print('Account Not Found ❌');
}

void removeAccount(List<BankAccount> accounts){
  print('Enter Account Number :');
  int accountNumber = int.parse(stdin.readLineSync()!);

  for(int i=0 ;i<accounts.length;i++){
   if(accountNumber==accounts[i].getAccountNumber()){
    accounts.removeAt(i);
    print('Account Removed Successfully ✅');
    return;
   }}
   






}