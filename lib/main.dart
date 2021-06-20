import 'package:flutter/material.dart';
import 'package:flutter_provider/my_provider.dart';
import 'package:provider/provider.dart';
import 'dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
          create: (ctx)=>MyProvider(),
          child: CounterPro()),
    );
  }
}

class CounterPro extends StatelessWidget {

  int n =0;
  @override
  Widget build(BuildContext context) {
    print('Inside the main .. build n = ${n++}' );

    return Scaffold(
      appBar: AppBar(title: Text('Demo')),
      body: Center(
        child: Dashboard(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Provider.of<MyProvider>(context, listen: false).increment();
        },
      ),
    );
  }
}
