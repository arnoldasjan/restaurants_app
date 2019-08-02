import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownvalue = 'Current Location';
  final List<String> entries = <String>['Burger', 'Dessert', 'Pizza', 'Asian'];

  final List<String> restaurants_names = <String>[
    'Milliona State Cafe',
    'Zemyn Upe'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.menu),
                    Icon(Icons.shopping_basket),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Delivering to',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Current location',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 4,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[100],
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                            hintText: 'Search foods',
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Center(
                          child: Icon(Icons.filter_list),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 120.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xFFFFD6C3),
                            ),
                            height: 80.0,
                            width: 80.0,
                            child: Center(child: Icon(Icons.fastfood)),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text('${entries[index]}'),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      width: 16.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Popular',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
//                Container(
//                  height: 300.0,
//                  child: ListView.separated(
//                    scrollDirection: Axis.vertical,
//                    itemCount: restaurants_names.length,
//                    itemBuilder: (BuildContext context, int index) {
//                      return Stack(
//                        children: <Widget>[],
//                      );
//                    },
//                    separatorBuilder: (BuildContext context, int index) =>
//                        const SizedBox(
//                          width: 16.0,
//                        ),
//                  ),
//                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 230.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/dish1.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    Positioned(
                      right: 25.0,
                      bottom: 20.0,
                      child: Container(
                        child: Center(
                            child: Text(
                          '10-15 mins',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        height: 45.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Zemyn Upe',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.yellow[800],),
                          Text('4.8', style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 10.0,),
                          Text('(90)'),
                          SizedBox(width: 20.0,),
                          Text('Kaunas - Pizza - Breakfast and Brunch'),
                        ],
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 230.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/dish1.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    Positioned(
                      right: 25.0,
                      bottom: 20.0,
                      child: Container(
                        child: Center(
                            child: Text(
                              '10-15 mins',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        height: 45.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Zemyn Upe',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.yellow[800],),
                          Text('4.8', style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 10.0,),
                          Text('(90)'),
                          SizedBox(width: 20.0,),
                          Text('Kaunas - Pizza - Breakfast and Brunch'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
