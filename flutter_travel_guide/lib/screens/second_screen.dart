import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final data;
  SecondScreen(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Hero(
            tag: data['image'],
            child: Image.network(
              data['image'],
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black54,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 32.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                      ),
                      Text(
                        '02/10',
                        style: TextStyle(color: Colors.white, fontSize: 24.0),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 240.0,
                    child: Text(
                      data['name'],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                        fontSize: 42.0
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 14.0,
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 14.0,
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 14.0,
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 14.0,
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 14.0,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        '4,7',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 4.0),
                      Text(
                        '(1072)',
                        style: TextStyle(color: Colors.white54),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    child: Text(
                      data['description'],
                      style: TextStyle(color: Colors.white54, height: 1.4),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'READ MORE',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          child: Row(
                        children: <Widget>[
                          Container(
                            width: 4.0,
                            height: 4.0,
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(50.0)
                            ),
                          ),
                          SizedBox(width: 4.0),
                          Container(
                            width: 18.0,
                            height: 2.0,
                            color: Colors.white,
                          ),
                          SizedBox(width: 4.0),
                          Container(
                            width: 4.0,
                            height: 4.0,
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(50.0)
                            ),
                          ),
                          SizedBox(width: 4.0),
                          Container(
                            width: 4.0,
                            height: 4.0,
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(50.0)
                            ),
                          ),
                        ],
                      )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            '\$40.00',
                            style:
                              TextStyle(color: Colors.white, fontSize: 28.0),
                          ),
                          Text(
                            'Fri, March 2019',
                            style: TextStyle(
                              color: Colors.white54, fontSize: 14.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32.0,
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}