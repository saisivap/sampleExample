import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double distanceBetweenWidgets = 2;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    // final distanceBetweenWidgets = 2;
    return Scaffold(
      appBar: AppBar(
        title: Text("Codium Text"),
        centerTitle: true,
      ),
      body: SafeArea(
        // padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  customContainer(Colors.lightGreenAccent.shade200, "Logo", 2),
                  customContainer(Colors.brown, "Top Menu", 8)
                ],
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                child: Row(
                  children: [
                    customContainer(Colors.blueGrey.shade900, "Left Menu", 3),
                    Expanded(
                      flex: 8,
                      child: Container(
                        child: Column(
                          children: [
                            customContainer(Colors.black, "HEADER", 1),
                            Expanded(
                              flex: 9,
                              child: Container(
                                child: Row(
                                  children: [
                                    customContainer(
                                        Colors.blueGrey.shade300, "CONTENT", 3),
                                    customContainer(Colors.grey, "DETAIL", 7),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customContainer(Color color, String text, int flex) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          color: color,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
