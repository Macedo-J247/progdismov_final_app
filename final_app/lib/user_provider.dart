import 'package:final_app/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class UserProvider extends InheritedWidget {
  final Widget child;
  List<User> users = [];

  UserProvider(
    {
       required this.child,
     }
    ) : super(child: child);

    static UserProvider? of(BuildContext context) {
      return context.dependOnInheritedWidgetOfExactType<UserProvider>();
    }

    bool updateShouldNotify(UserProvider Widget) {
      return true;
    }
}