import 'package:flutter/material.dart';
import 'package:task_3/secondpage.dart';
import 'package:task_3/constants.dart';

class firstpage extends StatelessWidget {
  firstpage ({Key?key}):super (key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar:  AppBar(backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('SHOPPERS',style:TextStyle(color: Colors.black,fontSize: 30)),
        ),

        body: new Container(
            child:new Container(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.9,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 6,
                  itemBuilder: (BuildContext ctx, i) {
                   return Container(
                     margin: EdgeInsets.fromLTRB(20,24,20,10),
                     decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(25),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.withOpacity(1),
                             blurRadius: 7,
                             spreadRadius: 2,)]
                     ),
                     child: Column(
                       children: [
                         InkWell(
                           onTap: (){
                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => secondpage(index: i,)));
                           },
                           child: Padding(padding: EdgeInsets.all(10),
                             child: Image.asset('assets/$i.jpg',
                               height: 80, width: 150,),
                           ),
                         ),
                         Padding(padding: EdgeInsets.only(bottom: 8),
                           child: Container(
                             alignment: Alignment.center,
                             child: Text(model[i],
                               style: TextStyle(fontSize: 20,
                                   fontWeight: FontWeight.normal,
                                   color: Colors.black
                               ),
                             ),
                           ),
                         ),
                         Padding(padding: EdgeInsets.only(bottom: 8),
                           child: Container(
                             alignment: Alignment.center,
                             child: Text(price[i],
                               style: TextStyle(fontSize: 20,
                                   //fontWeight: FontWeight.bold,
                                   color: Colors.black
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),

                   );
                  }),

              ),)
        );


  }


}

