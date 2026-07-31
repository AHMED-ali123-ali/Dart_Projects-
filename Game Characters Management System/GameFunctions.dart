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
}}

void searchCharacterById(List<Character> character){
  print('Enter Your Id');
  String id =stdin.readLineSync()!;
for(int i=0;i<character.length;i++){
  if(id==character[i].getId()){
    print('Character Found');
    character[i].showCharacterInfo();
    return;
  }}
  print('Character Not Found');
}

void attackCharacter(List<Character> characters) {
  print('Enter Attacker ID:');
  String attackerId = stdin.readLineSync()!;

  print('Enter Target ID:');
  String targetId = stdin.readLineSync()!;

  Character? attacker;
  Character? target;

  // البحث عن المهاجم والهدف
  for (int i = 0; i < characters.length; i++) {
    if (characters[i].getId() == attackerId) {
      attacker = characters[i];
    }

    if (characters[i].getId() == targetId) {
      target = characters[i];
    }
  }

  if (attacker == null || target == null) {
    print('Character Not Found');
    return;
  }

  int damage = 0;

  if (attacker is Warrior) {
    damage = attacker.getSwordDamage();
  } else if (attacker is Mage) {
    damage = attacker.getSpellPower();
  } else if (attacker is Archer) {
    // مؤقتًا اعتبرنا الـ Range هو الضرر
    damage = attacker.getRange();
  }

  int newHealth = target.getHealth() - damage;

  if (newHealth < 0) {
    newHealth = 0;
  }

  target.setHealth(newHealth);

  print('Attack Successful');
  print('${target.getName()} Health = ${target.getHealth()}');
}

void healCharacter(List<Character> character){
  print('Enter Character ID :');
  String id =stdin.readLineSync()!;
  print('Enter Heal Amount');
int amount =int.parse(stdin.readLineSync()!);
for(int i=0;i<character.length;i++){
  if(id==character[i].getId()){
 amount = character[i].getHealth()+amount;
 if(amount>100){
   character[i].setHealth(100);
    print('Character Healed Successfully');
    return;

 }
 else{
 character[i].setHealth(amount);
 print('Character Healed Successfully');
 return;
 }

  }
}
print('Character Not Found');
}

void removeCharacter(List<Character>character){
print('Enter Character ID');
String id =stdin.readLineSync()!;
for(int i =0;i<character.length;i++){
if(character[i].getId()==id){
  character.removeAt(i);
  print('Character Removed Successfully');
  return;
}}
print('Character Not Found');
}