import 'package:flutter/material.dart';

textButtonWidget(b, String data) {
  return Column(children: [
    TextButton(
        child: Icon(
          b,
          color: Color(0xffFA4D96),
          size: 30,
        ),
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0XFF242042)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ))),
        onPressed: () => null),
        SizedBox(height: 5,),
    Text(data,style: TextStyle(color: Color.fromARGB(255, 215, 214, 214)))
  ]);
}
