import 'package:fast_foods_app/ui/sereens/product_detlect.dart';
import 'package:fast_foods_app/ui/sereens/product_model.dart';
import 'package:fast_foods_app/ui/utils/assets_path.dart';
import 'package:flutter/material.dart';

class BurgerCard extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Cheese Burger',
      imagePath: AssetsPath.burger_image, // Replace with actual image path
      price: 10.00,
      description: 'Delicious cheese pizza with fresh toppings.',
      rating: 4.8,
      preparationTime: '15 min',
    ),
    Product(
      name: 'Pizza burger',
      imagePath: AssetsPath.burger_image, // Replace with actual image path
      price: 10.00,
      description: 'An Italian sausage burger topped with pizza toppings like pepperoni, mozzarella, and parmesan cheese',
      rating: 4.8,
      preparationTime: '15 min',
    ),
        Product(
      name: 'Double cheeseburger',
      imagePath: AssetsPath.burger_image, // Replace with actual image path
      price: 10.00,
      description: 'A burger with two beef patties instead of one',
      rating: 4.8,
      preparationTime: '15 min',
    ),
        Product(
      name: 'Veggie Burger',
      imagePath: AssetsPath.burger_image, // Replace with actual image path
      price: 5.00,
      description: 'A plant-based burger made with ingredients like beans, lentils, mushrooms, and vegetables',
      rating: 4.8,
      preparationTime: '15 min',
    ),
    
    // Add more Product instances as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.7, // Adjust for card proportions
        ),
        itemCount: products.length, // Use products.length for itemCount
        itemBuilder: (context, index) {
          final product = products[index]; // Get the product at the current index

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
                          product.imagePath, // Use product's imagePath
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      product.name, // Display the product's name
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
                          product.preparationTime, // Display preparation time
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber, size: 14),
                            Text(
                              product.rating.toString(), // Display rating
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${product.price.toStringAsFixed(2)}', // Display price
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
