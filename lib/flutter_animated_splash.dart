library flutter_animated_splash;

import 'dart:async';
import 'dart:core';

import 'package:flutter/material.dart';

enum Transition {
  fade,
  rightToLeft,
  leftToRight,
  topToBottom,
  bottomToTop,
  scale,
  rotate,
  size,
  rightToLeftWithFade,
  leftToRightWithFade,
  slide
}

// ignore: must_be_immutable
class AnimatedSplash extends StatefulWidget {
  final Color backgroundColor;
  final Transition type;
  dynamic animation;
  final Widget child;
  dynamic durationInSeconds;
  final Widget navigator;
  final Curve curve;

  AnimatedSplash({
    Key? key,
    required this.child,
    required this.type,
    this.curve = Curves.ease,
    this.animation,
    required this.navigator,
    this.durationInSeconds,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  _AnimatedSplashState createState() => _AnimatedSplashState();
}

class _AnimatedSplashState extends State<AnimatedSplash> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: widget.durationInSeconds),
        () => Navigator.push(
              context,
              PageRouteBuilder(
                  pageBuilder: (context, animation, animationTime) {
                    return widget.navigator;
                  },
                  transitionDuration: const Duration(milliseconds: 2000),
                  // ignore: missing_return
                  transitionsBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation,
                      Widget child) {
                    switch (widget.type) {
                      case Transition.fade:
                        return FadeTransition(opacity: animation, child: child);

                      //break;

                      case Transition.rightToLeft:
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(1, 0),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        );

                      //break;

                      case Transition.leftToRight:
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(-1, 0),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        );

                      //break;
                      case Transition.topToBottom:
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, -1),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        );
                        // ignore: dead_code
                        break;

                      case Transition.bottomToTop:
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, 1),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        );

                      //break;

                      case Transition.scale:
                        return ScaleTransition(
                          alignment: Alignment.center,
                          scale: CurvedAnimation(
                            parent: animation,
                            curve: Interval(
                              0.00,
                              0.50,
                              curve: widget.curve,
                            ),
                          ),
                          child: child,
                        );

                      //break;

                      case Transition.rotate:
                        return RotationTransition(
                          alignment: Alignment.center,
                          turns: animation,
                          child: ScaleTransition(
                            alignment: Alignment.center,
                            scale: animation,
                            child: FadeTransition(
                              opacity: animation,
                              child: child,
                            ),
                          ),
                        );

                      //break;

                      case Transition.size:
                        return Align(
                          alignment: Alignment.center,
                          child: SizeTransition(
                            sizeFactor: CurvedAnimation(
                              parent: animation,
                              curve: widget.curve,
                            ),
                            child: child,
                          ),
                        );

                      //break;

                      case Transition.rightToLeftWithFade:
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(1.0, 0.0),
                            end: Offset.zero,
                          ).animate(animation),
                          child: FadeTransition(
                            opacity: animation,
                            child: SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(1, 0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            ),
                          ),
                        );

                      //break;

                      case Transition.leftToRightWithFade:
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(-1.0, 0.0),
                            end: Offset.zero,
                          ).animate(
                            CurvedAnimation(
                              parent: animation,
                              curve: widget.curve,
                            ),
                          ),
                          child: FadeTransition(
                            opacity: animation,
                            child: SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(-1, 0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            ),
                          ),
                        );

                      case Transition.slide:
                        return Align(
                          alignment: Alignment.center,
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(-1, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          ),
                        );

                      //break;
                    }
                  }),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      body: Center(
        child: Stack(
          children: [
            widget.child,
          ],
        ),
      ),
    );
  }
}
