void main() {
  Book book1 = Book('1984', 'George Orwell', '4567890', true);
  Book book2 = Book('Got', 'Harper Lee', '12567891', true);
  Book book3 = Book('1984', 'George Orwell', '4567890', true);
  Book book4 = Book('To Kill a Mockingbird', 'Harper Lee', '12567891', true);
  Book book5 =
      Book('The Great Gatsby', 'F. Scott Fitzgerald', '11223344', false);
  Book book7 = Book('Moby Dick', 'Herman Melville', '22334455', true);
  Book book6 = Book('War and Peace', 'Leo Tolstoy', '33445566', true);
  Book book8 = Book('Pride and Prejudice', 'Jane Austen', '44556677', false);
  Book book9 =
      Book('The Catcher in the Rye', 'J.D. Salinger', '55667788', true);
  Book book10 = Book('Ulysses', 'James Joyce', '66778899', false);
  Book book11 = Book('The Odyssey', 'Homer', '77889900', true);
  Book book12 =
      Book('Crime and Punishment', 'Fyodor Dostoevsky', '88990011', true);

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.listBook();

  Member member = Member('John Doe', 'M001');

  library.loansBook(book1, member);

  library.listLoanBook();
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, this.isAvailable);
}

class Library {
  List<Book> books = [];
  List<Loan> loans = [];

  void loansBook(Book book, Member member) {
    if (book.isAvailable) {
      book.isAvailable = false;
      loans.add(Loan(book, member, DateTime.now()));
    } else {
      print('${book.title} is not available');
    }
  }

  void addBook(Book book) {
    books.add(book);
  }

  void listBook() {
    print('--------------------List All books in Library--------------------');
    for (var book in books) {
      print(
          '| Title:${book.title} |  Author:${book.author} | ISNB:${book.isbn} |Available:${book.isAvailable}|');
    }
    print(
        '--------------------------------------------------------------------');
  }

  void listLoanBook() {
    print('--------------------List All books in Library--------------------');
    for (var loan in loans) {
      print(
          '| Title:${loan.book.title} |  Author:${loan.book.author} | ISNB:${loan.book.isbn} |Available:${loan.book.isAvailable}|');
    }
    print(
        '--------------------------------------------------------------------');
  }
}

class Member {
  String name;
  String memberId;

  Member(this.name, this.memberId);
}

class Loan {
  Book book;
  Member member;
  DateTime loanDate;
  DateTime? returnDate;

  Loan(this.book, this.member, this.loanDate, [this.returnDate]);

  void returnBook() {
    returnDate = DateTime.now();
    book.isAvailable = true;
  }
}
