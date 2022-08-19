import 'package:flutter/material.dart';

class ListTitlePage extends StatelessWidget {
  const ListTitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter ListTitle"),backgroundColor: Colors.purpleAccent,),
      body:ListTile(
        title: Text("WAVE",style: TextStyle(fontSize: 15),),
        subtitle: Text("I was born on Earth"" but I heard me say u are my heart."),
        leading: Icon(Icons.account_circle_sharp,color: Colors.greenAccent,size: 50,),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purpleAccent,
        child: Icon(Icons.add_a_photo,),
        onPressed: () {
          print("Camera");
        },
      ),
    );
  }
}
