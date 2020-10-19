import 'package:flutter/material.dart';

import 'sample_listing_screen.dart';

class MyHomeScreen extends StatelessWidget{

  void _moveToListing(BuildContext context) {
    Navigator.of(context).pushNamed(ListingScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
      title: Text('Common Error Screen'),
      ),
      body: Container(
        child:Center(
          child: RaisedButton (
            child:Text('PROCEED'),
              color: Colors.blue,
              onPressed: () {
              _moveToListing(context);
            },
          ),
        )
      )
    );
  }
}