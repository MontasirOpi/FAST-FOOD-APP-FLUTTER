import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              // Add cart icon action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Shipping Address Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Shipping to',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16.0),
                  // Home Address
                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: Radio(
                        value: 'Home',
                        groupValue: 'ShippingAddress', // Example value
                        onChanged: (value) {
                          // Handle selection
                        },
                      ),
                      title: const Text('Home'),
                      subtitle:
                          const Text('(875) 876-785\nSadia Villa, Habiganj'),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Handle edit address
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  // Office Address
                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: Radio(
                        value: 'Office',
                        groupValue: 'ShippingAddress', // Example value
                        onChanged: (value) {
                          // Handle selection
                        },
                      ),
                      title: const Text('Office'),
                      subtitle:
                          const Text('(217) 555-0113\n6351 Elgin St, Habiganj'),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Handle edit address
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            // Payment Method Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Payment Method',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16.0),
                  Column(
                    children: [
                      RadioListTile(
                        value: 'Credit Card',
                        groupValue: 'PaymentMethod', // Example value
                        onChanged: (value) {
                          // Handle selection
                        },
                        title: const Row(
                          children: [
                            Icon(Icons.credit_card, color: Colors.orange),
                            SizedBox(width: 8),
                            Text('Credit card'),
                          ],
                        ),
                      ),
                      RadioListTile(
                        value: 'Paypal',
                        groupValue: 'PaymentMethod', // Example value
                        onChanged: (value) {
                          // Handle selection
                        },
                        title: const Row(
                          children: [
                            Icon(Icons.payment, color: Colors.blue),
                            SizedBox(width: 8),
                            Text('Paypal'),
                          ],
                        ),
                      ),
                      RadioListTile(
                        value: 'Google Pay',
                        groupValue: 'PaymentMethod', // Example value
                        onChanged: (value) {
                          // Handle selection
                        },
                        title: const Row(
                          children: [
                            Icon(Icons.g_mobiledata, color: Colors.green),
                            SizedBox(width: 8),
                            Text('Google pay'),
                          ],
                        ),
                      ),
                      RadioListTile(
                        value: 'Apple Pay',
                        groupValue: 'PaymentMethod', // Example value
                        onChanged: (value) {
                          // Handle selection
                        },
                        title: const Row(
                          children: [
                            Icon(Icons.apple, color: Colors.black),
                            SizedBox(width: 8),
                            Text('Apple Pay'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            // Price Summary and Place Order Button
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4.0,
                    offset: Offset(0, -1),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sub total', style: TextStyle(fontSize: 16)),
                      Text('\$70.00', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('\$73.50',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Handle place order
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Text('Place to Order',
                        style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
