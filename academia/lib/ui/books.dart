// my classes for books

// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Book {
  final String bookCover;
  final String bookTitle;
  final String author;
  final categories = [
    "Business",
    "Information Technology",
    "Art",
    "Mathematics",
    "Governance &  Polictics",
    "Social Sciences"
  ];
  final String category;
  Book(this.bookCover, this.bookTitle, this.author, this.category);
}

List<Book> myBook = [
  Book("cloud_db.png", "Google Data Analytics", "James Gartner",
      "Information Technology"),
  Book("fbavatar_1.png", "Project Management", "Mario Richardson",
      "Information Technology"),
  Book("fbavatar_2.png", "Public Health", "James Gartner",
      "Information Technology"),
  Book("fbavatar_3.png", "Introduction to Philosophy", "James Gartner",
      "Information Technology"),
  Book("fbavatar_4.png", "Data Structures and Algorithms", "James Gartner",
      "Information Technology"),
  Book("fbavatar_5.png", "Psychology and Counselling", "James Gartner",
      "Information Technology"),
  Book("pexels-1.jpg", "Information Security", "James Gartner",
      "Information Technology"),
  Book("pexels-2.jpg", "The Art of Public Speaking", "James Gartner",
      "Information Technology"),
  Book("pexels-3.jpg", "Physical Mathematics", "James Gartner",
      "Information Technology"),
  Book("pexels-4.jpg", "Investment and Portfolio Management", "James Gartner",
      "Information Technology"),
  Book("pexels-4.jpg", "Google Data Analytics", "James Gartner",
      "Information Technology"),
  Book("cloud_db.png", "Google Data Analytics", "James Gartner",
      "Information Technology"),
  Book("pexels-1.jpg", "International Business Development", "James Gartner",
      "Information Technology"),
  Book("cloud_db.png", "Google Data Analytics", "James Gartner",
      "Information Technology"),
  Book("pexels-2.jpg", "Google Data Analytics", "James Gartner",
      "Information Technology"),
  Book("fbavatar_3.png", "Programming for Everybody", "James Gartner",
      "Information Technology"),
];

class AllBooks extends StatelessWidget {
  const AllBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All books"),
      ),
      body: ListView.builder(
          itemCount: myBook.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Image.asset("assets/images/${myBook[index].bookCover}"),
              title: Text(myBook[index].bookTitle),
              subtitle: Text(myBook[index].author),
              trailing: TextButton(
                child: const Text("View"),
                onPressed: () {},
              ),
            );
          }),
    );
  }
}


// class BookBox extends StatelessWidget {
//   const BookBox({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Card(
//       child: Column(
//         children: [
//           Image.asset()
//         ],
//       ),
//     );
//   }
// }