[![Made with Flutter](https://img.shields.io/badge/Made%20with-Flutter-blue?style=for-the-badge&logo=flutter)](https://flutter.dev/)
[![Flutter Version - @latest](https://img.shields.io/badge/Flutter%20Version-@latest-blue?style=for-the-badge&logo=version)]()
[![Made with Dart](https://img.shields.io/badge/Made%20with-Dart-blue?style=for-the-badge&logo=dart)](https://dart.dev/)
[![Dart Version - @latest](https://img.shields.io/badge/Dart%20Version-@latest-blue?style=for-the-badge&logo=version)]()
[![Made with Dart](https://img.shields.io/badge/Material%20-Design-blue?style=for-the-badge&logo=Materialdesign)](https://material.io/)

## Getting started 🚀

A Animated splash screen API for flutter which can programatically hide and show the splash screen with Transitions.

[![Version badge](https://img.shields.io/badge/Version-0.0.1-blue.svg)]()
[![Version badge](https://img.shields.io/badge/Stable-Release-blue.svg)]()
[![Version badge](https://img.shields.io/badge/Easy-to%20use-blue.svg)]()
[![Version badge](https://img.shields.io/badge/MIT-%20Licensed-blue.svg)]()

## Platform support

| [<img src="https://img.icons8.com/fluency/48/000000/android-os.png"  width="24px" height="24px" />]() | [<img src="https://img.icons8.com/fluency/48/000000/mac-os.png"  width="24px" height="24px" />]() | [<img src="https://img.icons8.com/fluency/48/000000/windows-10.png"  width="24px" height="24px" />]() | [<img src="https://img.icons8.com/color/48/000000/mac-logo.png"  width="24px" height="24px" />]() | [<img src="https://img.icons8.com/color/48/000000/linux--v1.png"  width="24px" height="24px" />]() | [<img src="https://img.icons8.com/color/48/000000/chrome--v1.png"  width="24px" height="24px" />]() | [<img src="https://img.icons8.com/fluency/48/000000/web.png"  width="24px" height="24px" />]() |
| ----------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| Android                                                                                               | IOS                                                                                               | Windows                                                                                               | Mac                                                                                               | Linux                                                                                              | Chrome OS                                                                                           | Web                                                                                            |

# OverView

Splash screens (also known as launch screens) provide a simple initial experience while your app loads. They set the stage for your application, while allowing time for the app engine to load and your app to initialize.Below guide teaches you how to use splash screens appropriately on Android , IOS , Windows , Mac etc ..

# Features ⛏

- New Transition Animation

- New Curve Animation

- Multi Platform Support

- Easy to Use

# Installation

### 1. Depend on it

Add this to your package's pubspec.yaml file:

```dart
dependencies:
   flutter_animated_splash: ^0.0.9
```

### 2. Install it

You can install packages from the command line:

with Flutter:

```bash
$ flutter pub add flutter_animated_splash
```

# Usage 🎨

### Import

Now in your Dart code, you can use:

```
import 'package:flutter_animated_splash/flutter_animated_splash.dart';
```

Include short and useful examples for package users.

### Example_1

Splash Screen with Text Widget

```dart

AnimatedSplash(
    type: Transition.fade,
    child:Text("Your Splash"),
    curve:Curves.fastLinearToSlowEase,
    background:Colors.white,
    navigator:const Home(),
    durationInSeconds:3
)

```

### Example_2

Splash Screen with Icon Widget

```dart

AnimatedSplash(
    type: Transition.size,
    child:Icon(
      Icons.audiotrack,
      color: Colors.green,
      size: 30.0,
    ),
    curve:Curves.fastLinearToSlowEase,
    background:Colors.white,
    navigator:const Home(),
    durationInSeconds:3
)
```

### Example_3

Splash Screen with Image Widget

```dart

AnimatedSplash(
    type: Transition.slide,
    child:Image(
    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    curve:Curves.fastLinearToSlowEase,
    background:Colors.white,
    navigator:const Home(),
    durationInSeconds:3
)
```

# ScreenShots

<img src="https://github.com/programengineer78/Assets/blob/main/fade.gif?raw=true" width="200" height="450"> <img src="https://github.com/programengineer78/Assets/blob/main/right-to-left.gif?raw=true" width="200" height="450">

<img src="https://github.com/programengineer78/Assets/blob/main/size.gif?raw=true" width="200" height="450"> <img src="https://github.com/programengineer78/Assets/blob/main/slide.gif?raw=true" width="200" height="450">

# Page Transition

In general, a transition is nothing but moving an object from one place to another. In flutter, it is also the same but in terms of widgets like container, button, and also pages since everything in flutter is itself a widget.

We will be using a certain transition technique to animate our transition between two pages or widgets.

# Page Transition Animation types

| Animated Transitions | Usage                                 |
| -------------------- | ------------------------------------- |
| fade                 | type : Transition.fade                |
| rightToLeft          | type : Transition.rightToLeft         |
| leftToRight          | type : Transition.leftToRight         |
| topToBottom          | type : Transition.topToBottom         |
| bottomToTop          | type : Transition.bottomToTop         |
| scale                | type : Transition.scale               |
| size                 | type : Transition.size                |
| leftToRightWithFade  | type : Transition.leftToRightWithFade |
| elasticOut           | type : Transition.elasticOut          |
| fastOutSlowIn        | type : Transition.fastOutSlowIn       |
| slide                | type: Transition.slide                |

# Page Curve Animation

### 1. bounceIn.

curve : Curves.bounceIn

```dart

AnimatedSplash(
    type: Transition.slide,
    child:Image(
    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    curve:Curves.bounceIn,
    background:Colors.white,
    navigator:const Home(),
    durationInSeconds:3
)
```

### 2. decelerate.

curve : Curves.decelerate

```dart

AnimatedSplash(
    type: Transition.rotate,
    child:Image(
    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    curve:Curves.decelerate,
    background:Colors.white,
    navigator:const Home(),
    durationInSeconds:3
)
```

### 3. easeOutCirc.

curve : Curves.easeOutCirc

```dart

AnimatedSplash(
    type: Transition.size,
    child:Image(
    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    curve:Curves.easeOutCirc,
    background:Colors.white,
    navigator:const Home(),
    durationInSeconds:3
)
```

### 4. slowMiddle.

curve : Curves.slowMiddle

```dart

AnimatedSplash(
    type: Transition.rightToLeftWithFade,
    child:Image(
    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    curve:Curves.slowMiddle,
    background:Colors.white,
    navigator:const Home(),
    durationInSeconds:3
)
```

### 4. elasticInOut.

curve : Curves.elasticInOut

```dart

AnimatedSplash(
    child:Image(
    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    curve:Curves.elasticInOut,
    background:Colors.white,
    navigator:const Home(),
    durationInSeconds:3
)
```

### 5. linearToEaseOut.

curve : Curves.linearToEaseOut

```dart

AnimatedSplash(
   type: Transition.rightToLeft,
    child:Image(
    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
    curve:Curves.linearToEaseOut,
    background:Colors.white,
    navigator:const Home(),
    durationInSeconds:3
)
```

# Types of Animated Curves

| Animated Curves          | Usage                                   |
| ------------------------ | --------------------------------------- |
| bounceIn                 | curve : Curves.bounceIn                 |
| bounceInOut              | curve : Curves.bounceInOut              |
| bounceOut                | curve : Curves.bounceOut                |
| decelerate               | curve : Curves.decelerate               |
| ease                     | curve : Curves.ease                     |
| easeIn                   | curve : Curves.easeIn                   |
| easeInBack               | curve : Curves.easeInBack               |
| easeInOutCubicEmphasized | curve : Curves.easeInOutCubicEmphasized |
| elasticOut               | curve : Curves.elasticOut               |
| fastOutSlowIn            | curve : Curves.fastOutSlowIn            |
| easeOutBack              | curve : Curves.easeOutBack              |
| easeInOutSine            | curve : Curves.easeInOutSine            |
| easeInQuart              | curve : Curves.easeInQuart              |
| easeInCubic              | curve : Curves.easeInCubic              |
| easeInOutQuad            | curve : Curves.easeInOutQuad            |
