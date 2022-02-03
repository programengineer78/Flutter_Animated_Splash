import 'package:flutter/material.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';

class TextSplash extends StatelessWidget {
  const TextSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimatedSplash(
          child: Text("Your Splash"),
          type: Transition.fade,
          curve: Curves.fastLinearToSlowEase,
          background: Colors.white,
          navigator: const Home(),
          durationInSeconds: 3),
    );
  }
}

class IconSplash extends StatelessWidget {
  const IconSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: AnimatedSplash(
           type: Transition.rightToLeft,
            child: Icon(
              Icons.audiotrack,
              color: Colors.green,
              size: 30.0,
            ),
            curve: Curves.fastLinearToSlowEase,
            background: Colors.white,
            navigator: const Home(),
            durationInSeconds: 3));
  }
}

class ImageSplash extends StatelessWidget {
  const ImageSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplash(
       type: Transition.rightToLeftWithFade,
        child: Image(
            image: const NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            curve: Curves.fastLinearToSlowEase,
            background: Colors.white,
            navigator: const Home(),
            durationInSeconds: 3));
  }
}

class ImageSplash extends StatelessWidget {
  const ImageSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplash(
        type: Transition.rightToLeftWithFade,
           type: Transition.size,
        child: const Text("Custom Splash"),
            curve: Curves.fastLinearToSlowEase,
            background: Colors.white,
            navigator: const Home(),
            durationInSeconds: 3));
  }
}

class ImageSplash extends StatelessWidget {
  const ImageSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplash(
        type: Transition.scale,
        child: const Text("Custom Splash"),
            curve: Curves.linear,
            background: Colors.white,
            navigator: const Home(),
            durationInSeconds: 3),
  }
}


class ImageSplash extends StatelessWidget {
  const ImageSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplash(
        type: Transition.slide,
           type: Transition.size,
        child: const Text("Custom Splash"),
            curve: Curves.fastLinearToSlowEase,
            background: Colors.white,
            navigator: const Home(),
            durationInSeconds: 3));
  }
}