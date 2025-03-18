import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
             Image.asset('assets/images/jet.png',height: 200,width: 200,),
              SizedBox(height: 30),

              // Title
              Text(
                'Jetpack Compose',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              // Description
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Jetpack Compose is a modern UI toolkit for '
                      'building native Android applications using '
                      'a declarative programming approach.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black45),
                ),
              ),

              SizedBox(height: 40,width: 100,),
              Spacer(),              // Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  onPressed: () {
                   Navigator.pushNamed(context, 'components');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                  child: Text(
                    'I\'m ready',
                    style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      );
  }
}
