import 'package:final_app/user_form.dart';
import 'package:final_app/user_list.dart';
import 'package:final_app/user_provider.dart';
import 'package:flutter/material.dart';


void main()
{
	runApp(const MainApp());
}


class MainApp extends StatelessWidget
{
	const MainApp({
		super.key
	});

	// @override
	// Widget build(BuildContext context)
	// {
	// 	return UserProvider(
  //      		filho: MaterialApp(
  //         		home: UserForm(),
  //           	routes: {
  //           		"/create": (_) => UserForm(),
  //             		//lista de  usuarios
  //             		"/list": (_) => UserList(),
  //           	},
  //      		),  // MaterialApp
  //       );  // userProvider
	// }

  @override
  Widget build(BuildContext context)
  {
    return UserProvider(
      filho: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/create": (context) => const UserForm(),
          "/list": (context) => const UserList(),
        },
      ),
    );
  }
}
