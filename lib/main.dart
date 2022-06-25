import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web & Firebase Hosting',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Dev Camp 2022'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _clicked = false;

  void changeScreen() {
    setState(() {
      _clicked = !_clicked;
    });
  }

  late Widget lottie;
  @override
  void initState() {
    lottie = Lottie.asset("assets/thank-you.json");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF027DFD),
        title: Text(widget.title),
      ),
      body: Center(
        child: _clicked
            ? lottie
            : ElevatedButton(
                onPressed: () => changeScreen(),
                child: const Text("Click Here"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>( const Color(0xFF0553B1)),
                ),
              ),
      ),
    );
  }
}
