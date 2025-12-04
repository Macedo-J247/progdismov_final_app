import 'package:final_app/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


// Provedor de usuários usando InheritedWidget para compartilhar estado
class UserProvider extends InheritedWidget
{
	// Widget filho que recebe este provedor
	final Widget filho;
	// Lista de usuários armazenada no provedor
	final List<User> users = [];
	final User? userSelected;
	final int? indexUser;

	// Construtor que recebe o filho
	UserProvider({
		required this.filho,
		this.userSelected,
		this.indexUser,
		super.key
	}) : super(child: filho);

	// Método estático para recuperar o provedor a partir do BuildContext
	static UserProvider? of(BuildContext context)
	{
		return context.dependOnInheritedWidgetOfExactType<UserProvider>();
	}

	// Indica quando widgets dependentes devem ser reconstruídos
	@override
	bool updateShouldNotify(UserProvider widget)
	{
		return true;
	}
}
