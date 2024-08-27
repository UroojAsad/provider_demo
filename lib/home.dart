import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/List_provider.dart';
import 'package:provider_demo/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> number=[1,2,3,4];

  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: ( context, numberProviderModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
           numberProviderModel.add();

          },
        ),
        appBar: AppBar(),
        body: Column(
          children: [
            Text(numberProviderModel.number.last.toString(),
            style: TextStyle(
              fontSize: 30,
            ),),
            Expanded(
              child: ListView.builder(
                  itemCount: numberProviderModel.number.length,
                  itemBuilder:(context,index){
                    return Text(numberProviderModel.number[index].toString(),
                      style: TextStyle(
                        fontSize: 30,
                      ),);
                  }),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Second()));
            }, child: Text('Second'))
          ],
        ),

      ),
    );
  }
}
