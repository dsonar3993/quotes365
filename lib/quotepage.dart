import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quotes365/quotes.dart';

class QuotePage extends StatefulWidget {
  const QuotePage({super.key});

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  @override
  Widget build(BuildContext context) {
    int month = DateTime.now().month;
    int day = DateTime.now().day;
    int index = (month * 30) + day;
    String quote = quotesList.elementAt(index).split("—").first;
    String author = quotesList.elementAt(index).split("—").last;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.keyboard_double_arrow_left,
            size: 48,
          ),
        ),
        automaticallyImplyLeading: false,
        title: const Text("Quote of the Day"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Card(
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)
                ),
                elevation: 4,
                margin: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(

                  color: Color.fromRGBO(
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextInt(255),
                      Random().nextDouble()),
                      borderRadius: BorderRadius.circular(24)
                  ),
                  child: Stack(
                    children: [
                      RotatedBox(
                        quarterTurns: 30,
                        child: Image.asset(
                          'assets/quotes.png',
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        right: 1,
                        child: Image.asset(
                          'assets/quotes.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              quote,
                              style: TextStyle(
                                fontSize: 24,
                                color: Color.fromRGBO(
                                  Random().nextInt(255),
                                  Random().nextInt(255),
                                  Random().nextInt(255),
                                  1,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "-- $author",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(
                                    Random().nextInt(255),
                                    Random().nextInt(255),
                                    Random().nextInt(255),
                                    1,
                                  ),
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 64),
                  child: FloatingActionButton.extended(
                    backgroundColor: Colors.black,
                    icon: const Icon(Icons.color_lens),
                    label: const Text("Re-Color"),
                    onPressed: () => setState(() {}),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
