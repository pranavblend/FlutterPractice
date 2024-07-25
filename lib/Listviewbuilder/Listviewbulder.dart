import 'package:flutter/material.dart';

class Listviewbulder extends StatefulWidget {
  const Listviewbulder({super.key});

  @override
  State<Listviewbulder> createState() => _ListviewbulderState();
}

class _ListviewbulderState extends State<Listviewbulder> {
  List _icon = [
    Icons.bed,
    Icons.chair_alt,
    Icons.chair_rounded,
    Icons.table_bar,
  ];

  List _title = [
    "Bed",
    "Chair",
    "Sofa",
    "Table"
  ];

  List _subtitle = [
    "King Size Bed",
    "King Size Chair",
    "Sofa Cum Bed",
    "Dressing Table"
  ];

  List _color = [Colors.blueAccent, Colors.redAccent, Colors.pinkAccent,Colors.green];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(28, 28, 28, 1),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: size.width * .92,
                    height: size.height * .3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                    left: 40,
                    top: 30,
                    child: Text(
                      "Top Rated",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w900,
                          fontSize: 25),
                    )),
                Positioned(
                    left: 40,
                    top: 80,
                    child: Text(
                      "Buy \n"
                      "Furniture",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 45),
                    )),
                Positioned(
                    left: 205,
                    top: 100,
                    child: Container(
                      width: size.width * .5,
                      height: size.height * .15,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/chair.png"))),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16),
                itemCount: _icon.length,
                itemBuilder: (context, index) => Card(
                  clipBehavior: Clip.hardEdge,
                  child: ListTile(
                    tileColor: _color[index],
                    leading: Icon(
                      _icon[index],
                      size: 28,
                      color: Colors.white.withOpacity(.6),
                    ),
                    title: Text(
                      _title[index],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                    subtitle: Text(
                      _subtitle[index],
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Colors.white.withOpacity(.6),
                      ),
                    ),
                    trailing: Icon(
                      Icons.delete,
                      size: 28,
                      color: Colors.white.withOpacity(.6),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
