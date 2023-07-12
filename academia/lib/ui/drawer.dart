// import 'package:matcher/matcher.dart';
import 'package:flutter/material.dart';

// App Drawer Section
/////////////////////
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              // Profile Sections
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/fbavatar.png"),
                      ),
                    ),
                  ),
                  const Text(
                    "Simon Peters",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text("simonpetersgh@gmail.com"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Log out"),
                    ),
                  )
                ],
              ),
            ),
            // End of Profile Section

            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Icon(Icons.lightbulb),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Notes"),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Icon(Icons.star),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Bookmarks"),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Icon(Icons.archive),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Archive"),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Icon(Icons.delete_forever_rounded),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Trash"),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Icon(Icons.settings),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Settings"),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Icon(Icons.info_sharp),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("About, help & feedback"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}





// CircleAvatar(
                    //   radius: 100,
                    //   backgroundImage: AssetImage(
                    //     "assets/fbavatar.png",
                    //   ),
                    // ),