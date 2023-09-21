import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WindowBorder(
        color: Colors.black,
        width: 1,
        child: Row(
          children: [
            leftWidget(context),
            rightWidget(),
          ],
        ),
      ),
    );
  }
}

Widget leftWidget(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.3,
    child: Container(
      child: Column(
        children: [
          WindowTitleBarBox(
            child: MoveWindow(),
          ),
        ],
      ),
    ),
  );
}

Widget rightWidget() {
  return Expanded(
    child: Container(
      color: Colors.amber,
      child: Column(
        children: [
          WindowTitleBarBox(
            child: WindowTitleBarBox(
              child: MoveWindow(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    //
                    WindowButtons(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class WindowButtons extends StatelessWidget {
  const WindowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(
          colors: WindowButtonColors(),
        ),
        MaximizeWindowButton(
          colors: WindowButtonColors(),
        ),
        CloseWindowButton(),
      ],
    );
  }
}
