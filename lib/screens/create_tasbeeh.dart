import 'package:flutter/material.dart';
import 'package:tasbeeh_app/screens/all_tasbeeh.dart';

class CreateTasbeeh extends StatefulWidget {
  const CreateTasbeeh({Key? key}) : super(key: key);

  @override
  State<CreateTasbeeh> createState() => _CreateTasbeehState();
}

class _CreateTasbeehState extends State<CreateTasbeeh> {

  TextEditingController nameController = TextEditingController();
  TextEditingController counterController = TextEditingController();

  String tasbeehname = "";
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF43b562),
        title: const Text(
          "Create Tasbeeh",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Image(
              fit: BoxFit.cover,
              image: AssetImage("images/background_image.png")),
          Positioned(
            top: 30,
            left: 18,
            child: Container(
              height: 260,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.softLight,
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF74b082)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Tasbeeh Name",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        // width: 50,
                        decoration: const BoxDecoration(
                            backgroundBlendMode: BlendMode.softLight,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xFF74b082)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            tasbeehname.toUpperCase(),
                            style: const TextStyle(
                                fontSize: 30, color: Colors.white),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 50,
                      right: 50,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Count",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          decoration: const BoxDecoration(
                              backgroundBlendMode: BlendMode.softLight,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(45)),
                              color: Color(0xFF74b082)),
                          child: Center(
                              child: Text(
                            "$counter",
                            style: const TextStyle(
                                fontSize: 30, color: Colors.white),
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 300),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            counter++;
                          });
                        },
                        child: Container(
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.add_road_outlined,
                                  size: 35,
                                  color: Color(0xFF43b562),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Counter",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(top: 300),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            counter = 0;
                          });
                        },
                        child: Container(
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.replay_sharp,
                                  size: 35,
                                  color: Color(0xFF43b562),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Reset",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllTasbeeh(
                                        tasbeehName: nameController.text,
                                        count: counter,
                                      )));
                        },
                        child: Container(
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.download_rounded,
                                  size: 35,
                                  color: Color(0xFF43b562),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Save Zikr",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllTasbeeh(),
                            ),
                          );
                        },
                        child: Container(
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.save,
                                  size: 35,
                                  color: Color(0xFF43b562),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Saved Zikr",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF43b562),
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: const Color(0xFF43b562),
                  title: const Text(
                    'Add Zikr',
                    style: TextStyle(color: Colors.white),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            tasbeehname = value;
                          });
                        },
                        controller: nameController,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          labelText: "Enter Tasbeeh Name",
                          labelStyle: const TextStyle(
                              fontSize: 20, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            counter = value as int;
                          });
                        },
                        controller: counterController,
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          labelText: "Enter Counter",
                          labelStyle: const TextStyle(
                              fontSize: 20, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.white)),
                                onPressed: () {
                                  setState(() {
                                    counter++;
                                    tasbeehname;
                                  });
                                  Navigator.pop(context);
                                },
                                child: const Text("Save")),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.white)),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Cancel")),
                          ),
                        ],
                      )
                    ],
                  )));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
