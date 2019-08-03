import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  bool _isPressed = false;

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
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFEFE8),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(8.0, 6.0, 10.0, 6.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            image: AssetImage('assets/burgerdish.jpg'),
                            height: 100.0,
                            width: 100.0,
                            fit: BoxFit.fitHeight,
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
                      Column(
                        children: <Widget>[
                          IconButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              icon: Icon(
                                _isPressed ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
                                size: 18.0,
                                color: _isPressed ? Colors.red : Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPressed ? _isPressed = false : _isPressed = true;
                                });
                              }),
                        ],
                      ),
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