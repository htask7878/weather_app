import 'package:flutter/material.dart';
import 'package:sqflite_common/sqlite_api.dart';

import 'Success.dart';
import 'loginpage.dart';

class SignUpPage extends StatefulWidget {
  Database database;

  SignUpPage(this.database);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();
  List countryList = ["India", "USA", "Canada", "UK", "Australia"];
  String? currentCountry;
  String country = "country";
  bool isCheck = false;

  countryMenu() {
    return countryList
        .map<DropdownMenuItem<String>>(
            (e) => DropdownMenuItem(value: e, child: Text(e)))
        .toList();
  }

  signup() {
    if (t1.text == "") {
      isCheck = false;
    } else if (t2.text == "") {
      isCheck = false;
    } else if (t3.text == "") {
      isCheck = false;
    } else if (t4.text == "") {
      isCheck = false;
    } else {
      setState(() {
        isCheck = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image(
                  image: AssetImage("my_image/splash.png"),
                  color: Colors.black,
                  width: 200,
                  height: 50),
              Text(
                "Forcasting",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "enter your email address and passwords",
                style: TextStyle(color: Colors.black45),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: t1,
                  cursorColor: Color(0xff808080),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff808080)),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff808080)),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Full Name",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: t2,
                  cursorColor: Color(0xff808080),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff808080)),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff808080)),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Phone Number",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black45),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: DropdownButton(
                    isExpanded: true,
                    icon: Icon(Icons.keyboard_arrow_down_outlined),
                    hint: Text(country),
                    value: currentCountry,
                    onChanged: (String? value) {
                      setState(() {
                        currentCountry = value ?? "";
                      });
                    },
                    items: countryMenu(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: t3,
                  cursorColor: Color(0xff808080),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff808080)),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff808080)),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Email",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  keyboardType: TextInputType.visiblePassword,
                  controller: t4,
                  cursorColor: Color(0xff808080),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff808080)),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff808080)),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Password",
                  ),
                  onChanged: (value) {
                    signup();
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  if (t1.text != "" &&
                      t2.text != "" &&
                      t3.text != "" &&
                      t4.text != "" &&
                      country != "") {
                    String nam = t1.text;
                    String num = t2.text;
                    String countryName = country;
                    String Email = t3.text;
                    String pasword = t4.text;

                    String sql =
                        " insert into user values(null,'$nam','$num','$countryName','$Email','$pasword')";
                    print(sql);
                    int r_id = await widget.database.rawInsert(sql);
                    print(r_id);

                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Success(widget.database);
                      },
                    ));
                  } else {
                    print("This is not Possible");
                  }
                },
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    gradient: isCheck
                        ? LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff47BFDF), Color(0xff4A91FF)])
                        : LinearGradient(colors: [Colors.grey, Colors.grey]),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "signup",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LogIn(widget.database);
                    },
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text("Already have an account?")),
                    TextButton(
                        style: TextButton.styleFrom(
                            fixedSize: Size(10, 0),
                            disabledForegroundColor: Colors.transparent),
                        onPressed: () {
                          if (widget.database != null) {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return LogIn(widget.database);
                              },
                            ));
                          }
                        },
                        child: Text(
                          "Log in", //
                          style: TextStyle(color: Colors.blue, fontSize: 14),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
