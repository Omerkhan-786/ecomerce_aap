import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Mynavigator extends StatelessWidget {
  final Function(int)? onTabChange;
 Mynavigator({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Container(
        child: GNav(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          color: Colors.grey[800],
          activeColor: Colors.blue,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.white,
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(icon: Icons.home, text: 'Shop'),
            GButton(icon: Icons.card_giftcard, text: 'Card'),
          ],
        ),
      ),
    );
  }
}
