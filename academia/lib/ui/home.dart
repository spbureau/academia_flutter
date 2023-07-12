// My App Home Page
import 'package:academia/ui/books.dart';
import 'package:flutter/material.dart';
// import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:academia/ui/drawer.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("ACADEMIA.ORG"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_active))
        ],
      ),
      //////// body
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Text("Most Popular this week"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const AllBooks()));
                  },
                  child: const Text(
                    "See all",
                    style: TextStyle(),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.grey[300],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/cloud_db.png",
                        height: 90,
                        width: 140,
                      ),
                      const Expanded(
                        child: Column(
                          children: [
                            Text("Google Data Analytics"),
                            Text("James Gartner"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.event_note_rounded),
                                Text("12.1k"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ), // 1st Container Ends
                Container(
                  height: 150,
                  width: 200,
                  color: Colors.grey[300],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/pexels-1.jpg",
                        height: 90,
                        width: 190,
                      ),
                      const Expanded(
                        child: Column(
                          children: [
                            Text("Cybersecurity and Data..."),
                            Text("Johnson and Johnson"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.event_note_rounded),
                                Text("9.1k"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
            // End of Most Popular Section

            // ListView.builder(
            //     itemCount: myBook.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return ListTile(
            //         leading:
            //             Image.asset("assets/images/${myBook[index].bookCover}"),
            //         title: Text(myBook[index].bookTitle),
            //         subtitle: Text(myBook[index].author),
            //         trailing: TextButton(
            //           child: const Text("View"),
            //           onPressed: () {},
            //         ),
            //       );
            // }),
          ],
        ),
      ),
      // End of body

      drawer: const MyDrawer(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const SearchPage()));
        },
        child: const Icon(Icons.mic),
      ),
      bottomNavigationBar: const GNav(
          gap: 5,
          backgroundColor: Colors.black87,
          color: Colors.white,
          activeColor: Colors.white,
          //tabBackgroundColor: Colors.grey.shade800,
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.search,
              text: "Discover",
            ),
            GButton(
              icon: Icons.download,
              text: "Downloads",
            ),
            GButton(
              icon: Icons.library_add_check,
              text: "Library",
            ),
          ]),
    );
  }
}

// SearchPage class and widget
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: TextField(
          decoration: const InputDecoration(
              fillColor: Colors.white,
              filled: true,
              suffixIconColor: Colors.black,
              border: UnderlineInputBorder(
                  //borderRadius: BorderRadius.all(500),
                  ),
              // label: Text("Search by name"),
              hintText: "Search by name or topic",
              suffixIcon: Icon(Icons.cancel)),
          controller: searchTextController,
        ),
      ),
    );
  }
}
