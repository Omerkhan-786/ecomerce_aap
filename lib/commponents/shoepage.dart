import 'package:e_commorce/commponents/shaotile.dart';
import 'package:e_commorce/modeles/shoe.dart';
import 'package:flutter/material.dart';

class Shoepage extends StatelessWidget {
  const Shoepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(12),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text(
                "  Search.. ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Icon(Icons.search),
            ],
          ),
        ),
        const SizedBox(height: 6),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Every item is the custom made for your foot look good ",
            style: TextStyle(color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "HOT PICKS  🥵",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text("see all", style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, Index) {
              Shoe shoe = Shoe(
                name: 'Air jordon',
                price: '239',
                discription: 'Cool one',
                imagepath: 'lib/images/airone.jpeg',
              );
              return Shaotile(shoe: shoe);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
