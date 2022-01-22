import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_utilities_flutter/pages/home/home_page.dart';

class BottomBarPage extends StatefulWidget{

 @override
  State<StatefulWidget> createState() => _BottomBarPage();
}
class _BottomBarPage extends State<BottomBarPage>{
  final List<Widget> page = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
  final int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreent = HomePage();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: PageStorage(
        child: currentScreent,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                      minWidth: 40,
                      onPressed: (){},
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                              Icons.home,
                              color: currentTab ==0 ? Colors.blue : Colors.grey,
                          ),
                          Text("Home",style: TextStyle(
                            color: currentTab ==0 ? Colors.blue : Colors.grey,
                          ),)
                        ],
                      ) ,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){},
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTab ==1 ? Colors.blue : Colors.grey,
                        ),
                        Text("Dashboard",style: TextStyle(
                          color: currentTab ==1 ? Colors.blue : Colors.grey,
                        ),)
                      ],
                    ) ,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){},
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTab ==2 ? Colors.blue : Colors.grey,
                        ),
                        Text("Dashboard",style: TextStyle(
                          color: currentTab ==2 ? Colors.blue : Colors.grey,
                        ),)
                      ],
                    ) ,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){},
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: currentTab ==3 ? Colors.blue : Colors.grey,
                        ),
                        Text("Profile",style: TextStyle(
                          color: currentTab ==3 ? Colors.blue : Colors.grey,
                        ),)
                      ],
                    ) ,
                  ),
                ],
              )
            ],
          ),
        ),

      ),
    );
  }

}