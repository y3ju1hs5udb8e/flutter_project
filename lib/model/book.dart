//book model

class Book {
  Book({
    required this.image,
    required this.genre,
    required this.rating,
    required this.detail,
    required this.title,
  });

  final String title;
  final String detail;
  final String rating;
  final String image;
  final String genre;

  //factory constructor for jason parse

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      image: json['image'],
      detail: json['detail'],
      title: json['title'] == '' ? 'Unknown Title' : json['title'],
      rating: json['rating'],
      genre: json['genre'],
    );
  }
}
