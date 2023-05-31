import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class WorkerAccount extends StatefulWidget {
  const WorkerAccount({Key? key}) : super(key: key);

  @override
  State<WorkerAccount> createState() => _WorkerAccountState();
}

class _WorkerAccountState extends State<WorkerAccount> {
  late var _isSecurePassword = true;
  final _formKey = GlobalKey<FormState>();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                  // margin: EdgeInsets.only(left: 40),
                  height: 270,
                  width: 270,
                  child: const Image(image: AssetImage('Assets/Logo.png'))),
              Padding(
                padding: const EdgeInsets.all(15),
                child: DropDownTextField(
                  textFieldDecoration: InputDecoration(
                      hintText: 'Types of Workers',
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
                  dropDownItemCount: 7,
                  dropDownList: const [
                    DropDownValueModel(
                      name: 'Construction Helper',
                      value: "Construction Helper",
                    ),
                    DropDownValueModel(
                        name: 'Construction Mason',
                        value: "Construction Mason"),
                    DropDownValueModel(
                        name: 'Carpenter/Wood Worker',
                        value: "Carpenter/Wood Worker"),
                    DropDownValueModel(
                        name: 'Tile and Marble Mason',
                        value: "Tile and Marble Mason"),
                    DropDownValueModel(
                        name: 'Electrician', value: "Electrician"),
                    DropDownValueModel(name: 'Painter', value: "Painter"),
                    DropDownValueModel(name: 'Other', value: "Other"),
                  ],
                  onChanged: (val) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      hintText: '   Full Name',
                      labelStyle: const TextStyle(
                          color: Color(0xffC5C5C7),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                  ),
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.name);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: TextFormField(
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return "Please enter email";
                    //   } else if (!value.contains("@")) {
                    //     return "Please enter valid email";
                    //   }
                    // },
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.grey,
                      ),
                      hintText: '  Email(Optional)',
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
                        Icons.person_pin_rounded,
                        color: Colors.grey,
                      ),
                      hintText: '   Years of Experience ',
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
                        Icons.person_outline,
                        color: Colors.grey,
                      ),
                      hintText: '  Age',
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
                  child: TextFormField(
                    validator: (PassCurrentValue) {
                      RegExp regex = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                      var passNonNullValue = PassCurrentValue ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      } else if (passNonNullValue.length < 6) {
                        return ("Password Must be more than 5 characters");
                      } else if (!regex.hasMatch(passNonNullValue)) {
                        return ("Password should contain upper,lower,digit and Special character ");
                      }
                      return null;
                    },
                    obscureText: _isSecurePassword,
                    decoration: InputDecoration(
                      suffixIcon: togglePassword(),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      hintText: '   Pssword',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: TextFormField(
                    validator: (PassCurrentValue) {
                      RegExp regex = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                      var passNonNullValue = PassCurrentValue ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      } else if (passNonNullValue.length < 6) {
                        return ("Password Must be more than 5 characters");
                      } else if (!regex.hasMatch(passNonNullValue)) {
                        return ("Password should contain upper,lower,digit and Special character ");
                      }
                      return null;
                    },
                    obscureText: _isSecurePassword,
                    decoration: InputDecoration(
                      suffixIcon: togglePassword(),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      hintText: '   Confirm Password',
                      labelStyle: const TextStyle(
                          color: Color(0xffC5C5C7),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
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
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => WorkerAccount(),
                      //     ));
                    },
                    child: const Text(
                      'SignUp',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(
        onPressed: () {
          setState(() {
            _isSecurePassword = !_isSecurePassword;
          });
        },
        icon: _isSecurePassword
            ? Icon(
                Icons.visibility_off,
                color: Colors.grey,
              )
            : Icon(
                Icons.visibility,
                color: Colors.grey,
              ));
  }
}
