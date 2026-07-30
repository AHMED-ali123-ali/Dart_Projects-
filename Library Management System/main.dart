import 'dart:io';

import 'Book.dart';
import 'LibraryFunctions.dart';

List<Book> bookCollection = [];

void main() {
bool continueProgram = true;

while (continueProgram) {
print('\n========== Library ==========');
print('1- Add Book');
print('2- Show All Books');
print('3- Search Book');
print('4- Borrow Book');
print('5- Return Book');
print('6- Exit');
print('=============================');

print('Enter your choice:');
int choice = int.parse(stdin.readLineSync()!);

switch (choice) {
case 1: // Add Book
print('Enter Book ID:');

String id = stdin.readLineSync()!;

print('Enter Book Title:');

String title = stdin.readLineSync()!;
print('Enter Author:');

String author = stdin.readLineSync()!;

print('Enter Price:');
double price = double.parse(stdin.readLineSync()!);

print('Is Book Available? (true/false)');

bool isAvailable = bool.parse(stdin.readLineSync()!);

Book book = Book(id, title, author, price, isAvailable);

bookCollection.add(book);

 print('Book Added Successfully');


break;
case 2:
showAllBooks(bookCollection);
break;
case 3:
print('Enter Book ID:');
String id = stdin.readLineSync()!;
searchBookById(bookCollection, id);
break;

case 4:
print('Enter Book ID:');
String id = stdin.readLineSync()!;
borrowBook(bookCollection, id);
break;

case 5:
print('Enter Book ID:');
String id = stdin.readLineSync()!;
returnBook(bookCollection, id);
break;

case 6:
print('Good Bye 👋');
continueProgram = false;
continue;

default:
print('Invalid Choice');
 }

print('\nDo you want another operation? (y/n)');
String answer = stdin.readLineSync()!.toLowerCase();

if (answer != 'y') {
continueProgram = false;
print('Good Bye 👋');
  }
  }
}