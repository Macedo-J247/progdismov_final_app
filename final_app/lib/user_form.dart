import 'package:final_app/field_form.dart';
import 'package:final_app/user_provider.dart';
import 'package:flutter/material.dart';
import 'model/user.dart';


class UserForm extends StatefulWidget
{
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}


class _UserFormState extends State<UserForm>
{
  String title = "Criar Usuário";
  
  // Controladores para os campos de texto
  TextEditingController controllerName = TextEditingController();
  TextEditingController controlleremail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void save() {
      // Obtém o UserProvider do contexto (gerenciador de estado)
      UserProvider userProvider = UserProvider.of(context) as 
      UserProvider;

      int? index;

      if (userProvider.indexUser != null) {
        index = userProvider.indexUser;
        controllerName.text = userProvider.userSelected!.name;
        controlleremail.text = userProvider.userSelected!.email;
        controllerPassword.text = userProvider.userSelected!.password;

        setState(() {
          title = "Editar Usuário";
        });
      }
      
      //instancia da classe user um novo usuario
      User user = User(
        name: controllerName.text,
        email: controlleremail.text,
        password: controllerPassword.text,
      );
      if (index != null) {
        userProvider.users[index] = user;
      //editar

      } else {
      int usersLength = userProvider.users.length;
      //print('Quantidade de usuarios antes de salvar: $usersLength');

      //salva um novo usuario na lista
      userProvider.users.insert(usersLength, user);
      // busca o usuario salvo
      //print(userProvider.users[0].name);

    }
      //navegar para lista de usuarios
      Navigator.popAndPushNamed(context, '/list');
      }

    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        actions: [
          Container(
            child: TextButton(
              child: Text('Lista de Usuários',),
              onPressed: () {
                Navigator.popAndPushNamed(context, "/list");
              },
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              margin: EdgeInsets.all(8),

          )
        ],
        ),
      
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
