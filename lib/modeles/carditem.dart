import 'package:e_commorce/modeles/card.dart';
import 'package:e_commorce/modeles/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Carditem extends StatefulWidget {
  Carditem({super.key, required this.shoe});
  Shoe shoe;

  @override
  State<Carditem> createState() => _CarditemState();
}

class _CarditemState extends State<Carditem> {
  void removeitemfromcard() {
    Provider.of<card>(context, listen: false).removeitemfromcard(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagepath),
        title: Text(widget.shoe.price),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          onPressed: removeitemfromcard,
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
