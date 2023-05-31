import 'package:construction_app/security_buyer_prof.dart';
import 'package:flutter/material.dart';

import 'buyer_app_settings.dart';
import 'buyerprofile_sett.dart';

class Buyer_Profile extends StatefulWidget {
  const Buyer_Profile({Key? key}) : super(key: key);

  @override
  State<Buyer_Profile> createState() => _Buyer_ProfileState();
}

class _Buyer_ProfileState extends State<Buyer_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Buyerprofile_sett(),
                    ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                  ),
                  // SizedBox(
                  //   width: 5.w,
                  // ),
                  Container(
                    margin: const EdgeInsets.only(right: 215),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  // SizedBox(
                  //   width: 56.w,
                  // ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: const Color(0xff6C757D),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Buyer_prof_security(),
                    ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.security,
                      color: Colors.grey,
                    ),
                  ),
                  // SizedBox(
                  //   width: 5.w,
                  // ),
                  Container(
                    margin: const EdgeInsets.only(right: 130),
                    child: Text(
                      'Security and Privacy',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  // SizedBox(
                  //   width: 56.w,
                  // ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: const Color(0xff6C757D),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Buyer_app_settings(),
                    ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                  ),
                  // SizedBox(
                  //   width: 5.w,
                  // ),
                  Container(
                    margin: const EdgeInsets.only(right: 185),
                    child: Text(
                      'App Settings',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  // SizedBox(
                  //   width: 56.w,
                  // ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: const Color(0xff6C757D),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.logout_rounded,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 200),
                  child: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              title: Text(
                                'Do You Want To LogOut?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              actions: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                        onPressed: () {}, child: Text('Yes')),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    TextButton(
                                        onPressed: () {}, child: Text('No')),
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      )),
                ),
                Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: const Color(0xff6C757D),
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.delete,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 150),
                    child: TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                title: Column(
                                  children: [
                                    Text(
                                      'Confirm Deletion?',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Enter Phone Number'
                                      ),
                                    ),
                                TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Enter Password'
                                  ),
                                )],
                                ),
                                actions: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {}, child: Text('Cancel')),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      TextButton(
                                          onPressed: () {}, child: Text('Delete Account')),
                                    ],
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          'Delete Account',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                  // SizedBox(
                  //   width: 56.w,
                  // ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: const Color(0xff6C757D),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
