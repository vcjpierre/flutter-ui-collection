import 'package:flutter/material.dart';
import 'package:flutter_travel_guide/screens/second_screen.dart';

List data = [
  {
    'name': 'Thailand',
    'image':
        'https://images.unsplash.com/photo-1494949360228-4e9bde560065?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'description':
        'Over the years, Lover Thailand has become a favorite gathering pace for photographers tourists, and visitors from the world.',
    'date': 'Mar 20, 2019',
    'rating': '4.7',
    'cost': '\$700.00'
  },
  {
    'name': 'Bora Bora',
    'image':
        'https://images.unsplash.com/photo-1557517395-f8dff7f191e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80',
    'description':
        'Over the years, Lover Bora Bora has become a favorite gathering pace for photographers tourists, and visitors from the world.',
    'date': 'Mar 24, 2019',
    'rating': '4,83',
    'cost': '\$900.00'
  },
  {
    'name': 'Paris',
    'image':
        'https://images.unsplash.com/photo-1522093007474-d86e9bf7ba6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
    'description':
        'Over the years, Lover Paris has become a favorite gathering pace for photographers tourists, and visitors from the world.',
    'date': 'Apr 18, 2019',
    'rating': '4,7',
    'cost': '\$500.00'
  },
];


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Search for place',
                      style: TextStyle(color: Colors.black54),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Destination',
                          style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0
                          )
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black54,
                        )
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/user.jpg"
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: data.map((x) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondScreen(x)
                          )
                        );
                      },
                      child: Hero(
                        tag: x['image'],
                        child: Container(
                          height: 200.0,
                          width: 140.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                Colors.black26, BlendMode.darken
                              ),
                              image: NetworkImage(x['image']),
                              fit: BoxFit.cover)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(),
                                    Text(
                                      '4,7',
                                      style: TextStyle(
                                        color: Colors.white, fontSize: 16.0
                                      ),
                                    )
                                  ],
                                ),
                                Spacer(),
                                Text(
                                  x['name'],
                                  style: TextStyle(
                                    color: Colors.white, fontSize: 16.0
                                  ),
                                ),
                                Text(
                                  x['date'],
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 12.0,
                                  ),
                                ),
                                SizedBox(height: 8.0)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              'VIEW ALL -',
              style: TextStyle(color: Colors.red),
            ),
          ),
          SizedBox(height: 32.0),
          Padding(
            padding: EdgeInsets.only(left: 32.0),
            child: Container(
              height: 40.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Text(
                      'Popular',
                      style: TextStyle(
                        fontSize: 22.0, fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Text(
                      'New', style: TextStyle(fontSize: 22.0)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Text(
                      'Recomended', style: TextStyle(fontSize: 22.0)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Text(
                      'Saved', style: TextStyle(fontSize: 22.0)
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 32.0),
            child: Container(
              height: 2.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    color: Colors.black12,
                    height: 2.0,
                    width: double.infinity,
                  ),
                  Container(
                    color: Colors.red,
                    height: 2.0,
                    width: 80.0,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Container(
              height: 256.0,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      itemCard(data[0]['image'], data[0]['name'],
                        data[0]['date'], 120.0, context),
                      SizedBox(height: 16.0),
                      itemCard(data[1]['image'], data[1]['name'],
                        data[1]['date'], 120.0, context),
                    ],
                  ),
                  itemCard(data[2]['image'], data[2]['name'], data[2]['date'],
                    256.0, context
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  itemCard(image, title, date, height, context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width / 2 - 42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black26, BlendMode.darken
          )
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              date,
              style: TextStyle(color: Colors.white54),
            ),
          ],
        ),
      ),
    );
  }
}
