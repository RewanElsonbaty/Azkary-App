import 'package:flutter/material.dart';
class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  List<String> sebhaText=['سبحان الله','الحمدلله','الله اكبر','لا اله الا الله'];

  double angle=0;

  int counter=0;

  int index=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:Column(
            children: [
              const SizedBox(height: 10,),
              const Text(' السبحة',
                style: TextStyle(
                    fontSize:30
                ),
              ),
              Image.asset('assets/images/WhatsApp Image 2023-01-31 at 7.44.21 PM.jpeg',
                height: MediaQuery.of(context).size.height*0.15,
              )
            ],
          ) ,
          toolbarHeight: MediaQuery.of(context).size.height*0.25,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                counter++;
                if(counter==33  || counter==66 || counter==99 || counter == 100 ){
                  //0  subhan
                  // 1  el 7 at counter =33
                  // 2 allah  at counter ==66
                  index++;
                }
                if(index>3){
                  index=0;
                  counter = 0;
                }
                angle=angle+20;
                setState(() {});
              },
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset('assets/images/top-removebg-preview.png',),
                  Padding(
                    padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.08),
                    child: Transform.rotate(
                      angle:angle,
                      child: Image.asset('assets/images/WhatsApp_Image_2022-12-14_at_8.37.28_PM-removebg-preview.png',

                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              child: Text(
                ' ${sebhaText[index]}',
                style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


