import 'package:flutter/material.dart';

import '../widgets/animated_container_widget.dart';
import '../widgets/gradient_background.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              const GradientBackground(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AnimatedContainerWidget(
                      number: '1',
                      image: 'assets/images/image_1.jpg',
                      title: 'Um lindo lugar para visitar',
                      description: 'O lugar mais lindo da terra, conheca',
                    ),
                    AnimatedContainerWidget(
                      number: '2',
                      image: 'assets/images/image_2.jpg',
                      title: 'Um lindo lugar para visitar',
                      description: 'O lugar mais lindo da terra, conheca',
                    ),
                    AnimatedContainerWidget(
                      number: '3',
                      image: 'assets/images/image_3.jpg',
                      title: 'Um lindo lugar para visitar',
                      description: 'O lugar mais lindo da terra, conheca',
                    ),
                    AnimatedContainerWidget(
                      number: '4',
                      image: 'assets/images/image_4.jpg',
                      title: 'Um lindo lugar para visitar',
                      description: 'O lugar mais lindo da terra, conheca',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
