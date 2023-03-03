import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://logo.com/logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Text('Mono-Task'),
            SizedBox(
              width: 40.0,
              height: 40.0,
              child: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // code to display the dropdown menu
                },
              ),
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          height: 0.0,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text('Home'),
                SizedBox(height: 20.0),
                Text('Features'),
                SizedBox(height: 20.0),
                Text('Pricing'),
                SizedBox(height: 20.0),
                Text('About'),
                SizedBox(height: 20.0),
                Text('Contact'),
                SizedBox(height: 20.0),
                Text('FAQ'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
