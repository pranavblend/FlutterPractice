import 'package:flutter/material.dart';

class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {

  bool isSelected =false;
  bool isSelected1 =false;
  List _images = [
    "assets/Cookie.png",
    "assets/noodles.png",
    "assets/Wings.png",
    "assets/Butter.png",
    "assets/Kabab.png",
    "assets/Tea.png"
  ];

  List _foodtcategory = [
    "Snacks",
    "Chinese",
    "Chinese",
    "Indian  ",
    "Fastfood",
    "Drinks  "
  ];

  List _foodname = [
    "Sweetmeat French Desset",
    "Chicken with Spicy Noodles",
    "Crispy Chicken Wings",
    "Butter Chcken Rice Combo",
    "Hot Flaming Kabab",
    "Spiced Chai Cafe Tea"
  ];

  // List _foodtype = ["Dessert", "Noodles", "Wings", "Combo", "Kabab", "Tea  "];

  List _cookingtime = [
    "50 min",
    "25 min",
    "30 min",
    "40 min",
    "25 min",
    "10 min"
  ];

  List _ing = ["5",
    "3",
    "8",
    "12",
    "10",
    "2"];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 4),
                      child: Text(
                        "Saved",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20, top: 4),
                      child: Text(
                        "22 recepies",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              SizedBox(
                height: size.height * .048,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Card(
                          elevation: 3,
                          child: Container(
                            height: size.height * .048,
                            width: size.height * .094,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(240, 245, 249, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                                child: Text(
                              "All",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black.withOpacity(.6)),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Card(
                          elevation: 3,
                          child: Container(
                            height: size.height * .048,
                            width: size.height * .094,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(240, 245, 249, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                                child: Text(
                              "Chinese",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black.withOpacity(.6)),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Card(
                          elevation: 3,
                          child: Container(
                            height: size.height * .048,
                            width: size.height * .094,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(240, 245, 249, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                                child: Text(
                              "Italian",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black.withOpacity(.6)),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Card(
                          elevation: 3,
                          child: Container(
                            height: size.height * .048,
                            width: size.height * .094,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(240, 245, 249, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                                child: Text(
                              "Indian",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black.withOpacity(.6)),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Card(
                          elevation: 3,
                          child: Container(
                            height: size.height * .048,
                            width: size.height * .094,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(240, 245, 249, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                                child: Text(
                              "Beverages",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black.withOpacity(.6)),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: _images.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Stack(
                  children: [
                    Container(
                      height: size.height * .2,
                      width: double.infinity,
                    ),
                    Positioned(
                        top: 28,
                        left: 46,
                        child: Card(
                          elevation: 8,
                          clipBehavior: Clip.hardEdge,
                          child: Container(
                            height: size.height * .15,
                            width: size.width * .78,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(232, 245, 249, 1),
                            ),
                            child: Container(
                              height: size.height * .18,
                              width: size.width * .4, 
                              child: Image.asset("assets/FOODUIBG.jpg",fit: BoxFit.fitWidth,colorBlendMode: BlendMode.softLight,),
                            ),
                          ),
                        )),
                    Positioned(
                        left: 20,
                        bottom: 30,
                        child: Container(
                          height: size.height * .18,
                          width: size.width * .4,
                          color: Colors.transparent,
                          child: Image.asset(_images[index]),
                        )),
                    Positioned(
                        left: 210,
                        top: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: size.height * .023,
                                  width: size.width * .012,
                                  color: Colors.deepOrange,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    _foodtcategory[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Icon(
                                    Icons.share,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.add_circle_rounded,
                                    color: Colors.deepOrange,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width: 130,
                              child: Text(
                                _foodname[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            // Text(
                            //   _foodtype[index],
                            //   style: TextStyle(
                            //       fontWeight: FontWeight.bold,
                            //       color: Colors.black,
                            //       fontSize: 18),
                            // ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(Icons.soup_kitchen),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, top: 4),
                                  child: Text(
                                    _cookingtime[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(.5)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Icon(
                                    Icons.local_fire_department,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                  ),
                                  child: Text(
                                    _ing[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(.5)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Row(
                children: [
                  Card(
                    child: ChoiceChip(label: Text("35"), selected: isSelected,showCheckmark: false,
                        selectedColor: Colors.blueAccent,
                        onSelected: (newstate){
                          setState(() {
                            isSelected=newstate;
                          });
                        }),
                  ),
                  ChoiceChip(label: Text("35"), selected: isSelected1,showCheckmark: false,
                      selectedColor: Colors.blueAccent,
                      onSelected: (newstate){
                        setState(() {
                          isSelected1=newstate;
                        });
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
