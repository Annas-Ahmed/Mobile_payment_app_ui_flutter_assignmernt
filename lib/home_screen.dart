import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_ui/balance_tab.dart';
import 'package:mobile_payment_ui/offers_tab.dart';
import 'package:mobile_payment_ui/rewards_tab.dart';
import 'package:mobile_payment_ui/widgets/circle_avatar.dart';
import 'package:mobile_payment_ui/widgets/text_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/girlAvatar.png'),
            ),
            title: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.5),
                  hintText: "Search Users,ID's etc",
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
              onChanged: (value) {
                // do something
              },
            ),
            actions: <Widget>[
              Stack(children: [
                Positioned(
                  top: 5,
                  left: 4,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.3),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    size: 30,
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
              ])
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Home",
                ),
                Tab(
                  text: "Balance",
                ),
                Tab(
                  text: "Offers",
                ),
                Tab(
                  text: "Rewards",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(children: [
                      const SizedBox(height: 30),
                      Text("Money Transfer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.only(left: 150.0),
                        child: ElevatedButton(
                            onPressed: activate,
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.grey.withOpacity(0.5)),
                            ),
                            child: Text("more")),
                      )
                    ]),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Color(0XFF5B2E62),
                                // height:20,
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.crop_free,
                                    size: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: const Text('Scan QR Code'),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Color(0XFF2E624C),
                                // height:20,
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person_add_alt_outlined,
                                    size: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: const Text('Send To Contact'),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Color(0XFF5E622E),
                                // height:20,
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.account_balance_outlined,
                                    size: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: const Text('Send To Bank'),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Color(0XFF622E3A),
                                // height:20,
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.loop_rounded,
                                    size: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: const Text('Self Transfer'),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                    Row(children: [
                      const SizedBox(height: 30),
                      Text("Recharge & Bill Payment",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: ElevatedButton(
                            onPressed: activate,
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.grey.withOpacity(0.5)),
                            ),
                            child: Text("more")),
                      )
                    ]),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Color(0XFF32652A),
                                // height:20,
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.mobile_screen_share_rounded,
                                    size: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: const Text('Mobile Payment'),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Color(0XFF652A5F),
                                // height:20,
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.wb_sunny_outlined,
                                    size: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: const Text('Electricity Bill'),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Color(0XFF652A2A),
                                // height:20,
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.play_circle_outlined,
                                    size: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: const Text('DTH recharge'),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Color(0XFF2A4065),
                                // height:20,
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.receipt_long_outlined,
                                    size: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: const Text('Postpaid Bill'),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Ticket Booking",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            textButtonWidget(Icons.play_circle_sharp, "movie"),
                            textButtonWidget(Icons.train_outlined, "trains"),
                            textButtonWidget(
                                Icons.directions_bus_outlined, "bus"),
                            textButtonWidget(
                                Icons.airplanemode_on_outlined, "flight"),
                            textButtonWidget(
                                Icons.local_car_wash_outlined, "car"),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("More Services",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            textButtonWidget(Icons.play_circle_sharp, "movie"),
                            SizedBox(width: 10),
                            textButtonWidget(Icons.train_outlined, "trains"),
                            SizedBox(width: 10),
                            textButtonWidget(
                                Icons.directions_bus_outlined, "bus"),
                            SizedBox(width: 10),
                            textButtonWidget(
                                Icons.airplanemode_on_outlined, "flight"),
                            SizedBox(width: 10),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text("Recent Transactions",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/avatar1.png'),
                            ),
                            circleAvatarWidget('avatar2'),
                            circleAvatarWidget('avatar3'),
                            circleAvatarWidget('avatar4'),
                            circleAvatarWidget('avatar5'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              balanceTab(context),
              offersTab(context),
              rewardsTab(),
            ],
          ),
        ));
  }
}
