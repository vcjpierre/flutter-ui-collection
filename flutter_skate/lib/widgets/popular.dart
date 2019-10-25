import 'package:flutter/material.dart';
import 'package:flutter_skate/models/user.dart';

class PopularData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: users.length,
        itemBuilder: (context, index){
          UserModel userModel = users[index];
          return dataItem(userModel);
        },
      ),
    );
  }

  Widget dataItem(UserModel userModel){
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFF082938)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              width: 220,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(userModel.img),
                  fit: BoxFit.cover
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topRight,
                    child: Icon(!userModel.isActive ? 
                    Icons.favorite_border : Icons.favorite, color: Colors.white,size: 32),
                  ),
                  SizedBox(height: 168),
                  Text(userModel.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  )),
                  SizedBox(height: 5),
                  Text(userModel.desc,style: TextStyle(
                    color: Colors.white,
                    fontSize: 14
                  )),
                  SizedBox(height: 20)
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 49,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hello World.", 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12
                  )
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    dataItemIcon(
                      Icons.favorite, "22"
                      ),
                    SizedBox(width: 7),
                    dataItemIcon(
                      Icons.comment, "19"
                    ),                    
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget dataItemIcon(IconData iconData, String text){
    return Row(
      children: <Widget>[
        Icon(iconData, color: Colors.white),
        SizedBox(width: 2),
        Text(text, style: TextStyle(color: Colors.white))
      ],
    );
  }
}