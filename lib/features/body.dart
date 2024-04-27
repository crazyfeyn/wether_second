import 'package:flutter/material.dart';

Widget bodyFunc() {
  return Column(
    children: [
      Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Next 7 Days",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 40,
              ),
              weatherInfoLoop(),
            ],
          )),
    ],
  );
}

Widget weatherInfoLoop() {
  List iconList = const [
    Icon(
      Icons.sunny,
      color: Colors.yellow,
      size: 28,
    ), // Sunny icon
    Icon(
      Icons.ac_unit,
      color: Colors.white,
      size: 28,
    ), // Rain icon
    Icon(
      Icons.cloud,
      color: Colors.blue,
      size: 28,
    ),
  ];

  //! weekend list
  List<String> weekDays = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thurday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  List<Widget> lst = [];
  for (int i = 1; i < 8; i++) {
    var x = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        iconList[i % 3],
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("${weekDays[i - 1]},",
                style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            Text(
              " $i oct",
              style: const TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 222, 211, 211)),
            )
          ],
        ),
        const Row(
          children: [
            Text("32",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            Text(
              " / 31°",
              style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 222, 211, 211),
                  fontWeight: FontWeight.w500),
            )
          ],
        )
      ],
    );
    lst.add(x);
    lst.add(const SizedBox(
      height: 20,
    ));
  }

  return Column(
    children: lst,
  );
}
