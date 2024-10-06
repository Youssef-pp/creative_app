import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.home_outlined,
            color: Color(0xffde40fa),
            size: 120.0,
          ),
          const Text(
            'Welcome Home!',
            style: TextStyle(
              color: Color(0xffde40fa),
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffde40fa),
              elevation: 0.0,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.explore,
                  color: Colors.white,
                ),
                SizedBox(width: 4.0),
                Text(
                  'Explore',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
