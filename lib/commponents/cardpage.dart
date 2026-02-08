import 'package:e_commorce/modeles/card.dart';
import 'package:e_commorce/modeles/carditem.dart';
import 'package:e_commorce/modeles/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cardpage extends StatelessWidget {
  const Cardpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<card>(
      builder: (context, value, child) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
   crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My card ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: value.getusercard().length,
                itemBuilder: (context, index) {
                  //get the show item
                  Shoe individualshow = value.getusercard()[index];
                  //return the card item
                  return Carditem(shoe: individualshow,);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
