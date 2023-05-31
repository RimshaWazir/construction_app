import 'package:flutter/material.dart';

import 'cost_estimate.dart';

class buyer_page extends StatefulWidget {
  const buyer_page({Key? key}) : super(key: key);

  @override
  State<buyer_page> createState() => _buyer_pageState();
}

class _buyer_pageState extends State<buyer_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        flex: 8,
                        child: SizedBox(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                filled: true,
                                hintText: "Search Ads",
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Color(0xff502975),
                                )),
                          ),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: 50,
                          color: Colors.white,
                          child: Icon(
                            Icons.filter_alt_rounded,
                            color: Color(0xff502975),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 20,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Posted Ads",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 6,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('Assets/house.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Positioned(
                                          top: 10,
                                          left: 10,
                                          child: Container(
                                            color: Color(0xff502975),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "Top",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          )),
                                      Positioned(
                                          bottom: -15,
                                          right: 10,
                                          child: Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.grey),
                                                  color: Colors.white,
                                                  shape: BoxShape.circle),
                                              child: const Icon(
                                                Icons.favorite,
                                                color: Colors.red,
                                              ))),
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
                                              style:
                                                  TextStyle(color: Colors.grey),
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
                                                    fontWeight:
                                                        FontWeight.w700),
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
                                                    fontWeight:
                                                        FontWeight.w700),
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
            ),
            SizedBox(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Couldn't Find Your Product!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 140,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23),
                    ),
                    primary: const Color(0xff502975),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  Cost_Estimate(),
                        ));
                  },
                  child: const Text(
                    'Cost Estimate',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
