import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_ui/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.8,
                color: Colors.black,
                child: Image(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/purpleBackground.png')),
              ),
              Positioned(
                top: 120,
                left: 50,
                child: Text("LOGIN WITH YOUR\nMOBILE PHONE\nNUMBER",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 35)),
              ),
              Positioned(
                top: 320,
                left: 130,
                child:
                    Image(image: AssetImage('assets/images/mobilePhone.png')),
              ),
              Positioned(
                top: 250,
                left: 50,
                child: Image(
                    image:
                        AssetImage('assets/images/loginColorfullDesign.png')),
              ),
              Positioned(
                top: 370,
                left: 65,
                child: Image(image: AssetImage('assets/images/lady.png')),
              ),
            ]),
            Stack(children: [
              Container(
                color: Colors.black,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter Mobile Number',
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
                onChanged: (value) {
                  // do something
                },
              ),
              Positioned(
                top: 50,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      },
                      style: ButtonStyle(

                          // elevation: 3.0,
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                      child: Text("Verify")),
                ),
              ),
              Positioned(
                top: 100,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Text(
                        "Your personal dteails are safe with us\n"
                        "Read our Privacy Policy and Terms and Conditions",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey)),
                  ),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
