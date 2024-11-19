import 'package:fast_foods_app/ui/utils/assets_path.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.orangeAccent, Colors.yellow],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              padding: const EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset(
                AssetsPath.burger_image,
                fit: BoxFit.cover,
                height: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove),
                    color: Colors.red,
                  ),
                  const Text(
                    '2',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.add),color: Colors.red,),
                ],
              ),
            ),
            const Text(
              '\$24.00',
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Beef Burger',
                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                  ),
                   SizedBox(height: 4,),
                  Text(
                    'Fresh beef pizza salad with lettuce, cherry tomatoes, herbs, and olive oil. Lemon dressing beef salad. Read More',
                  style: TextStyle(fontSize: 14,color: Colors.grey),
                  ),
                   SizedBox(height: 16),
                  // Ratings and Details
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.amber,),
                          SizedBox(width: 4,),
                          Text('4.5'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.fire_extinguisher,color: Colors.red,),
                          SizedBox(width: 4,),
                          Text('5-10 min'),
                        ],
                      ),
                    ],
                  ),
                   // Ingredients (icons or images)
                   SizedBox(height: 16,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Icon(Icons.local_pizza),
                      ),
                       CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Icon(Icons.grass),
                      ),
                       CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Icon(Icons.local_drink),
                      ),
                    ],
                   )
                ],
              ) ,
              
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                 child:const Text('Add to card', style: TextStyle(fontSize: 16),) ),)
              
          ],
        ),
      ),
    );
  }
}
