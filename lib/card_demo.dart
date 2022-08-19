import 'package:flutter/material.dart';

class Menu{
  final String? title;
  final IconData? icon;
  final Color? bgColor;

  const Menu({this.title,this.icon,this.bgColor});
}

List<Menu> menu = [
  const Menu(title: 'MENU 1', icon: Icons.home,bgColor: Colors.pinkAccent),
  const Menu(title: 'MENU 2', icon: Icons.person,bgColor: Colors.redAccent),
  const Menu(title: 'MENU 3', icon: Icons.face,bgColor: Colors.orangeAccent),
  const Menu(title: 'MENU 4', icon: Icons.male,bgColor: Colors.yellowAccent),
  const Menu(title: 'MENU 5', icon: Icons.female,bgColor: Colors.greenAccent),
  const Menu(title: 'MENU 6', icon: Icons.back_hand,bgColor: Colors.blueAccent),
  const Menu(title: 'MENU 7', icon: Icons.wallet,bgColor: Colors.purpleAccent),

];

class CardDemo extends StatelessWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card Title"),),
      body: Container(
        padding: EdgeInsets.all(25),
        child: GridView.count(
          crossAxisCount: menu.length,
          children: List.generate(menu.length, (index) {
            return Card(
              color: menu[index].bgColor,
              margin: EdgeInsets.all(5),
              child: InkWell(
                onTap: (){},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(menu[index].icon,size: 25,color: Colors.black,),
                    Text(menu[index].title!,style: TextStyle(fontSize: 12,color: Colors.black),)
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
