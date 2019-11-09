import 'package:flutter/material.dart';
import 'package:inc_dec/views/home_page.dart';
import 'package:provider/provider.dart';
import 'package:inc_dec/providers/counter.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => Counter(0)),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

