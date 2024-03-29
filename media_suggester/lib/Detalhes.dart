import 'package:flutter/material.dart';

class Detalhes extends StatefulWidget {
  Detalhes(this.id, {super.key});

  int id;

  //buscar na api os detalhes da mídia

  @override
  State<Detalhes> createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          "TÍTULO PLACEHOLDER",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person, color: Colors.red, size: 30),
                    padding: EdgeInsetsDirectional.all(8.0),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey.shade900,
      ),
    );
  }
}
