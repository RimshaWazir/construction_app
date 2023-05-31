import 'package:flutter/material.dart';

import 'buyerpage_profile.dart';

class Buyerprofile_sett extends StatefulWidget {
  const Buyerprofile_sett({Key? key}) : super(key: key);

  @override
  State<Buyerprofile_sett> createState() => _Buyerprofile_settState();
}

class _Buyerprofile_settState extends State<Buyerprofile_sett> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
               margin: EdgeInsets.only(right: 330),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Buyer_Profile(),
                        ));
                  },
                  icon: Icon(Icons.arrow_back,color: Colors.grey,)),
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('Assets/construct.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.5, color: Color(0xff502975)),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    labelText: '   Full Name',
                    labelStyle: const TextStyle(
                        color: Color(0xffC5C5C7),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.5, color: Color(0xff502975)),
                    ),
                    prefixIcon: Icon(
                      Icons.call,
                      color: Colors.grey,
                    ),
                    labelText: '  Phone Number',
                    labelStyle: const TextStyle(
                        color: Color(0xffC5C5C7),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.grey,
                    ),
                    labelText: '  Email',
                    labelStyle: const TextStyle(
                        color: Color(0xffC5C5C7),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
