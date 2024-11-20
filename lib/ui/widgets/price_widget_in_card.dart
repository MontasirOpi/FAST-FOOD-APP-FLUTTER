import 'package:flutter/material.dart';

class priceWidgetIncart extends StatelessWidget {
  const priceWidgetIncart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Subtotal Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '\$70.00',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 8), // Add spacing between rows
          // Delivery Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '\$3.50',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 8), // Add spacing between rows
          // Total Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '\$73.50',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
