import 'package:flutter/material.dart';
import 'package:pasganjilfruit/navigationavbar.dart';
import 'package:pasganjilfruit/duahalaman.dart';
import 'package:pasganjilfruit/component.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Jual Fruit',
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 29, 29),
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0x00ffffff),
        leading: IconButton(
            icon: Icon(Icons.menu,
                color: const Color.fromARGB(225, 255, 255, 255)),
            onPressed: () => {}),
        actions: <Widget>[
          IconButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HalamanDua()),
              ),
            },
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            height: 35,
            width: 35,
            child: CircleAvatar(
              radius: 48,
              backgroundImage: AssetImage('images/bibble.jpg'),
            ),
          ),
        ],
      ),
      body: Container(
        alignment: AlignmentDirectional.center,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: Image.asset('images/offer.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommended Fruits',
                          style: TextStyle(
                              color: const Color.fromARGB(225, 255, 255, 255),
                              fontSize: 21,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'View all',
                                  style: TextStyle(
                                    color: Color.fromARGB(235, 255, 153, 0),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Color.fromARGB(235, 255, 153, 0),
                                    )),
                              ]),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PerbuahWidget(),
                              PerbuahWidget(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PerbuahWidget(),
                              PerbuahWidget(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: ButtomNavigationBar(),
    );
  }
}
