import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:todo_list/presentations/widgets/app_bar/app_bottom_bar.dart';
import 'package:todo_list/presentations/widgets/card_view/card_scroll_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade200.withValues(alpha: 0.5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hi, Zara",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "You have 5 targets",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ],
                  ),
                  ShadAvatar(
                    'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4',
                    placeholder: Text('CN'),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Targets",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  Icon(Icons.navigate_next, color: Colors.grey, size: 20),
                ],
              ),
              SizedBox(height: 15),
              CardScrollView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomBar(),
    );
  }
}
