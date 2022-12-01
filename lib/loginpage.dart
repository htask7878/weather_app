import 'package:flutter/material.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:weather_app/weatherlist.dart';

// import 'weatherlist.dart';

class LogIn extends StatefulWidget {
  Database database;

  LogIn(this.database);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController t = TextEditingController();
  TextEditingController t1 = TextEditingController();
  String email = "";
  String pasword = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  List<Map> list = [];

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
        child: FutureBuilder(future: getdata(),builder: (context, snapshot) {
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
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  controller: t,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Email"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  controller: t1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "password"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if(snapshot.connectionState==ConnectionState.done)
                    {
                      List l = snapshot.data;
                      print(l);
                      if(l.contains(t.text) && l.contains(t1.text))
                        {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                            return WeatherList();
                          },));
                        }
                    }
                   // dhhcjdoOjcbdbd djhcjdjshc
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 60,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      gradient: LinearGradient(
                          colors: [Colors.blueAccent, Colors.lightBlueAccent])),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              )
            ],
          );
        },)
      )),
    );
  }
}
