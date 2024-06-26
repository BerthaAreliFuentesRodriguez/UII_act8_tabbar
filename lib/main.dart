import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Fuentes0465'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(widget.title),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(width: 9, color: Colors.red),
            boxShadow: [
              BoxShadow(
                  color: Colors.blue,
                  offset: Offset(5.0, 5.0),
                  blurRadius: 20.0,
                  spreadRadius: 10.0),
              BoxShadow(
                  color: Colors.purpleAccent,
                  offset: Offset(2.0, 5.0),
                  blurRadius: 10.0,
                  spreadRadius: 5.0)
            ],
          ),
          width: 250,
          height: 300,
          //color: Colors.red,
          child: Text(
            'mi contenedor',
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
          ),
          transform: Matrix4.skew(0.2, -0.2)..rotateZ(0.9),
          transformAlignment: Alignment.center,
        ),
      ),
    );
  }
}
