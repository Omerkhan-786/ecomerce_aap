import 'package:e_commorce/modeles/shoe.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Shaotile extends StatelessWidget {
  Shoe shoe;
  Shaotile({super.key, required this.shoe, required this.onTap});
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagepath),
          ),
          SizedBox(height: 20),

          //discription
          Text("THIS ARE THE PRIMIUM COLLECTION"),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      shoe.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$' + shoe.price,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),

                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),

          //price +add button
        ],
      ),
    );
  }
}
