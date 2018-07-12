import 'package:flutter/material.dart';

class ActivityIndicator extends StatelessWidget {

  ActivityIndicator({ Key key }): super(key: key);

  @override
  Widget build(BuildContext context) =>
      Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      );

}