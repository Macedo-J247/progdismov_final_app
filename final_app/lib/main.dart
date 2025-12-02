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

	@override
	Widget build(BuildContext context)
	{
		return UserProvider(
          child: const MaterialApp(
            home: Scaffold(
              body: Center(
                child: Text('Hello World!'),
              ),  // Center
            ),  // Scaffold
                routes: {},
          ),
        );  // MaterialApp
	}
}
