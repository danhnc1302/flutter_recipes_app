import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 280,
                color: const Color(0xFFFFF5EA),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 45, 15, 10),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(25),
                      child:
                         TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search, size: 26, color: Colors.black),
                              hintText: 'Search for recieps and channels',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                            ),
                          ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.orange,
                            style: BorderStyle.solid,
                            width: 6,
                          )
                        )
                      ),
                      child: const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'POPULAR RECIPES',
                                style: TextStyle(
                                  fontFamily: 'Timesroman',
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'THIS WEEK',
                                style: TextStyle(
                                    fontFamily: 'Timesroman',
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.only(top:15, left:15),
                    height: 140,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        _foodCard(),
                        const SizedBox(width: 10),
                        _foodCard(),
                        const SizedBox(width: 10),
                        _foodCard(),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 15),
                    child: const Text(
                      'September 7',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 15),
                    child: const Text(
                      'TODAY',
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Opacity(
                            opacity: 0.7,
                            child: Image.asset('assets/breakfast.jpg', fit: BoxFit.cover),
                          ),
                        )
                      ),
                      Positioned(
                        top: 100,
                          left: 50,
                          child: Column(
                            children: [
                              const Text('BEST OF',
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                              const Text('THE DAY',
                                style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                              Container(
                                height: 4.0,
                                width: 75.0,
                                color: Colors.orange,
                              ),
                            ],
                          )
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _foodCard() {
    return Container(
      padding: EdgeInsets.all(5),
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image:
                const DecorationImage(image: AssetImage('assets/balanced.jpg'))),
            height: 125.0,
            width: 100.0,
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              const Text(
                'Grilled Chicken',
                style: TextStyle(
                    fontFamily: 'Quicksand'
                ),
              ),
              const Text(
                'with Fruit Salad',
                style: TextStyle(fontFamily: 'Quicksand'),
              ),
              const SizedBox(height: 10.0),
              Container(
                height: 2.0,
                width: 75.0,
                color: Colors.orange,
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage('assets/chris.jpg'),
                          )
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  const Text('James Oliver',
                      style: TextStyle(
                          fontFamily: 'Quicksand')
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
