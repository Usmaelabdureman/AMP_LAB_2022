import 'package:flutter/material.dart';

class StackDemoScreen extends StatefulWidget {
  const StackDemoScreen({Key? key}) : super(key: key);

  @override
  State<StackDemoScreen> createState() => _StackDemoScreenState();
}

class _StackDemoScreenState extends State<StackDemoScreen> {
  int navBarSelectedIndex = 0;
  final colors = [Colors.blue, Colors.yellow, Colors.green, Colors.orange];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Telegram")),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.green,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/food_1.jpeg"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Account holder name"),
                            Text("+2512343564758"),
                          ],
                        ),
                        Icon(Icons.star),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 8),
                Text("Phone settings"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.settings),
                SizedBox(width: 8),
                Text("General settings"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.security),
                SizedBox(width: 8),
                Text("Security settings"),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navBarSelectedIndex,
        onTap: (int index) {
          setState(() {
            navBarSelectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: "Phone",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Container(
        color: navBarSelectedIndex == 0
            ? Colors.red
            : navBarSelectedIndex == 1
                ? Colors.yellow
                : Colors.green,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
          ),
          itemCount: 60,
          itemBuilder: (BuildContext ctx, int index) {
            // TODO - replace with Stack
            return Container(color: colors[index % 4]);
          },
        ),
      ),
    );
  }
}
