import 'package:fast_foods_app/ui/utils/app_colors.dart';
import 'package:fast_foods_app/ui/widgets/burger_card.dart'; // Ensure the import path is correct
import 'package:fast_foods_app/ui/widgets/pizza_card.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class AppHomeScreen extends StatefulWidget {
  const AppHomeScreen({super.key});

  @override
  State<AppHomeScreen> createState() => _AppHomeScreenState();
}

class _AppHomeScreenState extends State<AppHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabFoodController;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabFoodController =
        TabController(length: 2, vsync: this); // Corrected 'vsync' usage
  }

  @override
  void dispose() {
    _tabFoodController.dispose(); // Dispose of the controller when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Dhaka city'),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text.rich(
              TextSpan(
                text: 'Find the',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                      text: ' Best\nFood', style: TextStyle(color: Colors.red)),
                  TextSpan(
                      text: ' Around You',
                      style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _searchController, // Controller to access input value
              decoration: const InputDecoration(
                hintText: 'Search your food',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(9)),
                  borderSide: BorderSide(color: Colors.red),
                ),
              
                fillColor: Color.fromARGB(255, 250, 241, 241),
              ),
              onSubmitted: (value) {
                // Action to perform when the user submits the search query
                _performSearch(value);
              },
            ),
            const SizedBox(height: 20),
            const Text('Find',
            style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.bold),),
            const SizedBox(height: 10),
            TabBar(
              labelColor: AppColors.themeColor,
              indicatorColor: AppColors.themeColor,
              unselectedLabelColor: AppColors.themeColor,          
              controller: _tabFoodController,
              tabs: const [
                Card(
                  child: Tab(
                    child: Row(
                              
                      children: [
                        Icon(Icons.emoji_food_beverage_outlined),
                        SizedBox(width: 10,),
                        Text(
                          'Burger',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Tab(
                    child: Row(
                      children: [
                        Icon(Icons.food_bank_sharp),
                        SizedBox(width: 10,),
                        Text(
                          'Pizza',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabFoodController,
                children:  [
                  BurgerCard(), // Ensure `BurgerCard` is defined correctly in your project
                  PizzaCard() // Placeholder for pizza tab
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _performSearch(String query) {
    // Action to perform when the search query is submitted
    print('Searching for: $query');
    // Add your custom logic for performing the search
  }
}
