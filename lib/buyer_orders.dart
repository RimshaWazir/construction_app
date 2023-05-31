import 'package:flutter/material.dart';

class Buyer_Orders extends StatefulWidget {
  const Buyer_Orders({Key? key}) : super(key: key);

  @override
  State<Buyer_Orders> createState() => _Buyer_OrdersState();
}

class _Buyer_OrdersState extends State<Buyer_Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.track_changes,
          color: Colors.black,
        ),
        title: const Text(
          "History & Track Orders",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 100,
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: Container(
                            child: Image(
                              image: AssetImage('Assets/house.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 7,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "0",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Orders in Cart",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Order Now",
                                        style: TextStyle(
                                            color: Color(0xff502975),
                                            fontWeight: FontWeight.bold),
                                      ))
                                ],
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: Container(
                height: 100,
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: Container(
                            child: Image(
                              image: AssetImage('Assets/house.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 7,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "0",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Pending Orders",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Track Now",
                                        style: TextStyle(
                                            color: Color(0xff502975),
                                            fontWeight: FontWeight.bold),
                                      ))
                                ],
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: const [
                  Text(
                    "Received Orders",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Icon(Icons.history),
                ],
              ),
            ),
            SizedBox(
              height: 100 * 15,
              child: ListView.builder(
                  itemCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                          color: Colors.white,
                          height: 80,
                          width: double.infinity,
                          child: ListTile(
                              title: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        "Building Material",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Text("2023-05-03"),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "Rs 500",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                              // leading: SizedBox(
                              //   height: 30,
                              //   width: 40,
                              //   child: Padding(
                              //     padding: const EdgeInsets.all(0.0),
                              //     child: Image.asset("images/cmmjp.png"),
                              //   ),
                              // ),
                              trailing: Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: index.isEven
                                            ? Color(0xff502975)
                                            : Colors.pink,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: Text(
                                        index.isEven ? "orders" : "orders",
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.80),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Center(
                                      child: Text(
                                        "Completed",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ))),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
