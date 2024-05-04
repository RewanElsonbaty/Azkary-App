import 'package:azkar_app/screens/sebha/sebha_screen.dart';
import 'package:flutter/material.dart';
import '../azkar/azkar_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;
  List<Widget> screens=[AzkarScreen() ,const SebhaScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex:currentIndex,
        onTap: (index){
          currentIndex = index;
          setState(() {});
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'azkar'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'sebha')
        ],
      ),
    );
  }
}
