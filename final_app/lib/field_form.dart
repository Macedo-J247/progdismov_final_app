import 'package:flutter/material.dart';


// Widget reutilizável para um campo de formulário
class FieldForm extends StatelessWidget
{
	// Rótulo do campo.
	final String label;
	// Define se o campo esconde o texto (senha).
	final bool isPassword;
	// Controlador para ler/editar o texto do campo.
	final TextEditingController controller;

	// Construtor recebe label, senha válida e o controller.
	const FieldForm({
		required this.label,
		required this.isPassword,
		required this.controller,
		super.key,
	});

	@override
	Widget build(BuildContext context)
	{
		// Retorna um TextFormField estilizado
		return TextFormField(
			controller: controller,
			obscureText: isPassword,
			decoration: InputDecoration(
				filled: true,
				fillColor: Colors.white,
				labelText: label,
			),  // InputDecoration
		);  // TextFormField
	}
}
