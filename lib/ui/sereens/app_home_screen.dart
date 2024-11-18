import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class AppHomeScreen extends StatefulWidget {
  const AppHomeScreen({super.key});

  @override
  State<AppHomeScreen> createState() => _AppHomeScreenState();
}

class _AppHomeScreenState extends State<AppHomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabFoodController;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabFoodController = TabController(length: 2, vsync: this); // Use 'this' for vsync
  }

  @override
  void dispose() {
    _tabFoodController.dispose(); // Dispose the controller when done
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
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Colors.black),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 201, 198, 198),
              ),
              onSubmitted: (value) {
                // Action to perform when the user submits the search query
                _performSearch(value);
              },
            ),
            TabBar(
              controller: _tabFoodController,
              tabs: const [
                Tab(
                  child: Text(
                    'Burger',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Pizza',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            TabBarView(
              controller: _tabFoodController,
              children: const [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [

                      ],
                    ),),
                )
              ])
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
