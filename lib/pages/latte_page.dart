import 'package:flutter/material.dart';

class LattePage extends StatefulWidget {
  const LattePage({super.key});

  @override
  State<LattePage> createState() => _LattePageState();
}

class _LattePageState extends State<LattePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('lib/images/latte.jpg'),
    );
  }
}
