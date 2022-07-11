import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:silver_moon/widget/button.dart';
import 'package:silver_moon/widget/first.dart';
import 'package:silver_moon/widget/forgot.dart';
import 'package:silver_moon/widget/inputEmail.dart';
import 'package:silver_moon/widget/password.dart';
import 'package:silver_moon/widget/textLogin.dart';
import 'package:silver_moon/widget/verticalText.dart';
import 'package:silver_moon/pages/game.dart';


class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 5, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.black,
        shadowColor: Colors.black.withOpacity(0.5),
       
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Perfil', style: TextStyle(color: Colors.white),),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 84, 16, 11),

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
          onPressed:(){
             Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GameScreen()));
          }
        
        ), 
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white,),
            onPressed: (){},
          )
        ],
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 15),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2-40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.7),
                      blurRadius: 20,
                      spreadRadius: 10,

                    )
                  ],
                  color: Color.fromARGB(255, 84, 16, 11),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),

                  )

                ),
                child: Column(

                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: Container(

                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 84, 16, 11),
                                borderRadius: BorderRadius.circular(52.5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.yellow,
                                    spreadRadius:2,
                                  )
                                ]

                            ),

                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/933028079823474688/DCmxd-uF_400x400.jpg'),
                            ),
                          ),
                        ),


                      ],
                    ),
                    SizedBox(),
                    Text('', style: TextStyle(color: Colors.white, ),),
                    Padding(
                      padding: const EdgeInsets.only( bottom: 10),
                      child: Text('', style: TextStyle(color: Colors.white,fontSize: 23, fontWeight: FontWeight.bold  ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius:1,
                                  )
                                ]

                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.create_rounded, color: Colors.white,),
                                  SizedBox(height: 3,),
                                  Text('Editar', style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),

                          Container(

                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius:1,
                                  )
                                ]

                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(4.5),
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.star_outlined, color: Colors.white,),
                                  SizedBox(height: 3,),
                                  Text('Troféus', style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),

                          Container(

                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius:1,
                                  )
                                ]

                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.swap_vertical_circle, color: Colors.white,),
                                  SizedBox(height: 3,),
                                  Text('Vincular', style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                          Container(

                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius:1,
                                  )
                                ]

                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.settings, color: Colors.white,),
                                  SizedBox(height: 3,),
                                  Text('Ajustes', style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          )


                        ],
                      ),
                    ),
                  ],
                ),

                ),
              
            ],
          ),
        ),
        
    );
  }
}