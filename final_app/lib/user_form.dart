import 'package:final_app/field_form.dart';
import 'package:final_app/user_provider.dart';
import 'package:flutter/material.dart';

import 'user.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  // Controladores para os campos de texto
  TextEditingController controllerName = TextEditingController();
  TextEditingController controlleremail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void save() {
      // Obtém o UserProvider do contexto (gerenciador de estado)
      UserProvider userProvider = UserProvider.of(context) as UserProvider;
      //instancia da classe user um novo usuario
      User user = User(
        name: controllerName.text,
        email: controlleremail.text,
        password: controllerPassword.text,
      );
      //salva um novo usuario na lista
      userProvider.users.insert(0, user);
      // busca o usuario salvo
      print(userProvider.users[0].name);

      //navegar para lista de usuarios
    }

    return Scaffold(
      appBar: AppBar(title: Text('Create User')),
      body: Center(
        child: Column(
          children: [
            // Campo para nome
            FieldForm(
              label: 'Name',
              isPassword: false,
              controller: controllerName,
            ),
            // Campo para email
            FieldForm(
              label: 'email',
              isPassword: false,
              controller: controlleremail,
            ),
            // Campo para senha
            FieldForm(
              label: 'Password',
              isPassword: false,
              controller: controllerPassword,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                // Ao pressionar, salva os dados
                onPressed: save,
                child: Text('Salvar'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).primaryColor,
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
