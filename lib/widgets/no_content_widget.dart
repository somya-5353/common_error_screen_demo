import 'package:flutter/material.dart';

class NoContentWidget extends StatelessWidget {

  final String title;
  final String customButtonTitle;
  final Function onRetryCallBack;

  NoContentWidget({
    this.title,
    this.customButtonTitle,
    this.onRetryCallBack,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset('assets/images/error.jpg', height: 50, width: 40, alignment: Alignment.center),
          ),
          SizedBox(
            height:10
          ),
          Center(
            child: Text(title,
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height:10),
          FlatButton(
            child: Text(customButtonTitle),
            color: Colors.blue,
            onPressed: onRetryCallBack,
          ),
        ],
    );
  }


}