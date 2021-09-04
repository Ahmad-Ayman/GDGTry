import 'package:flutter/material.dart';
import 'package:testapp/modules/fav_screen.dart';
import 'package:testapp/modules/home_screen_main.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int currentIndex = 0;
  List<String> titles = ['Home Page', 'Settings', 'Contact Us', 'About'];
  List<IconData> icons = [
    Icons.home,
    Icons.settings,
    Icons.contact_mail,
    Icons.info
  ];
  List<Widget> screens = [
    HomeScreen(),
    FavScreen(),
    HomeScreen(),
    FavScreen(),
  ];
  bool currentValue = false;
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Search Word'),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      print('Searched Text: ${searchController.text}');
                    },
                    icon: Icon(Icons.search),
                  ),
                ],
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
            ),
            Text('App'),
          ],
        ),
        actions: [Icon(Icons.shopping_cart)],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.teal,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/conan.png',
                          ),
                          radius: 40,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Ahmed Ayman',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),
                        Switch(
                            activeColor: Colors.red,
                            value: currentValue,
                            onChanged: (v) {
                              setState(() {
                                currentValue = !currentValue;
                              });
                            })
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: titles.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Row(
                      children: [
                        Icon(
                          icons[index],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text('${titles[index]}')
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'Sign out',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الصفحة الرئيسية',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'الـمفـضلة'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'الاعدادت'),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
// ListView(
// children: [
// DrawerHeader(
// child: Image(
// image: AssetImage('assets/images/conan.png'),
// ),
// ),
// ListTile(
// title: Row(
// children: [
// Icon(
// Icons.home,
// ),
// SizedBox(
// width: 15,
// ),
// Text('الصفحة الرئيسية')
// ],
// ),
// ),
// Divider(
// height: 1,
// thickness: 2,
// color: Colors.grey,
// ),
// ListTile(
// title: Row(
// children: [
// Icon(
// Icons.shopping_cart,
// ),
// SizedBox(
// width: 15,
// ),
// Text('عربة التسوق')
// ],
// ),
// ),
// Divider(
// height: 1,
// thickness: 2,
// color: Colors.grey,
// ),
// ListTile(
// title: Row(
// children: [
// Icon(
// Icons.settings,
// ),
// SizedBox(
// width: 15,
// ),
// Text('الاعدادات')
// ],
// ),
// ),
// ],
// ),
