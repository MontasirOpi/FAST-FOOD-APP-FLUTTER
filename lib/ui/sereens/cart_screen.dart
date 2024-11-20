import 'package:fast_foods_app/ui/widgets/price_widget_in_card.dart';
import 'package:fast_foods_app/ui/widgets/promo_apply_cart.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade200,
        title: const Center(
          child: Text(
            'Cart',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight:  Radius.circular(60)),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Card(
                  elevation: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(),
                      const Column(
                        children: [Text('Beef pizza'), Text('\$12.00')],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.remove)),
                      const Text('1'),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                    ],
                  ),
                ),
                Card(
                  elevation: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(),
                      const Column(
                        children: [Text('Beef pizza'), Text('\$12.00')],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.remove)),
                      const Text('1'),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                    ],
                  ),
                ),
                Card(
                  elevation: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(),
                      const Column(
                        children: [Text('Beef pizza'), Text('\$12.00')],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.remove)),
                      const Text('1'),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                    ],
                  ),
                ),
                const promoApplyWidget(),
                const SizedBox(
                  height: 20,
                ),
                const priceWidgetIncart(),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                    ),
                  ),
                  child: const Text(
                    'CHECKOUT',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
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
