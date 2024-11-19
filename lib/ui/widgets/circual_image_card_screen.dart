import 'package:fast_foods_app/ui/sereens/product_detlect.dart';
import 'package:flutter/material.dart';

class circularImageInproductDetlesScreen extends StatelessWidget {
  const circularImageInproductDetlesScreen({
    super.key,
    required this.widget,
  });

  final productDetlesScreen widget;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 220,
          height: 220,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 2,
              )
            ]
          ),
            child: ClipOval(
              child: Image.asset(widget.product.imagePath,
                  fit: BoxFit.cover),
            )));
  }
}
