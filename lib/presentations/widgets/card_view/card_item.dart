import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class CardItem extends StatefulWidget {
  const CardItem({super.key});

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  double progress = 0.5;

  @override
  Widget build(BuildContext context) {
    return Padding( 
      padding: const EdgeInsets.only(right: 12),
      child: SizedBox(
        width: 260,
        child: ShadCard(
          radius: BorderRadius.circular(20),
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.withValues(alpha: 0.5),
                      width: 0.5,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ShadAvatar(
                            'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4',
                            placeholder: const Text('CN'),
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Learn UX Design",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "3 month left",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.more_horiz, size: 15),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    size: 15,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "01 November 2025",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  const Spacer(),
                  ShadBadge.destructive(
                    child: const Text(
                      'Priority',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Progress",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "${(progress * 100).round()}%",
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 5),

              SizedBox(
                height: 10,
                child: ShadProgress(
                  value: progress,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
