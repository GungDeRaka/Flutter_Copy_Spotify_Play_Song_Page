import 'package:flutter/material.dart';

class ActionTile extends StatelessWidget {
  const ActionTile({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        horizontalTitleGap: 8,
        leading: Icon(icon, size: 24),
        title: Text(
          text,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
