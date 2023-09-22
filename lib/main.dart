import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lottery app"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                  child: Text(
                "Lottery winning number is 4",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              )),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: x == 4
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.done_all_rounded,
                              color: Colors.green,
                              size: 50,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Congratulations, you've won the lottery, number is $x",
                              textAlign: TextAlign.center,
                            )
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 50,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Better luck next time, Your lottery number is $x \n Try again",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
