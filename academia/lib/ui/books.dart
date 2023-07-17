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

// Topic/Categories:
/*  
    "Business",
    "Information Technology",
    "Art",
    "Mathematics",
    "Governance &  Polictics",
    "Social Sciences"
*/

class Book2 {
  final String bookCover;
  final String bookTitle;
  final String author;
  final String category;

  Book2(this.bookCover, this.bookTitle, this.author, this.category);
}

List<Book> myBook2 = [
  Book("cloud_db.png", "Google Data Analytics", "James Gartner",
      "Information Technology"),
];

// 2nd Books Class
// #Business & Entrepreneurship

class MyBooks {
  final String bookCover;
  final String bookTitle;
  final String author;
  final String? date;
  // final String category;
  final String description;

  MyBooks(
      this.bookCover, this.bookTitle, this.author, this.date, this.description);
}
/*
List<MyBooks> myBooks = [
  // MyBooks(
  // "image",
  // "title",
  // "author",
  // "year"),
  // "category",
  // "desc"),

MyBooks(
"..."
"The Intelligent Investor", 
"Benjamin Graham",
"1949",
'Originally published in 1949 by the \"father of value investing,\" \"The Intelligent Investor\" by Benjamin Graham delivers realistic financial advice for individuals and businesses looking to grow their wealth. Far from principles that guarantee you'll become a millionaire, this book encourages readers to create practical goals and find success in any size a victory.'),

MyBooks(
"...",
"Lean In: Women, Work, and the Will to Lead"
"Sheryl Sandberg",
"2013",
'\"Lean In\" sparked global conversation after its publication in 2013 because of its honesty about the experiences of women in business. This book encourages women to be voracious, courageous, and strong-willed at work in order to not only help themselves but improve the future for upcoming businesswomen.'),

MyBooks(
"...",
"The Personal MBA: Master the Art of Business"
"Josh Kaufman", 
"Unknown",
'Written for those who cannot or don't intend to go to business school, \"The Personal MBA\" outlines the fundamental principles of business for people at any stage of their business career. With lessons on sales, marketing, negotiation, and strategy, this self-help read offers an overview of many business school topics to help readers master the MBA basics.'),

MyBooks(
"",
"Blue Ocean Strategy: How to Create Uncontested Market Space and Make the Competition Irrelevant"
"W. Chan Kim & Renée Mauborgne",
"N/A",
'In this business book, authors Kim and Mauborgne assert that lasting success does not come from fighting direct competition in a small pool but rather from creating \"blue oceans\" or untapped market spaces where new growth can bloom. They outline strategic principles and tools that readers can translate to nearly any market and master their niche.'),

MyBooks(
"",
"Influence: The Psychology of Persuasion",
"Robert B. Cialdini",
"2001",
'\"Influence\" is a psychology book about persuasion, dubbed a business read by Goodreads reviewers for its usefulness in management, marketing, and communications. This book teaches the readers six principles of persuasion, how to apply them, and how to know when they're being used against you.'),

MyBooks(
"",
"Shoe Dog: A Memoir by the Creator of Nike",
"Phil Knight",
"2007",
'\"Shoe Dog\" might be a memoir, but Goodreads users love Phil Knight's focus on his success in business as he grew his company from $50 into the Nike empire. Knight's story brings readers into the details of the company's growth, the challenges he faced as a leader, and the breakthroughs he experienced.'),

MyBooks(
"",
"Outliers: The Story of Success",
"Malcolm Gladwell",
"1999",
'Malcolm Gladwell is a bestselling author best known for his nonfiction writing on psychology and sociology. In this psychology read, Gladwell analyses the \"outliers\" of the world — the best, the highest-achieving, the most famous people — to find what made them different and, thus, so successful.'),

];
*/

/*
#Others:

The Human Side of Enterprise (1960), by Douglas McGregor,

Business Guides
The Age of Unreason (1989), by Charles Handy,

Built to Last: Successful Habits of Visionary Companies (1994), by Jim Collins and Jerry Porras,

Competing for the Future (1996), by Gary Hamel and C.K. Prahalad,

Competitive Strategy: Techniques for Analyzing Industries and Competitors (1980), by Michael E. Porter,

Emotional Intelligence (1995), by Daniel Goleman,

The E-Myth Revisited: Why Most Small Business Don't Work and What to Do about It (1985), by Michael E. Gerber,

The Essential Drucker (2001), by Peter Drucker

*/

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
