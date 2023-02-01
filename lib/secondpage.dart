import 'package:flutter/material.dart';
import 'package:task_3/constants.dart';

class secondpage extends StatelessWidget {

  final int index ;
  secondpage({Key? key,required this.index} ) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:(Scaffold(
        appBar:  AppBar(backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('Details Screen',style:TextStyle(color: Colors.black,fontSize: 30)),
        ),
        body: new Container(
          child: new Container(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyan.withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.arrow_left,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                ),
                Container(
                  child: Stack(
                    children: [
                      Image.asset("assets/$index.jpg",height: 300, width: 400)
                     //   Image.asset("assets/$.jpg", height: 300, width: 400),
                    ],

                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Padding(padding:EdgeInsets.fromLTRB(5,0,50,50)),
                          Text(model[index],style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Padding(padding:EdgeInsets.fromLTRB(5,0,50,0)),
                          Text(price[index],style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Padding(padding:EdgeInsets.fromLTRB(5,50,10,35)),
                          Text("More Details",style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Padding(padding:EdgeInsets.fromLTRB(5,25,20,0)),
                          Text("the describe of Nike shoes,the describe of Nike shoes\n"
                              "the describe of Nike shoes,the describe of Nike shoes\n "
                              "the describe of Nike shoes,the describe of Nike shoes\n"
                              "the describe of Nike shoes,the describe of Nike shoes\n"
                              "the describe of Nike shoes.",style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
               ],


             ),
          ),
        ),
      )) ,
    );

  }
}
