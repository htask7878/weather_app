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
          padding: EdgeInsets.all(40),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF47BFDF), Color(0xFF4A91FF)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  Weather_2();
                  },));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(height: 60,width: 60,
                      child: BoxedIcon(WeatherIcons.day_sunny,color: Colors.amber,),
                    ),
                    Container(
                      child: Text("Sunny",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  Weather_2();
                  },));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(height: 60,width: 60,
                      child: BoxedIcon(WeatherIcons.cloud_refresh,color: Colors.amber,),
                    ),
                    Container(
                      child: Text("Partly",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  Weather_2();
                  },));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(height: 60,width: 60,
                      child: BoxedIcon(WeatherIcons.cloud,color: Colors.amber,),
                    ),
                    Container(
                      child: Text("Cloudy",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  Weather_2();
                  },));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(height: 60,width: 60,
                      child: BoxedIcon(WeatherIcons.rain,color: Colors.amber,),
                    ),
                    Container(
                      child: Text("Rainy",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  Weather_2();
                  },));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(height: 60,width: 60,
                      child: BoxedIcon(WeatherIcons.snow,color: Colors.amber,),
                    ),
                    Container(
                      child: Text("Snow",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  Weather_2();
                  },));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(height: 60,width: 60,
                      child: BoxedIcon(WeatherIcons.storm_showers,color: Colors.amber,),
                    ),
                    Container(
                      child: Text("Stromy",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  Weather_2();
                  },));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(height: 60,width: 60,
                      child: BoxedIcon(WeatherIcons.thunderstorm,color: Colors.amber,),
                    ),
                    Container(
                      child: Text("Thunder",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ],
                ),
              ),




            ],
          )
      ),
    );
  }
}
