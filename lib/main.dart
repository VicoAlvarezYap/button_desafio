import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: CustomButton(text: "holis chikis",iconData: Icons.ac_unit , backgroundColor: Colors.yellow, borderColor: Colors.pinkAccent,),
   );
  }
}

class CustomButton extends StatelessWidget{


   String? text;
   IconData? iconData;
   String? iconPath;
   Color? backgroundColor;
   Color? borderColor;
   Function? onTap;

  CustomButton({super.key, this.text, this.iconData, this.iconPath, this.backgroundColor = Colors.pinkAccent, this.borderColor, this.onTap}){
    borderColor ??= backgroundColor;

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
       elevation:20,
        shadowColor: Colors.black,
        child:Container(
        width: 200,
        decoration: BoxDecoration(color: backgroundColor, border: Border.all(color: borderColor!, width: 2),borderRadius: BorderRadius.all(Radius.circular(7))),
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconData!= null ? Icon(iconData) :SizedBox() ,
            SizedBox(width: 15,),
            text != null ? Text(text!): SizedBox()
          ],
        ),
        ),
      ));
  }


}