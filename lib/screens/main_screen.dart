import 'package:flutter/material.dart';
import 'package:pulsoyoxigenacion/screens/home_screen.dart';
import 'package:pulsoyoxigenacion/screens/login_screen.dart';



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column  (
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Sensor de Oxigenacion ',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 40,
                  fontWeight:  FontWeight.bold,
                ),
                ),
                Text('By CODE-CRAFTERS',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(74, 68, 70, 207),
                  fontWeight: FontWeight.w700
                ),
                )
          ],
        ),
        Image.asset('assets/img/fast-heart.gif'), //imagen del corazón
        
        Column(
          children: [
            ElevatedButton(
              onPressed: () {
                  Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const LoginScreen()
                ),
                );
          },
          child: const Text('Iniciar sesión'),
            ),
          
               //boton para iniciar sesion
            //TextButton(onPressed: () {}, child: const Text('Registrate'))//boton para registrarse
          ],
          
        )
        ],
        ),
      )),
    );
  }
}