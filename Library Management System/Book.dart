class Book {

String? _id;
String? _title;
String? _author;
double? _price; 
bool? _isAvailable;

Book(String id , String title , String author , double price, bool isAvailable){
this._id=id;
this._title=title;
this._author=author;
this._price=price;
this._isAvailable=isAvailable;
}

void setId(String id){
 this._id=id;
}
String getId(){
  return _id!;
}

void setTitle(String title){
  this._title=title;
}

String getTitle(){
  return _title!;
}


void setAuthor(String author){
  this._author=author;
}

String getAuthor(){
  return _author!;
}


void setPrice(double price){
  this._price=price;
}

double getPrice(){
  return _price!;
}


void setisAvailable(bool isAvailable){
  this._isAvailable=isAvailable;
}

bool getisAvailable(){
  return _isAvailable!;
}

void showBookInfo(){
print('========== Book ==========');
print('ID : ${getId()}');
print('Title : ${getTitle()}');
print('Author : ${getAuthor()}');
print('Price : ${getPrice()}');
print('Available : ${getisAvailable()}');
print('==========================');
}







}