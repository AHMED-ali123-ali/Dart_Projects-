import 'dart:io';

import 'Archer.dart';
import 'Character.dart';
import 'Mage.dart';
import 'Warrior.dart';

void addWarrior(List<Character> character){ 
print('Enter Warrior ID:');
String id =stdin.readLineSync()!;
print('Enter Warrior Name :');
String name =stdin.readLineSync()!;
print('Enter Health :');
int health = int.parse(stdin.readLineSync()!);
print('Enter Level :');
int level =int.parse(stdin.readLineSync()!);
print('Enter Sword Damage :');
int swordDamage=int.parse(stdin.readLineSync()!);
print('Enter Armor :');
int armor =int.parse(stdin.readLineSync()!);

Warrior newWarrior =Warrior(id, name, health, level, swordDamage, armor);
character.add(newWarrior);
print('Warrior Added Successfully');
}

void addMage(List<Character> character){
print('Enter Mage ID:');
String id =stdin.readLineSync()!;
print('Enter Mage Name :');
String name =stdin.readLineSync()!;
print('Enter Mage Health :');
int health = int.parse(stdin.readLineSync()!);
print('Enter Mage Level :');
int level =int.parse(stdin.readLineSync()!);
print('Enter Mage Mana :');
int mana=int.parse(stdin.readLineSync()!);
print('Enter spellPower :');
int spellPower =int.parse(stdin.readLineSync()!);

Mage newMage = Mage(mana, spellPower, id, name, health, level);
character.add(newMage);
print('Maga Added Successfully');
}

void addArcher(List<Character> character){
print('Enter Archer ID:');
String id =stdin.readLineSync()!;
print('Enter Archer Name :');
String name =stdin.readLineSync()!;
print('Enter Archer Health :');
int health = int.parse(stdin.readLineSync()!);
print('Enter Archer Level :');
int level =int.parse(stdin.readLineSync()!);
print('Enter Archer Arrows :');
int arrows =int.parse(stdin.readLineSync()!);
print('Enter Archer Range :');
int range =int.parse(stdin.readLineSync()!);

Archer newArcher = Archer(id, name, health, level, arrows, range);

character.add(newArcher);
print('Archer Added Successfully');

}

void showAllCharacters(List<Character> character){

if(character.isEmpty){
  print('No Characters Found');
}
else{
for(int i =0;i<character.length;i++){
print('==================================');
print('Character Number ${i+1}');
character[i].showCharacterInfo();
print('==================================');
}
}



}