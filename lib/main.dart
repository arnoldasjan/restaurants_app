import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoryPage(),
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
                          fontSize: 14.0,
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
                  padding: const EdgeInsets.only(top: 10.0, bottom: 25.0),
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
                          child: Icon(FontAwesomeIcons.slidersH),
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
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          Text(
                            '4.8',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('(90)'),
                          SizedBox(
                            width: 20.0,
                          ),
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
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          Text(
                            '4.8',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('(90)'),
                          SizedBox(
                            width: 20.0,
                          ),
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

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.darken),
                    image: ExactAssetImage('assets/burger.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 25.0,
                bottom: 30.0,
                child: Text(
                  'Burgers',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Positioned(
                left: 15.0,
                top: 30.0,
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: null),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(
              20.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(50.0),
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8.0),
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFD6C3),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            image: AssetImage('assets/burgerdish.jpg'),
                            height: 80.0,
                            width: 80.0,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Burger & Pizza Hub',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Burger - Pizza - Breakfast',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    size: 16.0,
                                    color: Colors.yellow[800],
                                  ),
                                  Text(
                                    ' 4.8 ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text('(121 ratings)'),
                                ],
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: IconButton(
                              icon: Icon(
                                FontAwesomeIcons.heart,
                                size: 18.0,
                              ),
                              onPressed: null)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
