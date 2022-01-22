import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_utilities_flutter/common/constants/contants.dart';
import 'package:my_utilities_flutter/common/helpers/my_behavior.dart';
import 'package:my_utilities_flutter/widgets/widgets.dart';

class Choice {
  const Choice({ required this.title,required this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Home', icon: Icons.home),
  const Choice(title: 'Contact', icon: Icons.contacts),
  const Choice(title: 'Map', icon: Icons.map),
  const Choice(title: 'Phone', icon: Icons.phone),
  const Choice(title: 'Camera', icon: Icons.camera_alt),
  const Choice(title: 'Setting', icon: Icons.settings),
  const Choice(title: 'Album', icon: Icons.photo_album),
  const Choice(title: 'WiFi', icon: Icons.wifi),
  const Choice(title: 'Setting', icon: Icons.settings),
  const Choice(title: 'Album', icon: Icons.photo_album),
  const Choice(title: 'WiFi', icon: Icons.wifi),
  const Choice(title: 'WiFi', icon: Icons.wifi),
];
class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
           alignment: Alignment.bottomCenter,
            children: [
              ClipPath(
                clipper:MyClipper(),
                child: Container(
                    padding: EdgeInsets.only(top: 100,left: 24,right: 24),
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.blue,
                              Colors.pinkAccent
                            ]
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello",style: TextStyleContants.contentStyle1,),
                            SizedBox(height: 12,),
                            Text("Trần Phú Nhuận",style: TextStyleContants.contentStyle2)
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 70,
                          width: 70,
                          child:  CircleAvatar(
                            backgroundImage: AssetImage("assets/images/avatar.jpg"),
                          ),
                        )
                      ],
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Color(0xFFF3F5FF).withOpacity(1), spreadRadius: 1, blurRadius: 1, offset: Offset(0, 3))],
                ),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return ItemMenuHomeTop();
                      }
                  ),
                ),
              ),
            ],
          ),
        Container(
          height: 400,
            padding: EdgeInsets.all(20),
          child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: List.generate(choices.length, (index){
              return Center(
                child: SelectCard(choice: choices[index]),
              );
            }),
          ),
        )
        ],
      ),
    );
  }
}
class SelectCard extends StatelessWidget {
  const SelectCard({Key? key,required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.orange,
        child: Center(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Icon(choice.icon, size:50.0)),
              Text(choice.title),
            ]
        ),
        )
    );
  }
}