import 'package:bookly/features/home/presentation/views/widgets/homeviewbody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Homeviewbody(),
    );
  }
}
