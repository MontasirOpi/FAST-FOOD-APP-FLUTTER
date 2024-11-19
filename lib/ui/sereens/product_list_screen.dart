import 'package:flutter/material.dart';
import 'product_detlect.dart';
import 'product_model.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Pizza',
      imagePath: 'assets/pizza_image.png', // Replace with actual image path
      price: 15.00,
      description: 'Delicious pizza with cheese, olives, and more.',
      rating: 4.7,
      preparationTime: '10-15 min',
    ),
    Product(
      name: 'Beef Burger',
      imagePath: 'assets/burger_image.png', // Replace with actual image path
      price: 12.00,
      description: 'Juicy beef burger with fresh vegetables and sauce.',
      rating: 4.5,
      preparationTime: '5-10 min',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => productDetlesScreen(product: products[index]),
                ),
              );
            },
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      products[index].imagePath,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Text(products[index].name),
                  Text('\$${products[index].price.toStringAsFixed(2)}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
