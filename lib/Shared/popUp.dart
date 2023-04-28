import 'package:flutter/material.dart';

Future<void> retriveMoney(BuildContext context) {
  return showDialog(
      context: context,
      builder: (_) => AlertDialog(
          title: Text('Select transaction method'),
          content: SizedBox(
            height: 150,
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                  child: Card(
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Image(
                            //     image: AssetImage("assets/moblie.jpg"),
                            //     height: 50,
                            //     width: 50),
                            Text(
                              "Orange Money",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                        )),
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Card(
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Image(
                            //     image: AssetImage("assets/moblie.jpg"),
                            //     height: 50,
                            //     width: 50),
                            Text(
                              "Mobile Money",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                        )),
                  ),
                ),
              ],
            ),
          )),
      barrierDismissible: true);
}
