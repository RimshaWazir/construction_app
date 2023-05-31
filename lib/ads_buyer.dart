import 'package:flutter/material.dart';

import 'buyerpage_profile.dart';

class Buyer_Ads extends StatefulWidget {
  const Buyer_Ads({Key? key}) : super(key: key);

  @override
  State<Buyer_Ads> createState() => _Buyer_AdsState();
}

class _Buyer_AdsState extends State<Buyer_Ads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 30),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                height: 40,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            pageindx = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                              color: index == pageindx
                                  ? const Color(0xff502975)
                                  : Colors.deepPurple,
                              borderRadius: BorderRadius.circular(15)),
                          height: 40,
                          width: 150,
                          child: Center(
                            child: Text(
                              tablist[index],
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: pageindx == index
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: pageindx == 0 ? 1000 : 300,
                child: screenslist[pageindx],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<String> tablist = ["My Ads", "Saved Ads"];
  List<Widget> screenslist = [
    const MyadsPage(),
    Container(
      child: const Center(
        child: Text(
          "No Saved Ad's",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ),
    )
  ];
  int pageindx = 0;
}

class MyadsPage extends StatelessWidget {
  const MyadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
          itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Expanded(
                    flex: 7,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Container(
                            child: Image(
                              image: AssetImage('Assets/house.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 4,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.house,
                                  color: Color(0xff502975),

                                ),
                                const Text(
                                  "Building Material",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Text(
                                    "RS 500000",
                                    style: TextStyle(
                                        color: Color(0xff502975),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: const [
                                  Text(
                                    "Sky View Building",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        );
      }),
    );
  }
}
