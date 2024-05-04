import 'package:flutter/material.dart';
// ignore: must_be_immutable
class AzkarDetailsScreen extends StatefulWidget {
  AzkarDetailsScreen({Key? key,
    required this.azkarsText,
    required this.azkarsCounter
  }) : super(key: key);
  List <String> azkarsText;
  List <int>   azkarsCounter;
  @override
  State<AzkarDetailsScreen> createState() => _AzkarDetailsScreenState();
}

class _AzkarDetailsScreenState extends State<AzkarDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context,index){
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                      widget.azkarsText[index]
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    if(widget.azkarsCounter[index]>0){
                      widget.azkarsCounter[index]--;
                    }
                    setState((){});
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:widget.azkarsCounter[index]==0? Colors.green: Colors.black,
                        border: Border.all(color: Colors.black)
                    ),
                    child:  Text(
                      '${widget.azkarsCounter[index]}',
                      style: const TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            );
          },

          itemCount: widget.azkarsCounter.length,
        )
    );
  }
}