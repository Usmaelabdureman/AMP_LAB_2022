import 'package:flutter/material.dart';

class ScaffoldPropsScreen extends StatefulWidget {
  const ScaffoldPropsScreen({Key? key}) : super(key: key);

  @override
  State<ScaffoldPropsScreen> createState() => _ScaffoldPropsScreenState();
}

class _ScaffoldPropsScreenState extends State<ScaffoldPropsScreen> {
  int bottomNavBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colors = [Colors.green, Colors.red, Colors.yellow];

    final bodyColor = bottomNavBarIndex == 0
        ? Colors.red
        : bottomNavBarIndex == 1
            ? Colors.yellow
            : Colors.green;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Telegram")),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            childAspectRatio: 1,
          ),
          itemCount: 60,
          itemBuilder: (BuildContext context, int index) {
            return Container(color: colors[index % 3]);
          },
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 200,
                color: Colors.green,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            "assets/food_1.jpeg",
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Text("Users name here"),
                    Text("+1234567890"),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 16),
                  Text("phone settings"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.location_city),
                  SizedBox(width: 16),
                  Text("location settings"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(width: 16),
                  Text("settings"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(width: 16),
                  Text("log out"),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: bottomNavBarIndex == 0
            ? FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              )
            : null,
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
      ),
    );
  }
}
