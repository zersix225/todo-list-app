import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:todo_list/presentations/widgets/app_bar/app_bottom_bar.dart';
import 'package:todo_list/presentations/widgets/card_view/card_scroll_view.dart';
import 'package:todo_list/presentations/widgets/card_view/card_task.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade200.withValues(alpha: 0.5),
      body: Stack(
        children: [
          Container(
            height: height * 0.2,
            decoration: BoxDecoration(
              color: Colors.yellow[600],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ShadAvatar(
                                  'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4',
                                  placeholder: Text('CN'),
                                  size: Size(50, 50),
                                ),
                                SizedBox(width: 15),
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
                                    SizedBox(height: 1),
                                    Text(
                                      "You have 5 targets",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black45,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.notifications_active,
                                    color: Colors.black,
                                  ),
                                  iconSize: 20,
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 55),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Your Targets",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.navigate_next,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                            iconSize: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: CardScrollView(),
                ),

                const SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Today's Task",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 13),
                      CardTask(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: AppBottomBar(),
    );
  }
}
