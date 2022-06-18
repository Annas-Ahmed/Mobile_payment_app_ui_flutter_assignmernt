import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_ui/login_screen.dart';

class OpenScreen extends StatelessWidget {
  const OpenScreen({Key? key}) : super(key: key);

  loginPage(){

  }

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
                    Image.asset(assetName),
                    Positioned(
                      top: 15,
                      left: 20,
                      child: Image.asset(asset2Name))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:100),
                  child: ElevatedButton(
                    onPressed:  (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                    
                    child: Text("INSTANT PAY"),
                    
                  ),
                )
              ],
            )));
  }
}
