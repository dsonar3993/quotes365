import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quotes365/quotepage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: screenSize.width,
            height: screenSize.height,
            child: Image.asset(
              'assets/bg.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 48.0,
              ),
              child: Image.asset(
                'assets/banner.png',
                width: screenSize.width - 64,
              ),
            ),
          ),
          Positioned(
            bottom: 1,
            child: Container(
              height: screenSize.height / 2,
              width: screenSize.width,
              color: Colors.grey.withOpacity(.75),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QuotePage())),
                    style: const ButtonStyle().copyWith(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.black),
                      shape: MaterialStateProperty.resolveWith(
                        (states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.resolveWith(
                        (states) => Size(screenSize.width / 2, 60),
                      ),
                    ),
                    child: const Text("QUOTE OF THE DAY"),
                  ),
                  ElevatedButton(
                    onPressed: () => showDialog(
                        context: context,
                        builder: (context) => SimpleDialog(
                              title: const Text(
                                "About",
                                textAlign: TextAlign.center,
                              ),
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 16.0, horizontal: 32.0),
                                  child: Text(
                                    "Quotes 365 app is the collections of success quotes to motivate you every day. There are inspirational quotes by famous and outstanding people who really know what they are talking about. Best quotes for 365 days of your productive year.",
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text("OK"))
                              ],
                            )),
                    style: const ButtonStyle().copyWith(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.black),
                      shape: MaterialStateProperty.resolveWith(
                        (states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.resolveWith(
                        (states) => Size(screenSize.width / 2, 60),
                      ),
                    ),
                    child: const Text("ABOUT"),
                  ),
                  ElevatedButton(
                    onPressed: () => SystemNavigator.pop(),
                    style: const ButtonStyle().copyWith(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.black),
                      shape: MaterialStateProperty.resolveWith(
                        (states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.resolveWith(
                        (states) => Size(screenSize.width / 2, 60),
                      ),
                    ),
                    child: const Text("QUIT"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
