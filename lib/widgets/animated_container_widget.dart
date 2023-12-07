import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatelessWidget {
  final String image;
  final String number;
  final String title;
  final String description;

  AnimatedContainerWidget({
    Key? key,
    required this.image,
    required this.number,
    required this.title,
    required this.description,
  }) : super(key: key);

  final ValueNotifier<bool> isActive = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: GestureDetector(
        onTap: () => isActive.value = !isActive.value,
        child: ValueListenableBuilder(
          valueListenable: isActive,
          builder: (_, value, __) {
            return AnimatedContainer(
              width: double.infinity,
              height: isActive.value ? 220.0 : 60.0,
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeInOut,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  opacity: 0.7,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(30.0),
                ),
                color: Colors.black,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 20.0,
                    spreadRadius: 5.0,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 0, 18, 33),
                        foregroundColor: Colors.white60,
                        child: Text(number),
                      ),
                      const SizedBox(width: 10.0),
                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.easeInOut,
                        opacity: isActive.value ? 1.0 : 0.0,
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title.toUpperCase(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                description,
                                style: const TextStyle(
                                  color: Colors.white60,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
