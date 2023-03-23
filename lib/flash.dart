import 'package:flutter/material.dart';

class FlashMessageScreen extends StatelessWidget {
  const FlashMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "این کادری آزمایشی برای اعلام پیام به شماست",
                  style: TextStyle(
                    color: Color(0xff30CCFF),
                    fontSize: 20,
                    fontFamily: 'DN',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
          child: const Text('amir ghashange'),
        ),
      ),
    );
  }
}
