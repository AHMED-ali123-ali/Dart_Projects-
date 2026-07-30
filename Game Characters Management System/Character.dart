class Character {

String? _id;
String? _name;
int? _health;
int? _level;

Character(String name , String id , int health, int level)

{

setId(id);
setName(name);
setHealth(health);
setLevel(level);

}

void setId(String id){
  this._id=id;
}

String getId(){
  return _id!;
}


void setName(String name){
  this._name=name;
}

String getName(){
  return _name!;
}


void setHealth(int health){
  this._health=health;
}

int getHealth(){
  return _health!;
}

void setLevel(int level){
  this._level=level;
}

int getLevel(){
  return _level!;
}


void showCharacterInfo(){

print('ID : ${getId()}');
print('Name : ${getName()}');
print('Health : ${getHealth()}');
print('Level : ${getLevel()}');

}



}