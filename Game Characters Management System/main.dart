import 'dart:io';

import 'Character.dart';
import 'GameFunctions.dart';
import 'Menu.dart';

List<Character> character=[];
main(){
bool continueProgram =true;

while(continueProgram){
showMenu();
stdout.write('Welcome, Enter your choice ::');
int choice =int.parse(stdin.readLineSync()!);

switch(choice){
  case 1:
  addWarrior(character);
  break;

  case 2:
  addMage(character);
  break;

  case 3:
  addArcher(character);
  break;

  case 4:
  showAllCharacters(character);
  break;

  case 5:
  searchCharacterById(character);
  break;

  case 6:
  attackCharacter(character);
  break;
  case 7:
  healCharacter(character);
  break;
  case 8 :
  removeCharacter(character);
  break;
  case 9:
  print('Good Bye 👋');
  continueProgram=false;
  break;

  default:
  print('Invalid Choice');
  break;

}

if(!continueProgram){
  break;
}

  print('Do you want another operation? (y/n)');
  String answer =stdin.readLineSync()!.toLowerCase();
  if(answer=='y'){
    // كمل البرنامج //
  }
  else{
    print('Good Bye 👋');
    continueProgram=false;
  }}

}