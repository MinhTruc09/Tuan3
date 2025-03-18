import 'package:flutter/material.dart';
class TextDetail extends StatelessWidget {
  const TextDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.blue,),
          onPressed:(){
            Navigator.pushNamed(context, "components");
          },

        ),

        title: Center(child: Text("Text Detail",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),)),
      ),
      body: Center(
        child: SizedBox(width: 450,height: 500,
        child: RichText(text: TextSpan(
          children: [
            TextSpan(
              text: "The ",
              style: TextStyle(color: Colors.black, fontSize: 60),
            ),
            TextSpan(
              text: "quick ",
              style: TextStyle(color: Colors.black, fontSize: 60, decoration: TextDecoration.lineThrough),
            ),
            TextSpan(
              text: "Brown ",
              style: TextStyle(color: Colors.brown, fontSize: 60, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "fox j u m p s ",
              style: TextStyle(color: Colors.black, fontSize: 60),
            ),
            TextSpan(
              text: "over ",
              style: TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
            ),
            TextSpan(
              text: "the ",
              style: TextStyle(color: Colors.black, fontSize: 60,decoration: TextDecoration.underline),
            ),
            TextSpan(
              text: "lazy ",
              style: TextStyle(color: Colors.black, fontSize: 50, fontStyle: FontStyle.italic),
            ),
            TextSpan(
              text: "dog.",
              style: TextStyle(color: Colors.black, fontSize: 60),
            ),
          ]
        )),),
      ),
    );
  }
}
