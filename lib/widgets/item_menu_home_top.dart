import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_utilities_flutter/common/constants/contants.dart';

class ItemMenuHomeTop extends StatefulWidget{
   @override
  State<StatefulWidget> createState() => _ItemMenuHomeTop();
}
class _ItemMenuHomeTop extends State<ItemMenuHomeTop>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      width: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue,
            Colors.pinkAccent
          ]
        ),borderRadius: BorderRadius.all(Radius.circular(10))
      ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: SvgPicture.asset("assets/icons/ic_test.svg"),
              ),
              Text("Menu",style: TextStyleContants.textMenuStyle,)
            ],
          ),
        ),
    );
  }
}