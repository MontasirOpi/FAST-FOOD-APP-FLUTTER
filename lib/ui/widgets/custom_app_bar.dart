import 'package:fast_foods_app/ui/sereens/profile_screen.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  // Constructor to accept title and allow custom configuration
  CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          const Icon(Icons.location_on), // Icon in front of the title
          const SizedBox(
              width: 8), // Optional: Add some space between the icon and title
          Text(title), // Title text
        ],
      ),
      actions: [
        PopupMenuButton<int>(
          icon: const Icon(
              Icons.more_vert_sharp), // Optional: Custom icon for the menu
          onSelected: (value) {
            switch (value) {
              case 1:
                //action
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
                print('Settings selected');
                break;
              case 2:
                print('Logout selected');
                break;
            }
          },
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 1,
              child: Text('Profile'),
            ),
            const PopupMenuItem(
              value: 2,
              child: Text('Card'),
            ),
          ],
        ),
      ],
    );
  }

  // Define the preferred size for the AppBar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
