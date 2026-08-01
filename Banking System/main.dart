
import 'dart:io';

import 'BankAccount.dart';
import 'BankFunctions.dart';
import 'Menu.dart';

List<BankAccount> accounts=[];
main(){
bool continueProgram = true;

while(continueProgram){

showMenu();

stdout.write('Enter your choice: ');
int choice = int.parse(stdin.readLineSync()!);

switch(choice){
  case 1 :
  addSavingsAccount(accounts);
  break;

  case 2 :
  addCurrentAccount(accounts);
  break;

  case 3 :
  addBusinessAccount(accounts);
  break;

  case 4 :
  showAllAccounts(accounts);
  break;

  case 5 :
  searchAccountByNumber(accounts);
  break;

  case 6 :
  depositToAccount(accounts);
  break;
  case 7 :
  withdrawFromAccount(accounts);
  break;

  case 8 :
  removeAccount(accounts);
  break;
  case 9 :
  print('Thanks For You ');
  continueProgram=false;
  break;
  default:
  print('Invalid Choice ❌');
  break;
}

print('Do you want any other procedure [y,n]');

String charcter =stdin.readLineSync()!.toUpperCase();

if(charcter=='Y'){
continueProgram=true;
}
else{
  print('Thank you so much for your time');
   continueProgram = false;
}
}
}