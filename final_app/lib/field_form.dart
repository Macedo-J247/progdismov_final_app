import 'package:flutter/material.dart';

// Widget reutilizável para um campo de formulário
class FieldForm extends StatelessWidget {
  // Rótulo do campo
  String label;
  // Define se o campo esconde o texto (senha)
  bool isPassword;
  // Controlador para ler/editar o texto do campo
  TextEditingController controller;

  // Construtor recebe label, se é senha e o controller
  FieldForm({
    required this.label,
    required this.isPassword,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Retorna um TextFormField estilizado
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: label,
      ),
    );
  }
}
