import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'FireAppX',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: EdgeInsets.all(2),
          height: 300,
          width: 389,
          child: Stack(
            children: [
              Image.asset('assets/images/bg-gold.png'),
              Container(
                height: 50,
                width: 389,
                color: Colors.black,
                padding: EdgeInsets.fromLTRB(0, 250,0,0),

              )
            ],
          ),
        )
    );
  }
}
