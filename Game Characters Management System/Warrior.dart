import 'Character.dart';

class Warrior extends Character {
int? _swordDamage;
int? _armor;

Warrior(String id , String name , int health, int level,int swordDamage , int armor)
: super(id, name, health, level) 
{
setSwordDamage(swordDamage);
setArmor(armor);
}

void setSwordDamage(int swordDamage){
  this._swordDamage=swordDamage;
}

int getSwordDamage(){
  return _swordDamage!;
}

void setArmor(int armor){
  this._armor=armor;
}

int getArmor(){
  return _armor!;
}


}