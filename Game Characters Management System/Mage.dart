import 'Character.dart';

class Mage extends Character {

int? _mana;
int? _spellPower;


Mage(int mana , int spellPower,String id,String name,int health ,int level) : super(id, name, health, level)  {

setMana(mana);
setSpellPower(spellPower);

}



void setMana(int mana){
  this._mana=mana;
}

int getMana(){
return _mana!;
}

void setSpellPower(int spellPower){
  this._spellPower=spellPower;
}

int getSpellPower(){
  return _spellPower!;
}





}