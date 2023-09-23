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
          height: 70,
          decoration: BoxDecoration(
            color: Colors.red,
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 99, 99, 99), 
                blurRadius: 5.0,    
                offset: Offset(0, 2), 
              ),
            ],
          ),
          child: Image.asset('assets/banner3.png', fit: BoxFit.fill),
        ),
      ),
    ),
      body: screens[_currentIndex],
    bottomNavigationBar:GNav(
      activeColor: Colors.white,
      color: Colors.grey,
      backgroundColor: const Color.fromARGB(255, 34, 34, 34),
      padding: EdgeInsets.symmetric(horizontal:20 ,vertical:18 ),

      selectedIndex: _currentIndex,
      onTabChange: (index)=>{
        setState(()=>_currentIndex =index)
      },
      tabs:[
        GButton(
          icon: Icons.home,
          text: 'home',
      
          ),
          GButton(
          icon: Icons.catching_pokemon,
          text: 'soporte',
         
          ),
          GButton(
          icon: Icons.bar_chart,
          text: 'metrica',
         
          ),
        

      ],
      
       ) ,
    );
  }
}
