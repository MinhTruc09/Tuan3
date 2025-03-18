import 'package:flutter/material.dart';
class Components extends StatelessWidget {
  const Components({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.blue,),
          onPressed:(){
            Navigator.pushNamed(context, "home_page");
          },

          ),

        title: Center(child: Text("UI Components List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),)),
      ),
      body: Padding(padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            sectionTile("Display"),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "text_detail");
              },
              child:componentCard("Text", "Display text"),
            ),
            componentCard("Image", "Display a image"),

            sectionTile("Input"),
            componentCard("TextField", "input field for text"),
            componentCard("PasswordField", "Input field for passwords"),

            sectionTile("Layout"),
            componentCard("Column", "Arranges elements vertically"),
            componentCard("Row", "Arranges elements horizontally"),


          ],
        ),
      ),

    );
  }
  Widget sectionTile(String title){
    return Padding(padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(title, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
    );
  }
  Widget componentCard(String title,String subtile){
    return Card(
      color: Colors.blue[100],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(title: Text(title,style: TextStyle(fontWeight: FontWeight.bold),
      ),
        subtitle: Text(subtile),
      ),
    );
  }
}
