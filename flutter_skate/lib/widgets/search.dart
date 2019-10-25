import 'package:flutter/material.dart';
import 'package:flutter_skate/components/search_textfield.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28),
      child: Row(
        children: <Widget>[
          Expanded(child: SearchTextField()),
          SizedBox(width: 11),         
        ],
      ),
    );
  }
}