import 'package:flutter/material.dart';

rewardsTab() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        height: 20,
      ),
      ListTile(
        
        title: Center(
          child: Text("Cashbacks earned",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )),
        ),
        
        subtitle: Center(
          child: Text("\$507",
              style: TextStyle(
                  color: Color(0xffB0BEC5),
                  fontSize: 50,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      Text(
        "+88Rs this month",
        style: TextStyle(
          color: Color(0xffB0BEC5),
          fontSize: 20,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextButton(
          child: Text("View your cashback history",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              )),
          style: ButtonStyle(
              padding:
                  MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xFF343645)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ))),
          onPressed: () => null),
    ],
  );
}
