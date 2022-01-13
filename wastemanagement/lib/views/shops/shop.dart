// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../const.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 50.0, left: 25, right: 25, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shop",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.tune),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_bag),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon: Icon(Icons.search),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: "Search for a product or brand",
                        fillColor: Colors.white70),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 8, bottom: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      Categories(
                          "https://images.pexels.com/photos/5591636/pexels-photo-5591636.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/4108715/pexels-photo-4108715.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/4684372/pexels-photo-4684372.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/3987142/pexels-photo-3987142.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/4239091/pexels-photo-4239091.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/4353608/pexels-photo-4353608.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/4099469/pexels-photo-4099469.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/3951389/pexels-photo-3951389.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 8, bottom: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Best selling products",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      Categories(
                          "https://images.pexels.com/photos/5591636/pexels-photo-5591636.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/4108715/pexels-photo-4108715.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/4684372/pexels-photo-4684372.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/3987142/pexels-photo-3987142.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/4239091/pexels-photo-4239091.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/4353608/pexels-photo-4353608.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/4099469/pexels-photo-4099469.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/3951389/pexels-photo-3951389.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 8, bottom: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Popular brands",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      Categories(
                          "https://images.pexels.com/photos/5591636/pexels-photo-5591636.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/4108715/pexels-photo-4108715.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/4684372/pexels-photo-4684372.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/3987142/pexels-photo-3987142.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/4239091/pexels-photo-4239091.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/4353608/pexels-photo-4353608.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/4099469/pexels-photo-4099469.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      Categories(
                          "https://images.pexels.com/photos/3951389/pexels-photo-3951389.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
