import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../app/app_colors.dart';

void showCustomToast(String message, {Color? color, Color? textColor, bool isError = false}) => Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: isError ? AppColors.notCompleted : (color ?? AppColors.black),
      textColor: textColor ?? AppColors.white,
      fontSize: 16,
    );

class ToastNoContext extends ConsumerWidget {
  const ToastNoContext({super.key});

  void showLongToast() {
    Fluttertoast.showToast(
      msg: "This is Long Toast",
      toastLength: Toast.LENGTH_LONG,
      fontSize: 18.0,
    );
  }

  void showWebColoredToast() {
    Fluttertoast.showToast(
      msg: "This is Colored Toast with android duration of 5 Sec",
      toastLength: Toast.LENGTH_SHORT,
      webBgColor: "#e74c3c",
      textColor: Colors.black,
      timeInSecForIosWeb: 5,
    );
  }

  void showColoredToast() {
    Fluttertoast.showToast(
        msg: "This is Colored Toast with android duration of 5 Sec",
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }

  void showShortToast() {
    Fluttertoast.showToast(msg: "This is Short Toast", toastLength: Toast.LENGTH_SHORT, timeInSecForIosWeb: 1);
  }

  void showTopShortToast() {
    Fluttertoast.showToast(
        msg: "This is Top Short Toast", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.TOP, timeInSecForIosWeb: 1);
  }

  void showCenterShortToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1);
  }

  void cancelToast() {
    Fluttertoast.cancel();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Toast'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: showLongToast, child: const Text('Show Long Toast')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: showShortToast, child: const Text('Show Short Toast')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: showCenterShortToast, child: const Text('Show Center Short Toast')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: showTopShortToast, child: const Text('Show Top Short Toast')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: showColoredToast, child: const Text('Show Colored Toast')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: showWebColoredToast, child: const Text('Show  Web Colored Toast')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: cancelToast,
                  child: const Text('Cancel Toasts'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
