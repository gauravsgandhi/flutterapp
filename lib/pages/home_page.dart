import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Codepur";
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: Text("Welcome to $days of flutter by $name"),
        ),
      ),
    );
  }
}
