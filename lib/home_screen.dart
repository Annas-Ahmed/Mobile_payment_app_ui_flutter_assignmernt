import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var assetName = 'assets/images/cloud.png';
    var asset2Name = 'assets/images/spark.png';
    return Scaffold(
        body: Container(
            color: Color.fromARGB(249, 32, 32, 32),
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 1.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Center(child: Image.asset(assetName)),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.asset(asset2Name),
                    ))
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      // onPressed:  onPressed(){

                      // }
                      // ,
                      child: Text("INSTANT PAY"),
                      
                    )
                  ],
                )
              ],
            )));
  }
}
