import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SymbolDetails extends StatelessWidget {
const SymbolDetails({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.pink,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Symbol Details',style: TextStyle(
              color: Colors.grey,
            ),),
            ElevatedButton(onPressed: (){
              context.go('/screeners/symbol_details/symbol_details2');
            }, child: Icon(Icons.ac_unit))
          ],
        ),
      ),
    );
  }
}