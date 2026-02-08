import 'package:e_commorce/pages/home_page.dart' show HomePage;
import 'package:flutter/material.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              //logo
              Padding(
                padding: EdgeInsets.all(12),
                child: Image.asset('lib/images/nikelogo.png', height: 280),
              ),
              const SizedBox(height: 48),
              //title
              Text(
                "JUST DO IT ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12,),

              //sub title
              Text("This are the custum nike brand shoes for sale limited edition",
              style: TextStyle(color: Colors.grey[700]),
               textAlign: TextAlign.center,
              ),
              const SizedBox(height: 35,),
              //shop button
              GestureDetector(
                child: Container(
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12)),
                  child: Padding(padding: EdgeInsets.all(12),
                  child: ListTile(title: Text('Shop now ',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  
                  ),),
                  ),
                
                  
                
                ),
                onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context)=>
               HomePage(),
                ),
              )
              ),
            ],

          ),
        ),
      ),
    );
  }
}
