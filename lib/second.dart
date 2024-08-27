import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/List_provider.dart';

class Second extends StatefulWidget {

  const Second({super.key, });

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
        builder: ( context, numberListProvider, child){
          return Scaffold(

            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                numberListProvider.add();
              },
            ),
            appBar: AppBar(),
            body: Column(
              children: [
                Text(numberListProvider.number.last.toString(),
                  style: TextStyle(
                    fontSize: 30,
                  ),),
                Container(
                  height: 200,
                  width: double.maxFinite,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,

                      itemCount:numberListProvider. number.length,
                      itemBuilder:(context,index){
                        return Text(numberListProvider.number[index].toString(),
                          style: TextStyle(
                            fontSize: 30,
                          ),);
                      }),
                )
              ],
            ),

          );
        }
    );
  }
}
