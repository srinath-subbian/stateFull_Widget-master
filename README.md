# flutter_app

A new Flutter application.

## Class to extend stateFull Widget

class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRun();
  }
}

## setState is used to rember the previous state of counter even on reloading the app again
## it helps to display the updated value of the counter 

setState(() {
    _Counter = _Counter+100;
  });

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).
