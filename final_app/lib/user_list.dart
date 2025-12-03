import 'package:final_app/user.dart';
import 'package:final_app/user_provider.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    // Recupera o UserProvider do contexto
    UserProvider userProvider = UserProvider.of(context) as UserProvider;

    // Obtém a lista de usuários
    List<User> users = userProvider.users;

    int usersLength = users.length;

    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
        leading: BackButton(
          // Botão para voltar para a tela de criação
          onPressed: () {
            userProvider.indexUser = null;
            Navigator.popAndPushNamed(context, '/create');
          },
        ),
      ),
      // Lista de usuários exibida dinamicamente
      body: ListView.builder(
        itemCount: usersLength,
        itemBuilder: (BuildContext contextBuilder, indexBuilder) => Container(
          child: ListTile(
            // Exibe o nome do usuário
            title: Text(users[indexBuilder].name),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Ícone de editar (sem funcionalidade)
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    userProvider.userSelected = users
                    [indexBuilder];
                    userProvider.indexUser = indexBuilder;
                    Navigator.popAndPushNamed(context, "/create");
                    // Ação de editar (a ser implementada)
                  },
                ),
              
              ],
            ),
          ),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
          ),
        ),
      ),
    );
  }
}
