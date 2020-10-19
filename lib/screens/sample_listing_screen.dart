import 'package:common_error_screen_demo/data_models/city_list.dart';
import 'package:common_error_screen_demo/widgets/no_content_widget.dart';
import 'package:flutter/material.dart';

class ListingScreen extends StatefulWidget {

  static final List<String> list_cities = CityList.getCities();
  static const routeName = '/listing_screen';

  @override
  _ListingScreenState createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {

   bool isError = false;
   final String title = "Something Went Wrong!";
   final String customButtonTitle = "RETRY";

  void onRetryCallBack() {

    setState(() {
      isError = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Listing Screen'),
      ),
      body:
      Container(
        child: (isError)?
        ListView.builder(
          itemCount: ListingScreen.list_cities.length,
          itemBuilder: (ctx, i) => ListTile(
            title:  Text(ListingScreen.list_cities[i]),
          ),
        ): NoContentWidget(title: title, customButtonTitle: customButtonTitle, onRetryCallBack: onRetryCallBack)
      ),
    );
  }
}