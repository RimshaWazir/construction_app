import 'package:construction_app/account_as_buyer.dart';
import 'package:construction_app/account_as_manpower.dart';
import 'package:construction_app/account_as_seller.dart';
import 'package:construction_app/account_as_worker.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class Account_As extends StatefulWidget {
  const Account_As({Key? key}) : super(key: key);

  @override
  State<Account_As> createState() => _Account_AsState();
}

class _Account_AsState extends State<Account_As> {
  String dropdownvalue = 'Seller';
  var items = [
    'Seller',
    'Buyer',
    'Workforce',
    'Worker',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
              // margin: EdgeInsets.only(left: 40),
              height: 270,
              width: 270,
              child: const Image(image: AssetImage('Assets/Logo.png'))),
          Padding(
            padding: const EdgeInsets.all(12),
            child: DropDownTextField(
              textFieldDecoration: const InputDecoration(
                  hintText: 'Signup As',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.person_add,
                    color: Colors.grey,
                  )),
              clearOption: true,
              validator: (value) {
                if (value == null) {
                  return "Required field";
                } else {
                  return null;
                }
              },
              dropDownItemCount: 4,
              dropDownList: const [
                DropDownValueModel(
                  name: 'Seller',
                  value: "Seller",
                ),
                DropDownValueModel(name: 'Buyer', value: "Buyer"),
                DropDownValueModel(name: 'Manpower', value: "Manpower"),
                DropDownValueModel(
                  name: 'Worker',
                  value: "Worker",
                ),
              ],
              onChanged: (value) {
                setState(() {
                  if (value.value == 'Seller') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SellerAccount(),
                        ));
                  } else if (value.value == 'Buyer') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BuyerAccount(),
                        ));
                  } else if (value.value == 'Manpower') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Manpower(),
                        ));
                  } else if (value.value == 'Worker') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WorkerAccount(),
                        ));
                  }
                });
              },
            ),
          ),
          const SizedBox(
            height: 20,
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

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const SellerAccount(),
                  //     ));
                },
                child: const Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
          ),
        ],
      ),
    );
  }
}
