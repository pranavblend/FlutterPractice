import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api2ui extends StatefulWidget {
  const Api2ui({super.key});

  @override
  State<Api2ui> createState() => _Api2uiState();
}

class _Api2uiState extends State<Api2ui> {
  List<dynamic> data = [];

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  Future getUsers() async {
    final response = await http.get(Uri.parse("https://reqres.in/api/unknown"));
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body)['data'];
      });
    } else {
      throw Exception("Failed to load data");
    }
  }

  Color hexToColor(String hexString) {
    hexString = hexString.replaceFirst('#', '');
    return Color(int.parse('FF$hexString', radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Data"),
      ),
      body: data.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            height: 100,
            color: hexToColor(data[index]["color"]),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data[index]["name"],
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    data[index]["pantone_value"],
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    data[index]["year"].toString(),
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
