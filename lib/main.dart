import 'package:flutter/material.dart';
import 'package:wether_second/features/body.dart';

void main(List<String> args) {
  runApp(FullWeatherInfo());
}

class FullWeatherInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF4178FF),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF4178FF),
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bandung,",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Indonesia",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )
              ],
            ),
            actions: const [
              SizedBox(
                width: 100,
              )
            ],
          ),
          body: bodyFunc()),
    );
  }
}
