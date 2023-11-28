import 'package:e_book/model/book.dart';

const bookData = [
  {
    'title': 'Random Book',
    'image':
        'https://plus.unsplash.com/premium_photo-1670191888695-f0cb604d6d87?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fGJvb2slMjBjb3ZlcnxlbnwwfDF8MHx8fDA%3D',
    'detail':
        'It\'s a book of book and it is  just a book which can be just be a book but I chose to make it more than a book and now it\'s a Random Book',
    'rating': '⭐⭐⭐⭐⭐',
    'genre': 'Random',
  },
  {
    'title': 'Random Book2',
    'image':
        'https://images.unsplash.com/photo-1528459061998-56fd57ad86e3?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Ym9vayUyMGNvdmVyfGVufDB8fDB8fHww',
    'detail':
        'It\'s a book of Random part 1 and it is  just a book which can be just be a book but I chose to make it more than a book and now it\'s a Random Book',
    'rating': '⭐⭐⭐',
    'genre': 'Random2',
  },
  {
    'title': 'Random Book3',
    'image':
        'https://images.unsplash.com/photo-1528459105426-b9548367069b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Ym9vayUyMGNvdmVyfGVufDB8fDB8fHww',
    'detail':
        'It\'s a book of Random part 2 and it is  just a book which can be just be a book but I chose to make it more than a book and now it\'s a Random Book',
    'rating': '⭐',
    'genre': 'Random3',
  },
  {
    "title": "Eloquent JavaScript",
    'image':
        'https://images.unsplash.com/photo-1700410426386-704d39c87828?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHx8',
    "detail": "A Modern Introduction to Programming",
    'rating': '⭐⭐⭐⭐⭐',
    "genre": "Marijn Haverbeke",
  },
  {
    'title': 'Chronicles of Elysium',
    'image':
        'https://images.unsplash.com/photo-1699953352666-9304af5a76c1?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHx8',
    'detail':
        'Futuristic tale of technomancer Alex Mercer discovering a hidden realm to save humanity.',
    'rating': '⭐⭐⭐',
    'genre': 'Science Fantasy',
  },
  {
    'title': '',
    'image':
        'https://images.unsplash.com/photo-1563905463861-7d77975b3a44?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHRocmlsbGVyfGVufDB8fDB8fHww',
    'detail':
        'Detective Emily Harris unravels dark secrets in an isolated town plagued by mysterious disappearances.',
    'rating': '⭐⭐⭐⭐',
    'genre': 'Psychological Thriller, Horror',
  },
];

final dataBook = bookData.map((e) => Book.fromJson(e)).toList();
