import 'package:fast_foods_app/ui/sereens/product_detlect.dart';
import 'package:fast_foods_app/ui/sereens/product_model.dart';
import 'package:flutter/material.dart';
import 'package:fast_foods_app/ui/utils/assets_path.dart';

class PizzaCard extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Cheese Pizza',
      imagePath: AssetsPath.pizza_image, // Replace with actual image path
      price: 10.00,
      description: 'Delicious cheese pizza with fresh toppings.',
      rating: 4.8,
      preparationTime: '15 min',
    ),
     Product(
      name: 'Egg Pizza',
      imagePath: AssetsPath.pizza_image, // Replace with actual image path
      price: 10.00,
      description: 'Delicious cheese pizza with fresh toppings.',
      rating: 4.8,
      preparationTime: '15 min',
    ),
    Product(
      name: 'Margherita Pizza',
      imagePath: AssetsPath.pizza_image, // Replace with actual image path
      price: 8.00,
      description: 'Delicious cheese pizza with fresh toppings.',
      rating: 4.2,
      preparationTime: '15 min',
    ),
    Product(
      name: 'Pepperoni Pizza',
      imagePath: AssetsPath.pizza_image, // Replace with actual image path
      price: 15.00,
      description: 'Pizza de Pepperoni. We leave traditional Italian preparations for a moment to talk about this pizza of American origin.',
      rating: 4.2,
      preparationTime: '15 min',
    ),
    // Add more Product instances as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.7,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => productDetlesScreen(product: product),
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          product.imagePath,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.preparationTime,
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber, size: 14),
                            Text(product.rating.toString(),
                                style: const TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: EdgeInsets.zero,
                            backgroundColor: Colors.yellow,
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
