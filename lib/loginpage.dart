import 'package:flutter/material.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:weather_app/weatherlist.dart';

class LogIn extends StatefulWidget {
  Database database;

  LogIn(this.database);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  String email = "";
  String pasword = "";
  List emailList = [];
  List passwordList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  Future getdata() async {
    String sql = " select * from user";
    List<Map> l = [];
    l = await widget.database.rawQuery(sql);
    return l;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
              child: FutureBuilder(
        future: getdata(),
        builder: (context, snapshot) {
          return Column(
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
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
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
                    hintText: "Email",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18, left: 18, top: 15),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  keyboardType: TextInputType.visiblePassword,
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
                    hintText: "Password",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (snapshot.connectionState == ConnectionState.done) {
                    List l = snapshot.data;
                    print(l);

                    l.forEach((element) {
                      emailList.add(element['email']);
                      passwordList.add(element['password']);
                    });

                    if (emailList.contains(t1.text) &&
                        passwordList.contains(t2.text)) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return WeatherList();
                      }));
                    }
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Ink(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff47BFDF), Color(0xff4A91FF)])),
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text("Don’t have an account?")),
                  TextButton(
                      style: TextButton.styleFrom(
                          disabledForegroundColor: Colors.transparent),
                      onPressed: () {
                        print("This is one more");
                        // Navigator.pushReplacement(context, MaterialPageRoute(b,))
                      },
                      child: Text(
                        "Signup", //
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      ))
                ],
              )
            ],
          );
        },
      ))),
    );
  }
}
