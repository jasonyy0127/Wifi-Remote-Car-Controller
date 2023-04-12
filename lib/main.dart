import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
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
  String answer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 167, 68),
      appBar: AppBar(
        title: const Text("Remote Car"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 4),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 60,
                          width: 100,
                          child: ElevatedButton(
                              onPressed: _forward,
                              child: const Text("Forward",
                                  style: TextStyle(fontSize: 18)))),
                      const SizedBox(height: 20),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                                height: 60,
                                width: 100,
                                child: ElevatedButton(
                                  onPressed: _left,
                                  child: const Text("Left",
                                      style: TextStyle(fontSize: 18)),
                                )),
                            SizedBox(
                                height: 60,
                                width: 100,
                                child: ElevatedButton(
                                    onPressed: _stop,
                                    child: const Text("Stop",
                                        style: TextStyle(fontSize: 18)))),
                            SizedBox(
                                height: 60,
                                width: 100,
                                child: ElevatedButton(
                                    onPressed: _right,
                                    child: const Text("Right",
                                        style: TextStyle(fontSize: 18)))),
                          ]),
                      const SizedBox(height: 20),
                      SizedBox(
                          height: 60,
                          width: 100,
                          child: ElevatedButton(
                              onPressed: _reverse,
                              child: const Text("Reverse",
                                  style: TextStyle(fontSize: 18)))),
                    ],
                  )),
              const SizedBox(height: 20),
              Text(
                answer,
                style: const TextStyle(
                    fontSize: 32,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              ),
            ]),
      ),
    );
  }

  void _forward() {
    answer = 'Forward';
    setState(() {});
  }

  void _left() {
    answer = 'Left';
    setState(() {});
  }

  void _stop() {
    answer = 'Stop';
    setState(() {});
  }

  void _right() {
    answer = 'Right';
    setState(() {});
  }

  void _reverse() {
    answer = 'Reverse';
    setState(() {});
  }
}
