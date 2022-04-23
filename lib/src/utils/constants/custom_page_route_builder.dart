import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPageRouteBuilder<T> extends PageRoute<T> {
  final RoutePageBuilder pageBuilder;
  final PageTransitionsBuilder matchingBuilder =
      const CupertinoPageTransitionsBuilder(); // Default iOS/macOS (to get the swipe right to go back gesture)
  // final PageTransitionsBuilder matchingBuilder = const FadeUpwardsPageTransitionsBuilder(); // Default Android/Linux/Windows

  CustomPageRouteBuilder({
    required this.pageBuilder,
    this.newTransitionDuration = const Duration(milliseconds: 550),
    this.newReverseTransitionDuration = const Duration(milliseconds: 550),
  });

  final Duration newTransitionDuration;
  final Duration newReverseTransitionDuration;

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return pageBuilder(context, animation, secondaryAnimation);
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration =>
      newTransitionDuration; // Can give custom Duration, unlike in MaterialPageRoute

  @override
  // TODO: implement reverseTransitionDuration
  Duration get reverseTransitionDuration => newReverseTransitionDuration; //

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return matchingBuilder.buildTransitions<T>(
        this, context, animation, secondaryAnimation, child);
  }
}
