import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class Weather_2 extends StatefulWidget {
  const Weather_2({Key? key}) : super(key: key);

  @override
  State<Weather_2> createState() => _Weather_2State();
}

class _Weather_2State extends State<Weather_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF47BFDF), Color(0xFF4A91FF)])),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.location_on,
                  size: 30,
                ),
                Text(
                  "Semarang",
                  style: TextStyle(fontSize: 30),
                ),
                Icon(
                  Icons.arrow_drop_down_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.power_settings_new,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            BoxedIcon(
              WeatherIcons.cloud,
              color: Colors.amber,
              size: 100,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)),
                child: Column(
                  children: [
                    Text(
                      "Today, 26 November",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      "29",
                      style: TextStyle(fontSize: 100, color: Colors.white),
                    ),
                    Text(
                      "Cloudy",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        Text(
                          "Time",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "06:00 AM",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        Text(
                          "Time",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "06:00 AM",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        Text(
                          "Time",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "06:00 AM",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        Text(
                          "Time",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "06:00 AM",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        Text(
                          "Time",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "06:00 AM",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text(
                "Forecast report  >",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
