// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:food_sevice_ui/Burger_details/otder_count.dart';
import 'package:food_sevice_ui/Cart_Page/cart_home.dart';
import 'package:food_sevice_ui/adress_form/a_home.dart';

class BurgerPage extends StatelessWidget {
  final String img;
  final String title;
  final String price;

  const BurgerPage(
      {Key? key, required this.img, required this.title, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartHome()));
            },
            icon: const Icon(Icons.shopping_cart),
          )
        ],
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: 500,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(img),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        price,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              height: 70,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            fontSize: 22,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Fully chicken flavour",
                        style: TextStyle(
                          color: Colors.black12,
                          fontSize: 15,
                        ))
                  ],
                ),
              ),
            ),
          ),
          const OrderCount(),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Discription",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. text ever since the 1500s,  and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          const Spacer(),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AdressHome()));
            },
            child: Center(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
