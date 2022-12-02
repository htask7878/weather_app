import 'package:flutter/material.dart';
import 'package:weather_app/weather2.dart';
import 'package:weather_icons/weather_icons.dart';

class WeatherList extends StatefulWidget {
  const WeatherList({Key? key}) : super(key: key);

  @override
  State<WeatherList> createState() => _WeatherListState();
}

class _WeatherListState extends State<WeatherList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF47BFDF), Color(0xFF4A91FF)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Weather_2();
                    },
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 55,
                      width: 60,
                      child: BoxedIcon(
                        WeatherIcons.day_sunny,
                        color: Colors.amber,
                      ),
                    ),
                    SizedBox(width: 30,),
                    Text(
                      "Sunny",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Weather_2();
                    },
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 55,
                      width: 60,
                      child: BoxedIcon(
                        WeatherIcons.cloud_refresh,
                        color: Colors.amber,
                      ),
                    ),
                    SizedBox(width: 30,),

                    Text(
                      "Partly",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Weather_2();
                    },
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 55,
                      width: 60,
                      child: BoxedIcon(
                        WeatherIcons.cloud,
                        color: Colors.amber,
                      ),
                    ),
                    SizedBox(width: 28,),
                    Text(
                      "Cloudy",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Weather_2();
                    },
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 55,
                      width: 60,
                      child: BoxedIcon(
                        WeatherIcons.rain,
                        color: Colors.amber,
                      ),
                    ),
                    SizedBox(width: 30,),
                    Text(
                      "Rainy",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Weather_2();
                    },
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 55,
                      width: 60,
                      child: BoxedIcon(
                        WeatherIcons.snow,
                        color: Colors.amber,
                      ),
                    ),
                    SizedBox(width: 30,),
                    Text(
                      "Snow",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Weather_2();
                    },
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 55,
                      width: 60,
                      child: BoxedIcon(
                        WeatherIcons.storm_showers,
                        color: Colors.amber,
                      ),
                    ),
                    SizedBox(width: 30,),
                    Text(
                      "Stormy",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Weather_2();
                    },
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 55,
                      width: 60,
                      child: BoxedIcon(
                        WeatherIcons.thunderstorm,
                        color: Colors.amber,
                      ),
                    ),
                    SizedBox(width: 30,),
                    Text(
                      "Thunder",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
