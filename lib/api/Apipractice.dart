import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class Apipracticeui extends StatefulWidget {
  const Apipracticeui({super.key});

  @override
  State<Apipracticeui> createState() => _ApipracticeuiState();
}

class _ApipracticeuiState extends State<Apipracticeui> {
  List<dynamic> data=[];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    final response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));

    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body)['data'];
      });
    } else {
      throw Exception("");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API"),
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(radius: 30,
              backgroundColor: Color.fromRGBO(232, 143, 27, 1),
              child: CircleAvatar(
                backgroundColor: Colors.white,radius: 24,
                backgroundImage: NetworkImage(data[index]["avatar"]),
              ),),
            title: Text(data[index]["first_name"]+data[index]["last_name"]),
            subtitle: Text(data[index]["email"]),
          ),),
          ),


        ],
      ),

    );
  }
}
