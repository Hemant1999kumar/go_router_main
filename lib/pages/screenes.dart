import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screeners extends StatelessWidget {
const Screeners({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.grey,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(child: Icon(Icons.child_care),onPressed: (){
              context.go('/screeners/symbol_details');
            },),
          ],
        ),
      ),
    );
  }
}