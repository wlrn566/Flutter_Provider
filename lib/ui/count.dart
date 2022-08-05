import 'package:flutter/material.dart';
import 'package:flutter_application_2/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "count",
            style: TextStyle(fontSize: 50),
          ),
          Text(
            Provider.of<CountProvider>(context).count.toString(),
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
