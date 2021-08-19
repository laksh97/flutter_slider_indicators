import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      title: "Flutter Sliders",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _value = 0.0;

  void _onChange(double value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Sliders"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Text(
                "Slider",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Slider(value: _value, onChanged: _onChange),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Text(
                "LinearProgressIndicator",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              LinearProgressIndicator(
                value: _value,
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Text(
                "CircularProgressIndicator",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              CircularProgressIndicator(
                value: _value,
              )
            ],
          ),
        ),
      ),
    );
  }
}
