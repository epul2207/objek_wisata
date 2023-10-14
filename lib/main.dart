import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 12),
                child: const Text(
                  'Farm House Lembang',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Divider(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Open Everday')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.timer_off),
                      SizedBox(
                        height: 8,
                      ),
                      Text('09.00 - 20.00')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.money),
                      SizedBox(
                        height: 8,
                      ),
                      Text('RP 25.000')
                    ],
                  )
                ],
              ),
            ),
            Divider(
              height: 20,
            ),
            Container(
              child: Text(
                """Berada di jalur utama bandung - lembang ,
farmn house bisa kita nikmati dengan indah
dengan harga murah kamu bisa merasakan sejuk nya 
udara bandung yang sejuk nan menyegarkan paru paru kamu dari polusi udara di kota bandung""",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
