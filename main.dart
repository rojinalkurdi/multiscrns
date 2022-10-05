import 'package:flutter/material.dart';
import 'package:app/screen1.dart'


void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override 
 widget build(BuildContext context){
  return MaterialApp(
    home: myhomepage();
  )
 }
}
class myhomepage extends StatelessWidget{
  void selectscreen(BuildContext ctx, int n){
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_){
      if (n==1) return screen1();
      else if (n==2) return screen2();
      else return screen3();
    }))
  }
  @override
  widget build(BuildContext context){
  return Scaffold( 
    appBar: AppBar( 
      title: Text("the app bar"),
    ),
    body: Center(
      child: column( 
        MainAxisAlignment : MainAxisAlignment.center,
        children: <widget>[
          inkwell( 
            child: Text("click me"),
            onTap: () => selectscreen(context,1)
          ),
          inkwell( 
            child: Text("click me"),
            onTap: () => selectscreen(context,2)
          ),
          inkwell( 
            child: Text("click me"),
            onTap: () => selectscreen(context,3)
          ),
        ]
      )

    )
  )
}