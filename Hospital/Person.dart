class Person {
String? _name;
int? _age;

void setName(String name){
 if(name.isEmpty){
  print('Invalid Name');
 }
 else{
   this._name=name;
 }
}
String getName(){
  return _name!;
}

void setAge(int age){
  if(age<=0){
    print('Invalid Age');
  }
  else{
    this._age=age;
  }
}
int getAge(){
  return _age!;
}

}