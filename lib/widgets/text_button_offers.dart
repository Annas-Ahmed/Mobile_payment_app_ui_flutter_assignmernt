import 'package:flutter/material.dart';

textButtonOffers(context, data1, data2, image, contColor) {
  return Padding(
    padding: const EdgeInsets.only(left: 3),
    child: Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
              // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width * 0.9,
              color: Color(contColor),
              child: Stack(children: [
                Image.asset('assets/images/${image}.png'),
                Positioned(
                  top: 5,
                  left: 100,
                  child: Text(data1,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                ),
                Positioned(
                  top: 50,
                  left: 100,
                  child: Text(data2,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 10,
                      )),
                ),
              ])),
        ],
      ),
    ),
  );
}
