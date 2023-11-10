import 'package:flutter/material.dart';
import 'package:storeapp/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Max',
      price: '12795',
      imagePath: 'assets/images/shoe 3.png',
      description:
          'Ready to take your style up a notch? We have re-imagined an icon of Air to bring you the perfect mix of throwback details and futuristic design.',
    ),
    Shoe(
      name: 'Nike Dunk Low SE',
      price: '9695',
      imagePath: 'assets/images/shoe 4.png',
      description:
          'From the hardwood to the streets to the World Wide Web. These classic sneakers get an Internet-inspired refresh with holographic accents.',
    ),
    Shoe(
      name: 'Nike Waffle Debut',
      price: '5695',
      imagePath: 'assets/images/shoe 5.png',
      description:
          'Retro gets modernised with these sleek sneakers inspired by the Nike Daybreak. Era-echoing suede and nylon are paired in complementary colours.',
    ),
    Shoe(
      name: 'Cosmic Unity 3',
      price: '12795',
      imagePath: 'assets/images/shoe 6.png',
      description:
          'Better for your game, designed with sustainability in mind—two things you care about—the Cosmic Unity 3 has a secure, lightweight design for a low-to-the-ground feel.',
    ),
  ];

  //list of items in user cart

  List<Shoe> userCart = [];

  //get list of shoes for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart

  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
