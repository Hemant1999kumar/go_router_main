import 'package:flutter/material.dart';

class SymbolDetails2 extends StatelessWidget {
const SymbolDetails2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black12,
        child: Center(child: Text('SymbolDetails2')),
      ),
    );
  }
}