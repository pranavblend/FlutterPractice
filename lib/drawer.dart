import 'package:flutter/material.dart';
import 'package:newwidgets/Datepicker/Datepicker.dart';
import 'package:newwidgets/Listviewbuilder/Listviewbulder.dart';

class Drawerui extends StatefulWidget {
  const Drawerui({super.key});

  @override
  State<Drawerui> createState() => _DraweruiState();
}

class _DraweruiState extends State<Drawerui> {
  late PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController=PageController(initialPage: 0);
  }
  int _page =0;

  List drawerItems =[
    {
      "icon":Icons.add,
      "name":"New Post",

    },
    {
      "icon":Icons.delete,
      "name":"Delete Post",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
  title: Text("Drawer"),
),drawer: Drawer(
      child: Column(
        children: [
          DrawerHeader(child:
          Text("Drawer Header",style: TextStyle(
            color: Colors.white
          ),),decoration: BoxDecoration(
            color: Colors.blueAccent,
          ),
          ),
           Expanded(
             child: ListView.builder(itemCount:drawerItems.length,itemBuilder: (BuildContext context,int index){
               Map item=drawerItems[index];
               return ListTile(
                 leading: Icon(item['icon'],color:
                   _page==index?Colors.black:Colors.orange),
                 title: Text(
                     item['name'],style: TextStyle(
                     color: _page==index?Colors.black:Colors.orange
                   ),
                 ),onTap:(){
                   _pageController.jumpToPage(index);
                   Navigator.pop(context);
               },
               );
             } ),
           )
        ],
      ),
    ),
    body: PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      onPageChanged: onPageChanged,
      children: [
        Listviewbulder(),
        Datepicker(),
      ],
    ),);
  }

  void navigationTapped(int page){
    _pageController.jumpToPage(page);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  void onPageChanged(int page){
    setState(() {
      _page=page;
    });
  }
}
