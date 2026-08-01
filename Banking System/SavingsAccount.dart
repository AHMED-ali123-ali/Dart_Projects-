import 'BankAccount.dart';

class SavingsAccount extends BankAccount {
  double? _interestRate;

  SavingsAccount(
    double interestRate,
    int accountNumber,
    String ownerName,
    double balance,
  ) : super(accountNumber, ownerName, balance) {
    setInterestRate(interestRate);
  }

  void setInterestRate(double interestRate) {
    _interestRate = interestRate;
  }

  double getInterestRate() {
    return _interestRate!;
  }

  @override
  void withdraw(double amount) {
    if (amount > getBalance()) {
      print('Insufficient Balance! ❌');
      return;
    }

    double newBalance = getBalance() - amount;
    setBalance(newBalance);

    print('Withdrawal Successful ✅');
    print('Current Balance : ${getBalance()}');
  }

  @override
  void deposit(double amount) {
    if (amount <= 0) {
      print('Invalid deposit! ❌');
      return;
    }

    double newBalance = getBalance() + amount;
    setBalance(newBalance);

    print('Deposit Successful ✅');
    print('Current Balance : ${getBalance()}');
  }
}