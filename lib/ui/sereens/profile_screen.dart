import 'package:fast_foods_app/ui/utils/assets_path.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin {
  late TabController _tabProfileController;

  @override
  void initState() {
    super.initState();
    // Initialize the TabController with 3 tabs
    _tabProfileController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    _tabProfileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: const Center(
          child: Text(
            'My Profile',
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
      body: Padding(
        
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: const AssetImage(
                          AssetsPath.avater_image,
                        ),
                        backgroundColor: Colors.grey.shade200,
                      ),
                      const SizedBox(width: 22),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fahim Montasir Opi',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'montasiropi@gmail.com',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'id:1234567',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TabBar(
                    controller: _tabProfileController,
                    labelColor: Colors.black,
                    indicatorColor: Colors.red,
                    unselectedLabelColor: Colors.grey,
                    
                    tabs: const [
                      Tab(text: 'Account'),
                      Tab(text: 'Payment '),
                      Tab(text: 'History'),
                    ],
                  ),
            
                ],
              ),
            ),
            Expanded(
                  child: TabBarView(
                    controller: _tabProfileController,
                    children: const [
                      Center(child: Text('Account content')),
                      Center(child: Text('Payment Method content')),
                      Center(child: Text('History content')),
                    ],
                  ),
                ),
          ],
        ),
      ),
      
    );
  }
}
