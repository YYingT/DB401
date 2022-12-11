import 'package:flutter/material.dart';

import '../models/country.dart';
import 'search.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries'),
      ),
      body: Center(
        child: Padding(
          // ข้อ 1.
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Select continent', 
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                // ข้อ 2.
                onPressed: () => { 
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondRoute()))
                 },
                child: const Text('Europe')
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                // ข้อ 3.
                onPressed: () { 
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondRoute()));
                 },
                child: const Text('Asia')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}
class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}