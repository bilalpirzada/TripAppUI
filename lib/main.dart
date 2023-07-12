import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
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
          makePage(
            currentPage: "1",
            image: 'assets/images/1.jpg',
            title: "Sea",
            description:
                "A sea is a large body of salty water. There are particular seas and the sea. The sea commonly refers to the ocean, the wider body of seawater.",
          ),
          makePage(
            currentPage: "2",
            image: 'assets/images/2.jpg',
            title: "Camp",
            description:
                "Classic camping trip involves toughing it out in tents – and at the mercy of Mother Nature. Camping can be – and usually is – combined with other adventure activities, such as hiking/trekking, fishing, whitewater rafting and kayaking, giving one the ultimate outdoors experience.",
          ),
          makePage(
            currentPage: '3',
            image: 'assets/images/3.jpg',
            title: "Lahore",
            description:
                "Lahore is the second largest city in Pakistan after Karachi and 26th largest in the world, with a population of over 13 million. It is situated in the north-east of the country with River Ravi flowing north-west of the city. It is the capital of the province of Punjab, where it is the largest city.",
          ),
          makePage(
            currentPage: '4',
            image: 'assets/images/4.jpg',
            title: "Cheng pin kchan",
            description:
                "toughing it out in tents – and at the mercy of Mother Nature. Camping can be – and usually is – combined with other adventure activities, such as hiking/trekking, fishing, whitewater rafting and kayaking, giving one the ultimate outdoors experience.",
          ),
        ],
      ),
    );
  }

  Widget makePage({currentPage, image, title, description}) {
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
                stops: const [0.3, 0.9],
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.7),
                  Colors.black.withOpacity(.1),
                ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  currentPage,
                  style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Text(
                  "/4",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      const Text(
                        "4.0 ",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      const Text(
                        "(23000)",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    description,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
