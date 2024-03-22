import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Flutter RichText ',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
      ),
      body: const Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '   RichText helps to create\n',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 25,
                  height: -0.010,
                ),
              ),
              TextSpan(
                text: ' Highlighted',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2),
              ),
              TextSpan(
                text: ',\n  ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  height: -0.010,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              TextSpan(
                text: 'Clickable',
                style: TextStyle(
                    color: Colors.blue,
                    height: -0.010,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                    fontSize: 25,),
              ),
              TextSpan(
                text: ',',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  height: -0.010,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              TextSpan(
                text: 'OutlinedText\n',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  height: -0.04,
                ),
              ),
              TextSpan(
                text: '         Say Hi RichText',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 25,height: 2,
                ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
