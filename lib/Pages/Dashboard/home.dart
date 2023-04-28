import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:round_icon/round_icon.dart';
import 'package:swiftcoin/Shared/popUp.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> transactions = [
    {
      "title": "Upload money to mobile money acc",
      "time": "At 12:30",
      "Invoice": "-12,000",
      "currency": "cfa",
      "icon": Icons.upload,
      "color": Colors.pinkAccent
    },
    {
      "title": " Retrieve money from orange money acc",
      "time": "At 11:15",
      "Invoice": "+ 5,000",
      "currency": "cfa",
      "icon": Icons.download,
      "color": Color.fromARGB(255, 174, 253, 237)
    },
    {
      "title": "Transfer Money to UserName",
      "time": "At O9:13",
      "Invoice": "- 200",
      "currency": "cfa",
      "icon": Icons.money,
      "color": Colors.amber
    }
  ];

  @override
  Widget build(BuildContext context) {
    final widthQuery = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Swiftcoin'),
        backgroundColor: Color.fromARGB(255, 60, 173, 193),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 220,
            width: widthQuery,
            color: Color.fromARGB(255, 60, 173, 193),
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'Income',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '120,000',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    SizedBox(width: 4),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                      child: Text(
                        'CFA',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
              width: 400,
              left: 50,
              top: 130,
              child: Column(
                children: [
                  Card(
                    elevation: 3,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                            child: Column(
                              children: [
                                MaterialButton(
                                  onPressed: () {},
                                  color: Colors.amber,
                                  elevation: 0,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.money,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                  padding: EdgeInsets.all(25),
                                  shape: CircleBorder(),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    "Transfer Money",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(169, 158, 158, 158),
                                        fontSize: 13),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 30, 20),
                            child: Column(
                              children: [
                                MaterialButton(
                                  onPressed: () {},
                                  color: Colors.blueAccent,
                                  elevation: 0,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.money,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                  padding: EdgeInsets.all(25),
                                  shape: CircleBorder(),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    "Request Money",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(169, 158, 158, 158),
                                        fontSize: 13),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                  )
                ],
              )),

// Second card

          Positioned(
              width: 400,
              left: 50,
              top: 260,
              child: Column(
                children: [
                  Card(
                    elevation: 3,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                            child: Column(
                              children: [
                                MaterialButton(
                                  onPressed: () {},
                                  color: Colors.pinkAccent,
                                  elevation: 0,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.upload,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                  padding: EdgeInsets.all(25),
                                  shape: CircleBorder(),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    "Upload Money",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(169, 158, 158, 158),
                                        fontSize: 13),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 30, 20),
                            child: Column(
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    retriveMoney(context);
                                  },
                                  color: Color.fromARGB(255, 174, 253, 237),
                                  elevation: 0,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.download,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                  padding: EdgeInsets.all(25),
                                  shape: CircleBorder(),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    "Retrive Money",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(169, 158, 158, 158),
                                        fontSize: 13),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                  )
                ],
              )),

          Positioned(
            top: 410,
            // width: widthQuery,
            left: 60,
            right: 60,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Recent Transactions",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(
                        "Invoice",
                      ),
                    ],
                  ),
                  Divider(height: 10),
                  for (var data in transactions)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              RoundIcon(
                                icon: data['icon'],
                                backgroundColor: data['color'],
                                iconColor: Colors.white,
                                size: 35,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${data['title']}'),
                                    Text(
                                      '${data['time']}',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              184, 158, 158, 158)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Text(
                            "${data['Invoice']} ${data['currency']}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
          BottomNavigationBarItem(
              icon: Icon(Icons.money), label: 'Transactions'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
        selectedItemColor: Color.fromARGB(255, 60, 173, 193),
      ),
    );
  }
}
