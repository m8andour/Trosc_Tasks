// import 'package:dart_task_1/dart_task_1.dart' as dart_task_1;

void main(List<String> arguments) {
  Books book1 = 
      Books("The Flash", "Morgan Freeman", 300);
  book1.displayInfo();

print("");

  Novel novel1 =
      Novel('The Great Gatsby', 'F. Scott Fitzgerald', 218, 'Fiction');
  novel1.displayInfo();
}

class Books {
  String title;
  String author;
  int numberOfPages;

  Books(this.title, this.author, this.numberOfPages);

  void displayInfo() {
    print("Title : $title");
    print("Author : $author");
    print("Number Of Pages:$numberOfPages");
  }
}

class Novel extends Books {
  String genre;

  Novel(String title, String author, int numberOfPages, this.genre)
      : super(title, author, numberOfPages);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Genre: $genre');
  }
}
