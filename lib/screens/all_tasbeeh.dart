import 'package:flutter/material.dart';

class AllTasbeeh extends StatefulWidget {
  String? tasbeehName;
  int? count;
  AllTasbeeh({this.tasbeehName,this.count});

  // List<dynamic> itemData = [];
  // tasbeehData (){
  //   Map itemDataList = {"tasbeehname": tasbeehName,"counter": count};
  //
  //   itemData.add(itemDataList);
  // }

  @override
  State<AllTasbeeh> createState() => _AllTasbeehState();
}
class _AllTasbeehState extends State<AllTasbeeh> {
  List<dynamic> itemData = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF43b562),
          title: const Text(
            "All Tasbeeh",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          // itemCount: itemData.length,
            itemBuilder: (context, index) {
              return Card(
            child: ListTile(
              leading: const CircleAvatar(
                  backgroundImage: AssetImage("images/leading_image.jpg")),
              title: Text(widget.tasbeehName!.length.toString(),

                style: const TextStyle(color: Colors.black),
              ),
              trailing: Text(widget.count!.toString()),
            ),
          );
        }));
  }
}
