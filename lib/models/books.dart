class Book {
  String type;
  String name;
  String publisher;
  DateTime date;
  String imgUrl;
  num score;
  num rating;
  String review;
  num height;
  Book(
    this.type,
    this.name,
    this.publisher,
    this.date,
    this.imgUrl,
    this.score,
    this.rating,
    this.review,
    this.height,
  );

  static List<Book> generatedBooks() {
    return [
      Book(
          'hostory',
          'This is the way',
          'istudio',
          DateTime(2022, 03, 12),
          'assets/images/book1.jpeg',
          4.7,
          892,
          'i failed my quater class in school',
          220.0),
      Book(
          'hostory',
          'this is the way',
          'istudio',
          DateTime(2022, 03, 12),
          'assets/images/book2.jpeg',
          4.7,
          892,
          'i failed my quater class in school',
          220.0),
      Book(
          'hostory',
          'this is the way',
          'istudio',
          DateTime(2022, 03, 12),
          'assets/images/book3.jpeg',
          4.7,
          892,
          'i failed my quater class in school',
          220.0),
      Book(
          'hostory',
          'this is the way',
          'istudio',
          DateTime(2022, 03, 12),
          'assets/images/book4.jpeg',
          4.7,
          892,
          'i failed my quater class in school',
          220.0),
      Book(
          'hostory',
          'this is the way',
          'istudio',
          DateTime(2022, 03, 12),
          'assets/images/book5.jpeg',
          4.7,
          892,
          'i failed my quater class in school',
          220.0),
      Book(
          'hostory',
          'this is the way',
          'istudio',
          DateTime(2022, 03, 12),
          'assets/images/book6.jpeg',
          4.7,
          892,
          'i failed my quater class in school',
          220.0),
    ];
  }
}
