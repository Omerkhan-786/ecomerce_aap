import 'package:e_commorce/modeles/shoe.dart';
import 'package:flutter/material.dart';

class card extends ChangeNotifier {
  //list of shoes
  List<Shoe> shoeshop = [
    Shoe(
      name: 'zoom freak',
      price: '249',
      discription: 'classic choice',
      imagepath: 'lib/images/sneaker2.jpeg',
    ),
    Shoe(
      name: 'Snaeker',
      price: '260',
      discription: 'modern vibe',
      imagepath: 'lib/images/sneaker3.jpeg',
    ),
    Shoe(
      name: 'Air JORDON',
      price: '280',
      discription: 'Asthetic look',
      imagepath: 'lib/images/airjordan.jpeg',
    ),
    Shoe(
      name: 'kyril ',
      price: '324',
      discription: 'Expensive one for Expensive people',
      imagepath: 'lib/images/sneaker1.jpeg',
    ),
  ];
  //list of user card
  List<Shoe> usercard = [];

  //get list of shoes for sale
  List<Shoe> getshoelist() {
    return shoeshop;
  }

  //get card
  List<Shoe> getusercard() {
    return usercard;
  }

  //add item to card
  void additemtocard(Shoe shoe) {
    usercard.add(shoe);
    notifyListeners();
  }

  //remove item in card
  void removeitemfromcard(Shoe shoe) {
    usercard.remove(shoe);
    notifyListeners();
  }
}
