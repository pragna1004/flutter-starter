import 'package:flutter/material.dart';
void main(){
  runApp(hehe());
}
class hehe extends StatefulWidget {
  const hehe({super.key});

  @override
  State<hehe> createState() => _heheState();
}

class _heheState extends State<hehe> {
  List<Image> c = [
    Image.asset("1.jpg"),
    Image.asset("2.jpg"),
    Image.asset("3.jpg")
  ];
  int s = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child:Text("Pictures")),
          ),
          body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height:50,width:50,
                    child: c[s],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){
                        if (s>0){
                          setState(() {
                            s--;
                          });
                        }
                        else{
                          setState(() {
                            s=c.length-1;
                          });

                        }
                      }, child: Text("previous image")),
                      ElevatedButton(onPressed: () {
                        if (s < c.length - 1) {
                          setState(() {
                            s++;
                          });
                        }
                        else {
                          setState(() {
                            s = 0;
                          });
                        }
                      }, child: Text("next picture")),
                    ],
                  ),
                ],
              )
          )
      ),


    );
  }
}

