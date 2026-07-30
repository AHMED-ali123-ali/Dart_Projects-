import 'Book.dart';

void showAllBooks(List <Book> books){

for(int i=0;i<books.length;i++){

books[i].showBookInfo();

}

}

void searchBookById(List<Book> books,String id){

  for(int i =0; i<books.length;i++){
   if(id==books[i].getId()){
    print('Book Found');
    books[i].showBookInfo();
    return;
   }
  }
  print('Book Not Found');
}

void borrowBook(List<Book> books, String id) {
  for (int i = 0; i < books.length; i++) {
    if (id == books[i].getId()) {
      if (books[i].getisAvailable()) {
        books[i].setisAvailable(false);
        print('Borrowed Successfully');
        return;
      } else {
        print('Book already borrowed');
        return;
      }
    }
  }

  print('Book Not Found');
}

void returnBook(List<Book> books, String id) {
  for (int i = 0; i < books.length; i++) {
    if (id == books[i].getId()) {
      if (!books[i].getisAvailable()) {
        books[i].setisAvailable(true);
        print('Returned Successfully');
        return;
      } else {
        print('Book is already available');
        return;
      }
    }
  }

  print('Book Not Found');
}