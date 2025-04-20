import 'package:flutter/material.dart';
import 'package:inspiration_app/payment/esewa/esewa_payment_service.dart';

void main() => runApp(MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Title')),
        backgroundColor: const Color.fromARGB(255, 225, 41, 0),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.blue),
          onPressed: () {},
        ),
      ),

      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              //
              // width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 225, 225, 218),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(15),
                ),
              ),
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Find Your',
                    style: TextStyle(color: Colors.blue, fontSize: 25),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Style',
                    style: TextStyle(fontSize: 45, color: Colors.blue),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 156, 158, 159),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.black),
                        hintText: "Search your inspiration",
                        hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 10, 10, 10),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Promo Today',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // SizedBox(height: 10),
                  // Container(
                  //   height: 200,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: <Widget>[],
                  //   ),
                  //),
                ],
              ),
            ),
            Text('Button'),
            GestureDetector(
              onTap: () {
                EsewaPaymentService().initalizePayment();
                // // Your onPressed logic here
                //print('Container tapped!');
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    'Click Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget promoCard() {
  //   return AspectRatio(
  //     aspectRatio: 2 / 3,
  //     child: Container(
  //       decoration: BoxDecoration(
  //         color: Colors.orange,
  //         borderRadius: BorderRadius.circular(20),
  //         image: DecorationImage(image: AssetImage('assets/images/one.png')),
  //       ),
  //     ),
  //   );
  // }
}
