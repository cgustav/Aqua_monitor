import 'package:aqua_monitor/home.dart';
import 'package:flutter/material.dart';

class name extends StatelessWidget {
  const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// class LoginApp extends StatelessWidget {
//   const LoginApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginPage(),
//     );
//   }
// }

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  getTextfieldDecoration({required String labelText}) {
    return InputDecoration(
      hoverColor: const Color(0xFFFF7643),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Color(0xFFFF7643), width: 2),
      ),
      labelText: labelText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fondo blanco
      body: Center(
        child: SingleChildScrollView(
          // controller: controller,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // const FlutterLogo(
              //     size:
              //         100), // Logo de Flutter, puedes reemplazarlo con tu propio logo

              // Imagen de logo desde images/logo.png
              Image.asset(
                'assets/images/aqua_logo.png',
                width: 200,
              ),

              Center(
                child: Text(
                  'Aqua Monitor',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFF7643), // Color primario
                  ),
                ),
              ),

              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                    decoration: getTextfieldDecoration(
                        labelText: 'Correo electrónico')),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  decoration: getTextfieldDecoration(labelText: 'Contraseña'),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 50),
              // Botón de inicio de sesión
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF7643),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              // Botón de creación de cuenta
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40)
                    .add(const EdgeInsets.only(top: 20)),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[100],
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(color: const Color(0xFFFF7643)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
