import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:appflutter/soporte.dart';
import 'package:appflutter/metrica.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final screens =[
    const Center(child:Text('inicio',style:TextStyle(fontSize: 45))),
    SoportePage(),
    PaginaMetricas()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
     preferredSize: Size(100, 60),           
     child: SafeArea(
       child: Container(
         height: 80,
         color: Colors.red,
         child:Image.asset('assets/banner3.png',fit: BoxFit.fill,)
         ,
       ),
     ),
        // title:Image.asset('assets/banner3.png', fit:BoxFit.fill),
        // centerTitle: true,
        // toolbarHeight: 60.0,
        
      ),
      body: screens[_currentIndex],
    bottomNavigationBar:GNav(
      selectedIndex: _currentIndex,
      onTabChange: (index)=>{
        setState(()=>_currentIndex =index)
      },
      tabs:[
        GButton(
          icon: Icons.home,
          text: 'home',
          // iconActiveColor: Colors.white,
          // textColor: Colors.white,
          ),
          GButton(
          icon: Icons.catching_pokemon,
          text: 'soporte',
          // iconActiveColor: Colors.white,
          // textColor: Colors.white,
          ),
          GButton(
          icon: Icons.person,
          text: 'perfil',
          // iconActiveColor: Colors.white,
          // textColor: Colors.white,
          ),
        

      ],
       ) ,
    );
  }
}
