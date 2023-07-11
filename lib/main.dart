import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

  void _onScroll() {
    print("Scrolled");
  }

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(
      initialPage: 1,
    )..addListener(_onScroll);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage('assets/images/1.jpg'),
          makePage('assets/images/2.jpg'),
          makePage('assets/images/3.jpg'),
        ],
      ),
    );
  }

  Widget makePage(image) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                stops: [0.3, 0.9],
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.7),
                  Colors.black.withOpacity(.1),
                ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  "1",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  "/4",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
