import 'package:flutter/material.dart';

balanceTab(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        height: 20,
      ),
      ListTile(
        leading: Icon(
          Icons.arrow_circle_left_outlined,
          color: Colors.white,
        ),
        title: Center(
          child: Text("Portfolio Value",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )),
        ),
        trailing: Icon(
          Icons.align_vertical_bottom_sharp,
          color: Colors.white,
        ),
        subtitle: Center(
          child: Text("\$54,375",
              style: TextStyle(
                  color: Color(0xffB0BEC5),
                  fontSize: 50,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      Text(
        "In 3 Accounts",
        style: TextStyle(
          color: Color(0xffB0BEC5),
          fontSize: 20,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
              child: Text("Federel Bank\n1142524899652\n16,456.05",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  )),
              style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF652A5F)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              onPressed: () => null),
          SizedBox(
            width: 10,
          ),
          TextButton(
              child: Text("States Bank\n1142524899652\n2045.05",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  )),
              style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF442A65)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              onPressed: () => null),
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        children: [
          TextButton(
              child: Text("Best Bank\n1142524899652\n35873.5",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  )),
              style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF2A6550)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              onPressed: () => null),
        ],
      ),
      SizedBox(height: 20),
      TextButton(
          child: Text("Add / Manage Accounts",
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
