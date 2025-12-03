import 'package:final_app/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Provedor de usuários usando InheritedWidget para compartilhar estado
class UserProvider extends InheritedWidget {
  // Widget filho que recebe este provedor
  final Widget child;
  // Lista de usuários armazenada no provedor
  List<User> users = [];

  // Construtor que recebe o filho
  UserProvider({required this.child}) : super(child: child);

  // Método estático para recuperar o provedor a partir do BuildContext
  static UserProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserProvider>();
  }

  // Indica quando widgets dependentes devem ser reconstruídos
  bool updateShouldNotify(UserProvider widget) {
    return true;
  }
}
