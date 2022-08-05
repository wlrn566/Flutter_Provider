import 'package:flutter/material.dart';
import 'package:flutter_application_2/provider/count_provider.dart';
import 'package:flutter_application_2/ui/count.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  late CountProvider _countProvider;

  @override
  Widget build(BuildContext context) {
    _countProvider = Provider.of<CountProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("count_provider"),
        elevation: 10,
      ),
      body: CountWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Provider.of<CountProvider>(context, listen: false).add();
            },
          ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              Provider.of<CountProvider>(context, listen: false).remove();
            },
          ),
        ],
      ),
    );
  }
}
