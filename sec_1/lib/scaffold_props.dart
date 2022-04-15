import 'package:flutter/material.dart';

class ScaffoldPropsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ScaffoldPropsScreenState();
  }
}

class ScaffoldPropsScreenState extends State<ScaffoldPropsScreen> {
  int bottomNavBarIndex = 0;
  final views = [
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
  ];

  final colors = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Telegram")),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.green,
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/food_1.jpeg"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name here"),
                          Text("+251 23456677"),
                        ],
                      ),
                      Icon(Icons.star),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 8),
                Text("Phone settings"),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.security),
                SizedBox(width: 8),
                Text("Security settings"),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.logout),
                SizedBox(width: 8),
                Text("Log out"),
              ],
            ),
          ],
        ),
      ),
      // body: views[bottomNavBarIndex],
      body: GridView.builder(
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 4,
        //   childAspectRatio: 3 / 4,
        // ),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          // childAspectRatio: 2,
        ),
        itemCount: 60,
        itemBuilder: (BuildContext context, int index) {
          return Container(color: colors[index % 4]);
        },
        // children: [
        //   Container(color: Colors.red),
        //   Container(color: Colors.blue),
        //   Container(color: Colors.brown),
        //   Container(color: Colors.orange),
        //   Container(color: Colors.pink),
        //   Container(color: Colors.purple),
        //   Container(color: Colors.cyan),
        //   Container(color: Colors.black),
        // ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavBarIndex,
        onTap: (int index) {
          setState(() {
            bottomNavBarIndex = index;
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
    );
  }
}
