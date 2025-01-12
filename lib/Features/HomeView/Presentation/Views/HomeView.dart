import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Features/HomeView/Presentation/Views/HomeViewBody.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController titlecontroller = TextEditingController();

  TextEditingController subtitlecontroller = TextEditingController();

  TextEditingController numbercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BottomSheetItem(context);
        },
        child: Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text(
          "TODO App",
        ),
      ),
      body: HomeViewBody(),
    );
  }

  Future<dynamic> BottomSheetItem(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                " Write Your Information ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: titlecontroller,
                decoration: InputDecoration(
                  labelText: "title",
                ),
              ),
              TextField(
                controller: subtitlecontroller,
                decoration: InputDecoration(
                  labelText: "subtitle",
                ),
              ),
              TextField(
                controller: numbercontroller,
                decoration: InputDecoration(
                  labelText: "number",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  await AddData();
                  titlecontroller.clear();
                  subtitlecontroller.clear();
                  numbercontroller.clear();
                },
                child: Text("Add"),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> AddData() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.add(
      {
        'title': titlecontroller.text.toString(),
        'subtitle': subtitlecontroller.text.toString(),
        'number': numbercontroller.text.toString(),
      },
    );
  }
}
