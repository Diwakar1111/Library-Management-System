# Library-Management-System
This project is a basic library management system implemented in Dart. It allows the management of books, library members, and loans of books. Here’s an explanation of each component:

### Classes

1. **Book**
   - **Attributes**: 
     - `title`: The title of the book.
     - `author`: The author of the book.
     - `isbn`: The International Standard Book Number, a unique identifier for the book.
     - `isAvailable`: A boolean indicating if the book is currently available for loan.
   - **Constructor**: Initializes the attributes of the `Book` class when a new book object is created.

2. **Library**
   - **Attributes**:
     - `books`: A list that stores all the book objects added to the library.
     - `loans`: A list that stores all the loan objects, each representing a book loaned out to a member.
   - **Methods**:
     - `loansBook(Book book, Member member)`: Loans a book to a member if the book is available. It marks the book as unavailable and adds a loan record to the loans list.
     - `addBook(Book book)`: Adds a book to the library’s collection.
     - `listBook()`: Prints a list of all books in the library, showing their title, author, ISBN, and availability.
     - `listLoanBook()`: Prints a list of all books currently on loan, displaying their details.

3. **Member**
   - **Attributes**:
     - `name`: The name of the library member.
     - `memberId`: A unique identifier for the member.
   - **Constructor**: Initializes the member attributes when a new member object is created.

4. **Loan**
   - **Attributes**:
     - `book`: The book object being loaned.
     - `member`: The member who borrowed the book.
     - `loanDate`: The date when the book was loaned out.
     - `returnDate`: The date when the book was returned, initialized as null (meaning the book hasn’t been returned yet).
   - **Constructor**: Initializes a new loan, recording the book, the member, and the date of the loan.
   - **Methods**:
     - `returnBook()`: Sets the `returnDate` to the current date and marks the book as available.

### Main Function
- In the `main` function, several `Book` objects are created with different attributes.
- A `Library` object is instantiated, and books are added to the library using the `addBook` method.
- The library’s collection of books is displayed using the `listBook` method.
- A `Member` object is created, representing a library member.
- A book is loaned to the member using the `loansBook` method, and then the list of loaned books is displayed using the `listLoanBook` method.

### Summary
This project simulates a library management system where books can be added to the library, loaned out to members, and tracked for availability. It provides a basic structure that could be extended with additional features like managing multiple members, returning books, and handling overdue books.
